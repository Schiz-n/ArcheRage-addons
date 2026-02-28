-------------- Original Author: Strawberry --------------
----------------- Discord: exec_noir --------------------
if API_TYPE == nil then
	ADDON:ImportAPI(8)
	X2Chat:DispatchChatMessage(
		CMF_SYSTEM,
		"Globals folder not found. Please install it at https://github.com/Schiz-n/ArcheRage-addons/tree/master/globals"
	)
	return
end

ADDON:ImportObject(OBJECT_TYPE.TEXT_STYLE)
ADDON:ImportObject(OBJECT_TYPE.BUTTON)
ADDON:ImportObject(OBJECT_TYPE.DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.NINE_PART_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.COLOR_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.WINDOW)
ADDON:ImportObject(OBJECT_TYPE.LABEL)
ADDON:ImportObject(OBJECT_TYPE.ICON_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.IMAGE_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.STATUS_BAR)

ADDON:ImportAPI(API_TYPE.CHAT.id)
ADDON:ImportAPI(API_TYPE.UNIT.id)

-- ============================================================
-- Constants
-- ============================================================
local WINDOW_W        = 300
local ROW_H           = 24
local HEADER_H        = 30
local MAX_ROWS        = 10
local MAX_DETAIL_ROWS = 15
local PAD             = 4
local RESET_TIMEOUT   = 10    -- seconds of no damage before fight is over
local UPDATE_MS       = 500   -- ms between display refreshes

-- ============================================================
-- Fight state
-- ============================================================
local players     = {}    -- [name] = { damage = 0, abilities = { [abilityName] = damage }, unitType = "character"/"mate"/... }
local combatStart = nil
local lastHitTime = nil
local fightDone   = false
local fightElapsed = 0

-- Unit type cache: [tostring(unitId)] = "player"/"mate"/etc.
-- Not cleared between fights; unit IDs are stable for the session.
local unitCache = {}
local unitTypeByName = {} -- [sourceName] = "player"/"mate"/"npc"/"unknown"

local filterMode  = "All"   -- "All", "Players+", "Players"

local function resetFight()
	players      = {}
	combatStart  = nil
	lastHitTime  = nil
	fightDone    = false
	fightElapsed = 0
	unitTypeByName = {}
end

-- ============================================================
-- Main window
-- ============================================================
local TOTAL_H = HEADER_H + MAX_ROWS * ROW_H + PAD * 2

local mainFrame = CreateEmptyWindow("dpsMeterWindow", "UIParent")
mainFrame:SetExtent(WINDOW_W, TOTAL_H)
mainFrame:AddAnchor("TOPLEFT", "UIParent", 100, 200)
mainFrame:Show(true)
mainFrame:EnableDrag(true)

mainFrame:SetHandler("OnDragStart", function(self)
	self:StartMoving()
	return true
end)
mainFrame:SetHandler("OnDragStop", function(self)
	self:StopMovingOrSizing()
end)

local bg = mainFrame:CreateColorDrawable(0.05, 0.05, 0.05, 0.88, "background")
bg:AddAnchor("TOPLEFT", mainFrame, 0, 0)
bg:AddAnchor("BOTTOMRIGHT", mainFrame, 0, 0)

local headerBg = mainFrame:CreateColorDrawable(0.1, 0.15, 0.3, 0.95, "background")
headerBg:SetExtent(WINDOW_W, HEADER_H)
headerBg:AddAnchor("TOPLEFT", mainFrame, 0, 0)

local titleLabel = mainFrame:CreateChildWidget("label", "dpsMeterTitle", 0, true)
titleLabel:AddAnchor("TOPLEFT", mainFrame, 6, 8)
titleLabel:SetExtent(WINDOW_W - 145, HEADER_H - 8)
titleLabel:EnablePick(false)
titleLabel.style:SetColor(1, 1, 1, 1)
titleLabel.style:SetFontSize(13)
titleLabel.style:SetAlign(ALIGN_LEFT)
titleLabel:SetText("DPS Meter")
titleLabel:Show(true)

local resetBtn = mainFrame:CreateChildWidget("button", "dpsResetBtn", 1, true)
resetBtn:SetText("Reset")
resetBtn:SetStyle("text_default")
resetBtn:SetExtent(58, HEADER_H - 8)
resetBtn:AddAnchor("TOPRIGHT", mainFrame, -2, 4)
resetBtn:Show(true)
resetBtn:SetHandler("OnClick", function()
	resetFight()
end)

local filterBtn = mainFrame:CreateChildWidget("button", "dpsFilterBtn", 1, true)
filterBtn:SetText("All")
filterBtn:SetStyle("text_default")
filterBtn:SetExtent(70, HEADER_H - 8)
filterBtn:AddAnchor("TOPRIGHT", mainFrame, -64, 4)
filterBtn:Show(true)
filterBtn:SetHandler("OnClick", function()
	if filterMode == "All" then
		filterMode = "Players+"
	elseif filterMode == "Players+" then
		filterMode = "Players"
	else
		filterMode = "All"
	end
	filterBtn:SetText(filterMode)
end)

-- ============================================================
-- Main window rows (pre-created, shown/hidden per update)
-- ============================================================
local rows = {}
local showDetailWindow  -- forward declaration; assigned after detail window is built

for i = 1, MAX_ROWS do
	local yOff = HEADER_H + PAD + (i - 1) * ROW_H

	local rowBg = mainFrame:CreateColorDrawable(0.12, 0.12, 0.12, 0.75, "background")
	rowBg:SetExtent(WINDOW_W - PAD * 2, ROW_H - 3)
	rowBg:AddAnchor("TOPLEFT", mainFrame, PAD, yOff)

	local bar = UIParent:CreateWidget("statusbar", "dpsMeterBar" .. i, mainFrame)
	bar:AddAnchor("TOPLEFT", mainFrame, PAD, yOff)
	bar:SetExtent(WINDOW_W - PAD * 2, ROW_H - 3)
	bar:SetBarTexture("ui/common/hud.dds", "background")
	bar:SetBarTextureByKey("casting_status_bar")
	bar:SetBarColor(0.2, 0.5, 0.9, 0.85)
	bar:SetOrientation("HORIZONTAL")
	bar:SetMinMaxValues(0, 100)
	bar:SetValue(0)
	bar:Show(false)

	local lbl = mainFrame:CreateChildWidget("label", "dpsMeterLbl" .. i, 0, true)
	lbl:AddAnchor("TOPLEFT", bar, 5, 4)
	lbl:SetExtent(WINDOW_W - PAD * 2 - 10, ROW_H - 4)
	lbl:EnablePick(true)
	lbl:Raise()
	lbl.style:SetColor(1, 1, 1, 1)
	lbl.style:SetFontSize(11)
	lbl.style:SetOutline(true)
	lbl.style:SetAlign(ALIGN_LEFT)
	lbl:SetText("")
	lbl:Show(false)

	local rowIdx = i
	lbl:SetHandler("OnClick", function()
		if rows[rowIdx].currentPlayer and showDetailWindow then
			showDetailWindow(rows[rowIdx].currentPlayer)
		end
	end)

	rows[i] = { bar = bar, label = lbl, rowBg = rowBg, currentPlayer = nil }
end

-- ============================================================
-- Resize handle (bottom-right corner)
-- ============================================================
local resizeHandle = mainFrame:CreateChildWidget("button", "dpsResizeHandle", 0, true)
resizeHandle:SetExtent(14, 14)
resizeHandle:AddAnchor("BOTTOMRIGHT", mainFrame, -2, -2)
resizeHandle:EnableDrag(true)
resizeHandle:Show(true)

local resizeIcon = resizeHandle:CreateColorDrawable(0.55, 0.55, 0.55, 0.85, "background")
resizeIcon:AddAnchor("TOPLEFT", resizeHandle, 0, 0)
resizeIcon:AddAnchor("BOTTOMRIGHT", resizeHandle, 0, 0)

resizeHandle:SetHandler("OnDragStart", function(self)
	mainFrame:StartSizing("BOTTOMRIGHT")
	return true
end)
resizeHandle:SetHandler("OnDragStop", function(self)
	mainFrame:StopMovingOrSizing()
end)

-- ============================================================
-- Detail window (ability breakdown per player)
-- ============================================================
local DETAIL_W     = 320
local DETAIL_H     = HEADER_H + MAX_DETAIL_ROWS * ROW_H + PAD * 2
local detailPlayer = nil

local detailFrame = CreateEmptyWindow("dpsMeterDetailWindow", "UIParent")
detailFrame:SetExtent(DETAIL_W, DETAIL_H)
detailFrame:AddAnchor("TOPLEFT", mainFrame, WINDOW_W + 8, 0)
detailFrame:Show(false)
detailFrame:EnableDrag(true)

detailFrame:SetHandler("OnDragStart", function(self)
	self:StartMoving()
	return true
end)
detailFrame:SetHandler("OnDragStop", function(self)
	self:StopMovingOrSizing()
end)

local detailBg = detailFrame:CreateColorDrawable(0.05, 0.05, 0.05, 0.88, "background")
detailBg:AddAnchor("TOPLEFT", detailFrame, 0, 0)
detailBg:AddAnchor("BOTTOMRIGHT", detailFrame, 0, 0)

local detailHeaderBg = detailFrame:CreateColorDrawable(0.2, 0.1, 0.3, 0.95, "background")
detailHeaderBg:SetExtent(DETAIL_W, HEADER_H)
detailHeaderBg:AddAnchor("TOPLEFT", detailFrame, 0, 0)

local detailTitle = detailFrame:CreateChildWidget("label", "dpsMeterDetailTitle", 0, true)
detailTitle:AddAnchor("TOPLEFT", detailFrame, 6, 8)
detailTitle:SetExtent(DETAIL_W - 70, HEADER_H - 8)
detailTitle:EnablePick(false)
detailTitle.style:SetColor(1, 1, 1, 1)
detailTitle.style:SetFontSize(13)
detailTitle.style:SetAlign(ALIGN_LEFT)
detailTitle:SetText("Breakdown")
detailTitle:Show(true)

local closeBtn = detailFrame:CreateChildWidget("button", "dpsMeterCloseBtn", 1, true)
closeBtn:SetText("Close")
closeBtn:SetStyle("text_default")
closeBtn:SetExtent(58, HEADER_H - 8)
closeBtn:AddAnchor("TOPRIGHT", detailFrame, -2, 4)
closeBtn:Show(true)
closeBtn:SetHandler("OnClick", function()
	detailFrame:Show(false)
	detailPlayer = nil
end)

local detailRows = {}
for i = 1, MAX_DETAIL_ROWS do
	local yOff = HEADER_H + PAD + (i - 1) * ROW_H

	local rowBg = detailFrame:CreateColorDrawable(0.12, 0.12, 0.12, 0.75, "background")
	rowBg:SetExtent(DETAIL_W - PAD * 2, ROW_H - 3)
	rowBg:AddAnchor("TOPLEFT", detailFrame, PAD, yOff)

	local bar = UIParent:CreateWidget("statusbar", "dpsMeterDetailBar" .. i, detailFrame)
	bar:AddAnchor("TOPLEFT", detailFrame, PAD, yOff)
	bar:SetExtent(DETAIL_W - PAD * 2, ROW_H - 3)
	bar:SetBarTexture("ui/common/hud.dds", "background")
	bar:SetBarTextureByKey("casting_status_bar")
	bar:SetBarColor(0.5, 0.2, 0.8, 0.85)
	bar:SetOrientation("HORIZONTAL")
	bar:SetMinMaxValues(0, 100)
	bar:SetValue(0)
	bar:Show(false)

	local lbl = detailFrame:CreateChildWidget("label", "dpsMeterDetailLbl" .. i, 0, true)
	lbl:AddAnchor("TOPLEFT", bar, 5, 4)
	lbl:SetExtent(DETAIL_W - PAD * 2 - 10, ROW_H - 4)
	lbl:EnablePick(false)
	lbl:Raise()
	lbl.style:SetColor(1, 1, 1, 1)
	lbl.style:SetFontSize(11)
	lbl.style:SetOutline(true)
	lbl.style:SetAlign(ALIGN_LEFT)
	lbl:SetText("")
	lbl:Show(false)

	detailRows[i] = { bar = bar, label = lbl, rowBg = rowBg }
end

-- Detail window resize handle
local detailResizeHandle = detailFrame:CreateChildWidget("button", "dpsDetailResizeHandle", 0, true)
detailResizeHandle:SetExtent(14, 14)
detailResizeHandle:AddAnchor("BOTTOMRIGHT", detailFrame, -2, -2)
detailResizeHandle:EnableDrag(true)
detailResizeHandle:Show(true)

local detailResizeIcon = detailResizeHandle:CreateColorDrawable(0.55, 0.55, 0.55, 0.85, "background")
detailResizeIcon:AddAnchor("TOPLEFT", detailResizeHandle, 0, 0)
detailResizeIcon:AddAnchor("BOTTOMRIGHT", detailResizeHandle, 0, 0)

detailResizeHandle:SetHandler("OnDragStart", function(self)
	detailFrame:StartSizing("BOTTOMRIGHT")
	return true
end)
detailResizeHandle:SetHandler("OnDragStop", function(self)
	detailFrame:StopMovingOrSizing()
end)

-- ============================================================
-- Display helpers
-- ============================================================
local function formatNum(n)
	if n >= 1000000 then
		return string.format("%.1fM", n / 1000000)
	elseif n >= 1000 then
		return string.format("%.1fk", n / 1000)
	end
	return string.format("%d", math.floor(n))
end

local function updateDetailDisplay()
	if not detailPlayer or not players[detailPlayer] then
		return
	end

	-- Sync widths to current detail window size
	local dWinW = detailFrame:GetWidth()
	local dBarW = dWinW - PAD * 2
	detailHeaderBg:SetExtent(dWinW, HEADER_H)
	detailTitle:SetExtent(dWinW - 70, HEADER_H - 8)
	for i = 1, MAX_DETAIL_ROWS do
		detailRows[i].rowBg:SetExtent(dBarW, ROW_H - 3)
		detailRows[i].bar:SetExtent(dBarW, ROW_H - 3)
		detailRows[i].label:SetExtent(dBarW - 10, ROW_H - 4)
	end

	local data = players[detailPlayer]
	detailTitle:SetText("Breakdown: " .. detailPlayer)

	local sorted = {}
	for abilityName, dmg in pairs(data.abilities) do
		table.insert(sorted, { name = abilityName, damage = dmg })
	end
	table.sort(sorted, function(a, b) return a.damage > b.damage end)

	-- How many rows fit in the current detail window height
	local dWinH      = detailFrame:GetHeight()
	local dAvailH    = dWinH - HEADER_H - PAD * 2
	local dMaxVisible = math.max(0, math.floor(dAvailH / ROW_H))

	local numShow = math.min(#sorted, MAX_DETAIL_ROWS, dMaxVisible)
	for i = 1, MAX_DETAIL_ROWS do
		if i <= numShow then
			local entry = sorted[i]
			local pct   = (data.damage > 0) and (entry.damage / data.damage * 100) or 0
			detailRows[i].bar:SetValue(pct)
			detailRows[i].bar:Show(true)
			detailRows[i].rowBg:SetVisible(true)
			detailRows[i].label:SetText(string.format(
				"%s  %s  %.0f%%", entry.name, formatNum(entry.damage), pct
			))
			detailRows[i].label:Show(true)
		else
			detailRows[i].bar:Show(false)
			detailRows[i].rowBg:SetVisible(false)
			detailRows[i].label:Show(false)
		end
	end
end

showDetailWindow = function(playerName)
	detailPlayer = playerName
	detailFrame:Show(true)
	updateDetailDisplay()
end

local function updateDisplay()
	local now = os.clock()
	local elapsed

	if fightDone then
		elapsed = fightElapsed
	elseif combatStart ~= nil then
		elapsed = now - combatStart
	else
		elapsed = 0
	end

	-- Sync widths to current window size
	local winW = mainFrame:GetWidth()
	local barW = winW - PAD * 2
	headerBg:SetExtent(winW, HEADER_H)
	titleLabel:SetExtent(winW - 145, HEADER_H - 8)
	for i = 1, MAX_ROWS do
		rows[i].rowBg:SetExtent(barW, ROW_H - 3)
		rows[i].bar:SetExtent(barW, ROW_H - 3)
		rows[i].label:SetExtent(barW - 10, ROW_H - 4)
	end

	-- How many rows fit in the current window height
	local winH       = mainFrame:GetHeight()
	local availH     = winH - HEADER_H - PAD * 2
	local maxVisible = math.max(0, math.floor(availH / ROW_H))

	-- Build sorted player list (filtered by filterMode)
	local sorted      = {}
	local totalDamage = 0

	for name, data in pairs(players) do
		local t = unitTypeByName[name] or data.unitType or "unknown"
		local include = (filterMode == "All")
			or (filterMode == "Players+" and (t == "player" or t == "mate"))
			or (filterMode == "Players"  and t == "player")
		if include then
			local dps = data.damage / math.max(1, elapsed)
			table.insert(sorted, { name = name, dps = dps, damage = data.damage })
			totalDamage = totalDamage + data.damage
		end
	end

	table.sort(sorted, function(a, b) return a.dps > b.dps end)

	local maxDps = (#sorted > 0) and sorted[1].dps or 0

	-- Title
	if elapsed > 0 then
		local suffix = fightDone and " [done]" or ""
		titleLabel:SetText(string.format("DPS Meter  %.0fs%s", elapsed, suffix))
	else
		titleLabel:SetText("DPS Meter")
	end

	-- Rows
	local numShow = math.min(#sorted, MAX_ROWS, maxVisible)

	for i = 1, MAX_ROWS do
		if i <= numShow then
			local entry  = sorted[i]
			local pct    = (maxDps > 0) and (entry.dps / maxDps * 100) or 0
			local dmgPct = (totalDamage > 0) and (entry.damage / totalDamage * 100) or 0

			if i == 1 then
				rows[i].bar:SetBarColor(1.0, 0.75, 0.0, 0.9)
			else
				rows[i].bar:SetBarColor(0.2, 0.5, 0.9, 0.85)
			end

			rows[i].bar:SetValue(pct)
			rows[i].bar:Show(true)
			rows[i].rowBg:SetVisible(true)
			rows[i].currentPlayer = entry.name

			rows[i].label:SetText(string.format(
				"%s  %s dps  %.0f%%", entry.name, formatNum(entry.dps), dmgPct
			))
			rows[i].label:Show(true)
		else
			rows[i].bar:Show(false)
			rows[i].rowBg:SetVisible(false)
			rows[i].label:Show(false)
			rows[i].currentPlayer = nil
		end
	end

	-- Keep detail window current
	if detailFrame:IsVisible() then
		updateDetailDisplay()
	end
end

-- ============================================================
-- Combat event
-- ============================================================
local function onCombatMsg(unitId, eventType, sourceName, targetName, abilityId, abilityName, damageType, effectType, isActive, more)
	
	if sourceName == nil or sourceName == "" then
		return
	end

	-- Resolve unit category from cache; only call the API once per unique unitId.
	-- Category: "player" (self or other character), "mate" (pet), "npc", "unknown"
	local unitIdStr = tostring(unitId)
	if not unitCache[unitIdStr] then
		local info = X2Unit:GetUnitInfoById(unitIdStr)
		if sourceName == X2Unit:UnitName("player") then
			unitCache[unitIdStr] = "player" -- self is buggy check manually
		elseif not info then
			--unitCache[unitIdStr] = "player"   -- sometimes nil, skip
		elseif info["type"] == "mate" then
			unitCache[unitIdStr] = "mate"
		elseif info["type"] == "npc" then
			unitCache[unitIdStr] = "npc"
		elseif info["type"] == "character" then
			unitCache[unitIdStr] = "player"
		else
			unitCache[unitIdStr] = "unknown"
		end
	end
	local unitType = unitCache[unitIdStr]
	local unitIdName = sourceName
	if unitIdName and unitIdName ~= "" then
		unitTypeByName[unitIdName] = unitType
	end
	if not unitTypeByName[sourceName] then
		-- Fallback when unitId->name resolution is unavailable.
		unitTypeByName[sourceName] = unitType
	end
    --aaprint(sourceName .. " is " .. unitType)
	--if unitCache[unitIdStr] then
	--	aaprint("This unit is cached as " .. unitCache[unitIdStr])
	--end
	local damage = 0
	local abilityKey

	if string.find(eventType, "SPELL_DAMAGE") then
		damage     = math.abs(tonumber(effectType) or 0)
		abilityKey = (abilityName and abilityName ~= "") and abilityName or ("Spell_" .. tostring(abilityId))
	elseif string.find(eventType, "MELEE_DAMAGE") then
		damage     = math.abs(tonumber(abilityId) or 0)
		abilityKey = (abilityName and abilityName ~= "") and abilityName or "Melee Attack"
	end

	if damage < 1 then return end

	local now = os.clock()

	if fightDone or combatStart == nil then
		resetFight()
		combatStart = now
	end

	lastHitTime = now

	if players[sourceName] == nil then
		players[sourceName] = { damage = 0, abilities = {}, unitType = unitType }
	end
	players[sourceName].unitType = unitTypeByName[sourceName] or players[sourceName].unitType
	players[sourceName].damage = players[sourceName].damage + damage
	players[sourceName].abilities[abilityKey] = (players[sourceName].abilities[abilityKey] or 0) + damage
end

UIParent:SetEventHandler(UIEVENT_TYPE.COMBAT_MSG, onCombatMsg)

-- ============================================================
-- Update loop
-- ============================================================
local updateTimer = 0

function mainFrame:OnUpdate(dt)
	-- Detect end of fight
	if lastHitTime ~= nil and not fightDone then
		if (os.clock() - lastHitTime) >= RESET_TIMEOUT then
			fightDone    = true
			fightElapsed = lastHitTime - combatStart
		end
	end

	-- Refresh display
	updateTimer = updateTimer + dt
	if updateTimer >= UPDATE_MS then
		updateTimer = 0
		updateDisplay()
	end
end

mainFrame:SetHandler("OnUpdate", mainFrame.OnUpdate)

X2Chat:DispatchChatMessage(CMF_SYSTEM, "DPS Meter loaded.")
