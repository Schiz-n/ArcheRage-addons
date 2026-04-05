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

ADDON:ImportAPI(API_TYPE.OPTION.id)
ADDON:ImportAPI(API_TYPE.CHAT.id)
ADDON:ImportAPI(API_TYPE.ACHIEVEMENT.id)
ADDON:ImportAPI(API_TYPE.UNIT.id)
ADDON:ImportAPI(API_TYPE.LOCALE.id)

local shared = TargetDebuffTrackerShared
local AA_DEBUG = false

local function DebugPrint(message)
	if AA_DEBUG ~= true then
		return
	end

	local text = "[BuffTracker] " .. tostring(message)
	if aaprint ~= nil then
		aaprint(text)
	else
		X2Chat:DispatchChatMessage(CMF_SYSTEM, text)
	end
end

local function CreateLauncherButtonSafe(text, x, y)
	if CreateSimpleButton ~= nil then
		return CreateSimpleButton(text, x, y)
	end

	DebugPrint("CreateSimpleButton missing; using fallback button")
	local button = UIParent:CreateWidget("button", "targetDebuffTrackerFallbackButton", "UIParent", "")
	button:SetText(text)
	button:SetStyle("text_default")
	button:SetHeight(25)
	button:SetWidth(100)
	button:AddAnchor("BOTTOM", "UIParent", x, y)
	button:Show(true)
	return button
end

local function ApplyLocalButtonStyle(button)
	if button == nil then
		return
	end

	if button.SetStyle ~= nil then
		button:SetStyle("text_default")
	end

	if button.style ~= nil and button.style.SetAlign ~= nil then
		button.style:SetAlign(ALIGN_CENTER)
	end

	if button.SetInset ~= nil then
		button:SetInset(8, 0, 8, 0)
	end

	if SetButtonFontColor ~= nil then
		local black = { 0.08, 0.06, 0.03, 1 }
		local color = {
			normal = black,
			highlight = black,
			pushed = black,
			disabled = { 0.22, 0.18, 0.12, 1 },
		}
		SetButtonFontColor(button, color)
	end
end

local function ApplyLocalLabelStyle(widget, fontSize, align, red, green, blue)
	if widget == nil or widget.style == nil then
		return
	end

	if widget.style.SetFontSize ~= nil then
		widget.style:SetFontSize(fontSize)
	end

	if widget.style.SetOutline ~= nil then
		widget.style:SetOutline(true)
	end
	if widget.style.SetAlign ~= nil then
		widget.style:SetAlign(align or ALIGN_LEFT)
	end
	if widget.style.SetColor ~= nil then
		widget.style:SetColor(red or 1, green or 1, blue or 1, 1)
	end
end

local function SetRowIcon(iconWidget, iconPath)
	if iconWidget == nil then
		return
	end

	iconWidget:ClearAllTextures()
	if iconPath == nil or iconPath == "" then
		iconWidget:SetVisible(false)
		return
	end

	iconWidget:AddTexture(iconPath)
	iconWidget:SetVisible(true)
end

local buffAnchor = CreateEmptyWindow("targetDebuffTrackerWatchTargetAnchor", "UIParent")
buffAnchor:Show(true)
DebugPrint("tracktarget.lua loaded")

local drawableIcons = {}
local drawableDurations = {}
local drawableStacks = {}

local function hideUnused(currentIcons)
	for id, icon in pairs(drawableIcons) do
		if not currentIcons[id] and icon:IsVisible() then
			drawableDurations[id]:Show(false)
			drawableStacks[id]:Show(false)
			icon:SetVisible(false)
		end
	end
end

local function drawIcon(parent, iconId, iconPath, xOffset, yOffset, duration, stacks, iconSize)
	local stackText = tostring(stacks or "")
	if stackText == "1" then
		stackText = ""
	end

	if drawableIcons[iconId] ~= nil then
		if not drawableIcons[iconId]:IsVisible() then
			drawableIcons[iconId]:SetVisible(true)
			drawableDurations[iconId]:Show(true)
			drawableStacks[iconId]:Show(true)
		end
		drawableIcons[iconId]:AddAnchor("LEFT", parent, xOffset, yOffset)
		drawableIcons[iconId]:SetExtent(iconSize, iconSize)
		drawableDurations[iconId]:AddAnchor("LEFT", parent, xOffset, yOffset)
		drawableDurations[iconId]:SetText(duration)
		drawableStacks[iconId]:AddAnchor("LEFT", parent, xOffset + 5, yOffset - 10)
		drawableStacks[iconId]:SetText(stackText)
		return
	end

	local drawableIcon = parent:CreateIconDrawable("artwork")
	drawableIcon:SetExtent(iconSize, iconSize)
	drawableIcon:ClearAllTextures()
	drawableIcon:AddTexture(iconPath)
	drawableIcon:SetVisible(true)

	local lblDuration = parent:CreateChildWidget("label", "lblDuration", 0, true)
	lblDuration:Show(true)
	lblDuration:EnablePick(false)
	lblDuration.style:SetColor(1, 1, 1, 1)
	lblDuration.style:SetOutline(true)
	lblDuration.style:SetAlign(ALIGN_LEFT)
	lblDuration:SetText(duration)

	local lblStacks = parent:CreateChildWidget("label", "lblStacks", 0, true)
	lblStacks:Show(true)
	lblStacks:EnablePick(false)
	lblStacks.style:SetColor(0, 1, 1, 1)
	lblStacks.style:SetOutline(true)
	lblStacks.style:SetAlign(ALIGN_RIGHT)
	lblStacks:SetText(stackText)

	drawableIcons[iconId] = drawableIcon
	drawableDurations[iconId] = lblDuration
	drawableStacks[iconId] = lblStacks
end

function buffAnchor:OnUpdate()
	local screenX, screenY, screenZ = X2Unit:GetUnitScreenPosition("watchtarget")
	if screenX == nil or screenY == nil or screenZ == nil or screenZ <= 0 then
		buffAnchor:AddAnchor("TOPLEFT", "UIParent", 5000, 5000)
		hideUnused({})
		return
	end

	local x = math.floor(0.5 + screenX)
	local y = math.floor(0.5 + screenY)
	local settings = shared.GetIconSettings("target")
	local currentIcons = {}

	buffAnchor:Show(true)
	buffAnchor:Enable(true)
	buffAnchor:AddAnchor("TOPLEFT", "UIParent", x - 50, y - 40)

	if shared.GetUiState().target.buff then
		local buffCounter = 0
		local buffCount = X2Unit:UnitBuffCount("watchtarget")
		for i = 1, buffCount do
			local buff = X2Unit:UnitBuffTooltip("watchtarget", i)
			local buffExtra = X2Unit:UnitBuff("watchtarget", i)
			local buffId = tostring(buffExtra["buff_id"])
			if shared.ShouldDisplay("target", "buff", buffId) then
				local iconId = "watchbuff:" .. buffId .. ":" .. tostring(buff["name"])
				currentIcons[iconId] = true
				drawIcon(
					buffAnchor,
					iconId,
					buffExtra["path"],
					settings.buffsX + ((settings.iconSize + 5) * buffCounter),
					settings.buffsY,
					shared.FormatDuration(buff["timeLeft"] and math.floor(buff["timeLeft"] / 1000) or ""),
					buff["stack"],
					settings.iconSize
				)
				buffCounter = buffCounter + 1
			end
		end
	end

	if shared.GetUiState().target.debuff then
		local debuffCounter = 0
		local debuffCount = X2Unit:UnitDeBuffCount("watchtarget")
		for i = 1, debuffCount do
			local debuff = X2Unit:UnitDeBuffTooltip("watchtarget", i)
			local debuffExtra = X2Unit:UnitDeBuff("watchtarget", i)
			local debuffId = tostring(debuffExtra["buff_id"])
			if shared.ShouldDisplay("target", "debuff", debuffId) then
				local iconId = "watchdebuff:" .. debuffId .. ":" .. tostring(debuff["name"])
				currentIcons[iconId] = true
				drawIcon(
					buffAnchor,
					iconId,
					debuffExtra["path"],
					settings.debuffsX + ((settings.iconSize + 5) * debuffCounter),
					settings.debuffsY + 35,
					shared.FormatDuration(debuff["timeLeft"] and math.floor(debuff["timeLeft"] / 1000) or ""),
					debuff["stack"],
					settings.iconSize
				)
				debuffCounter = debuffCounter + 1
			end
		end
	end

	hideUnused(currentIcons)
end

buffAnchor:SetHandler("OnUpdate", buffAnchor.OnUpdate)

local function categoryTitle(scope, effectType)
	local scopeTitle = scope == "target" and "Target" or "Self"
	local effectTitle = "Buffs"
	if effectType == "debuff" then
		effectTitle = "Debuffs"
	elseif effectType == "hidden" then
		effectTitle = "Hidden Buffs"
	end

	return scopeTitle .. " " .. effectTitle
end

local function liveSectionTitle(scope, effectType)
	if scope == "target" then
		if effectType == "hidden" then
			return "Target's Hidden Buffs"
		elseif effectType == "debuff" then
			return "Target's Debuffs"
		end
		return "Target's Buffs"
	end

	if effectType == "hidden" then
		return "Self Hidden Buffs"
	elseif effectType == "debuff" then
		return "Self Debuffs"
	end
	return "Self Buffs"
end

local function getLiveEffects(scope, effectType)
	DebugPrint(string.format("getLiveEffects start scope=%s effectType=%s", tostring(scope), tostring(effectType)))
	local unit = scope == "target" and "target" or "player"
	local entries = {}
	local seen = {}

	if effectType == "buff" then
		local count = X2Unit:UnitBuffCount(unit) or 0
		DebugPrint(string.format("UnitBuffCount(%s)=%s", tostring(unit), tostring(count)))
		for i = 1, count do
			local effect = X2Unit:UnitBuffTooltip(unit, i)
			local extra = X2Unit:UnitBuff(unit, i)
			local effectId = extra and tostring(extra["buff_id"]) or nil
			if effect ~= nil and effectId ~= nil and not seen[effectId] then
				seen[effectId] = true
				table.insert(entries, {
					id = effectId,
					name = tostring(effect["name"] or ""),
					iconPath = extra["path"],
				})
			end
		end
	elseif effectType == "debuff" then
		local count = X2Unit:UnitDeBuffCount(unit) or 0
		DebugPrint(string.format("UnitDeBuffCount(%s)=%s", tostring(unit), tostring(count)))
		for i = 1, count do
			local effect = X2Unit:UnitDeBuffTooltip(unit, i)
			local extra = X2Unit:UnitDeBuff(unit, i)
			local effectId = extra and tostring(extra["buff_id"]) or nil
			if effect ~= nil and effectId ~= nil and not seen[effectId] then
				seen[effectId] = true
				table.insert(entries, {
					id = effectId,
					name = tostring(effect["name"] or ""),
					iconPath = extra["path"],
				})
			end
		end
	else
		local count = X2Unit:UnitHiddenBuffCount(unit) or 0
		DebugPrint(string.format("UnitHiddenBuffCount(%s)=%s", tostring(unit), tostring(count)))
		for i = 1, count do
			local effect = X2Unit:UnitHiddenBuffTooltip(unit, i)
			local extra = X2Unit:UnitHiddenBuff(unit, i)
			local effectId = extra and tostring(extra["buff_id"]) or nil
			if effect ~= nil and effectId ~= nil and not seen[effectId] then
				seen[effectId] = true
				table.insert(entries, {
					id = effectId,
					name = tostring(effect["name"] or ""),
					iconPath = extra["path"],
				})
			end
		end
	end

	table.sort(entries, function(left, right)
		local leftName = string.lower(left.name ~= "" and left.name or left.id)
		local rightName = string.lower(right.name ~= "" and right.name or right.id)
		if leftName == rightName then
			return tonumber(left.id) < tonumber(right.id)
		end
		return leftName < rightName
	end)

	DebugPrint(string.format("getLiveEffects done entries=%s", tostring(#entries)))
	return entries
end

local function formatEntry(entry)
	local name = entry.name ~= "" and entry.name or "Unknown"
	return string.format("%s [%s]", name, entry.id)
end

local function categoryButtonText(scope, effectType)
	local scopeTitle = scope == "target" and "Target" or "Self"
	if effectType == "buff" then
		return scopeTitle .. " Buffs"
	elseif effectType == "debuff" then
		return scopeTitle .. " Debuffs"
	end
	return scopeTitle .. " Hidden"
end

local function clampPage(page, rowCount, itemCount)
	local maxPage = math.max(1, math.ceil(math.max(itemCount, 1) / rowCount))
	if page < 1 then
		return 1, maxPage
	end
	if page > maxPage then
		return maxPage, maxPage
	end
	return page, maxPage
end

local managerButton = nil
local managerWindow = nil
local uiState = shared.GetUiState()
local trackedPage = 1
local availablePage = 1
local trackedRows = {}
local availableRows = {}
local categoryButtons = {}
local toggleButtons = {}
local headerLabel = nil
local trackedTitle = nil
local availableTitle = nil
local trackedPageLabel = nil
local availablePageLabel = nil
local trackedPrevButton = nil
local trackedNextButton = nil
local availablePrevButton = nil
local availableNextButton = nil

local initOk, initErr = pcall(function()
	DebugPrint("init: before CreateSimpleButton")
	managerButton = CreateLauncherButtonSafe("Buff Tracker", 700, -250)
	DebugPrint("init: after CreateSimpleButton")

	DebugPrint("init: before CreateWindow")
	managerWindow = CreateEmptyWindow("targetDebuffTrackerWindow", "UIParent")
	DebugPrint("init: after CreateEmptyWindow")

	managerWindow:AddAnchor("CENTER", "UIParent", 0, 0)
	DebugPrint("init: after window anchor")
	managerWindow:SetExtent(720, 580)
	DebugPrint("init: after window extent")
	managerWindow:Show(false)
	DebugPrint("init: after window hide")

	local background = managerWindow:CreateColorDrawable(0.08, 0.06, 0.04, 0.92, "background")
	background:AddAnchor("TOPLEFT", managerWindow, 0, 0)
	background:AddAnchor("BOTTOMRIGHT", managerWindow, 0, 0)
	DebugPrint("init: after background")

	local border = managerWindow:CreateColorDrawable(0.65, 0.55, 0.35, 0.9, "artwork")
	border:AddAnchor("TOPLEFT", managerWindow, 0, 0)
	border:SetExtent(720, 2)
	local borderBottom = managerWindow:CreateColorDrawable(0.65, 0.55, 0.35, 0.9, "artwork")
	borderBottom:AddAnchor("BOTTOMLEFT", managerWindow, 0, 0)
	borderBottom:SetExtent(720, 2)
	local borderLeft = managerWindow:CreateColorDrawable(0.65, 0.55, 0.35, 0.9, "artwork")
	borderLeft:AddAnchor("TOPLEFT", managerWindow, 0, 0)
	borderLeft:SetExtent(2, 580)
	local borderRight = managerWindow:CreateColorDrawable(0.65, 0.55, 0.35, 0.9, "artwork")
	borderRight:AddAnchor("TOPRIGHT", managerWindow, 0, 0)
	borderRight:SetExtent(2, 580)
	DebugPrint("init: after borders")

	local titleBar = managerWindow:CreateColorDrawable(0.16, 0.10, 0.05, 0.95, "artwork")
	titleBar:AddAnchor("TOPLEFT", managerWindow, 2, 2)
	titleBar:SetExtent(716, 42)
	DebugPrint("init: after titleBar")

	local titleLabel = managerWindow:CreateChildWidget("label", "windowTitle", 0, true)
	titleLabel:AddAnchor("TOPLEFT", managerWindow, 20, 12)
	titleLabel:SetExtent(300, 24)
	ApplyLocalLabelStyle(titleLabel, 20, ALIGN_LEFT, 1, 0.97, 0.92)
	titleLabel:SetText("Buff Tracker")
	DebugPrint("init: after titleLabel")

	local closeButton = managerWindow:CreateChildWidget("button", "closeButton", 0, true)
	closeButton:SetText("X")
	ApplyLocalButtonStyle(closeButton)
	closeButton:SetExtent(30, 24)
	closeButton:AddAnchor("TOPRIGHT", managerWindow, -14, 10)
	closeButton:SetHandler("OnClick", function()
		managerWindow:Show(false)
		DebugPrint("closeButton clicked")
	end)
	DebugPrint("init: after closeButton")

	managerWindow:EnableDrag(true)
	managerWindow:SetHandler("OnDragStart", function(self)
		self:StartMoving()
		return true
	end)
	managerWindow:SetHandler("OnDragStop", function(self)
		self:StopMovingOrSizing()
	end)
	DebugPrint("init: after drag handlers")

	headerLabel = managerWindow:CreateChildWidget("label", "headerLabel", 0, true)
	DebugPrint("init: after headerLabel")
	headerLabel:AddAnchor("TOPLEFT", managerWindow, 245, 54)
	headerLabel:SetExtent(390, 28)
	ApplyLocalLabelStyle(headerLabel, 20, ALIGN_LEFT, 1, 0.97, 0.92)

	trackedTitle = managerWindow:CreateChildWidget("label", "trackedTitle", 0, true)
	DebugPrint("init: after trackedTitle")
	trackedTitle:AddAnchor("TOPLEFT", managerWindow, 245, 90)
	trackedTitle:SetExtent(300, 22)
	ApplyLocalLabelStyle(trackedTitle, 16, ALIGN_LEFT, 0.96, 0.90, 0.78)

	availableTitle = managerWindow:CreateChildWidget("label", "availableTitle", 0, true)
	DebugPrint("init: after availableTitle")
	availableTitle:AddAnchor("TOPLEFT", managerWindow, 245, 304)
	availableTitle:SetExtent(300, 22)
	ApplyLocalLabelStyle(availableTitle, 16, ALIGN_LEFT, 0.96, 0.90, 0.78)

	trackedPageLabel = managerWindow:CreateChildWidget("label", "trackedPageLabel", 0, true)
	DebugPrint("init: after trackedPageLabel")
	trackedPageLabel:AddAnchor("TOPRIGHT", managerWindow, -72, 92)
	trackedPageLabel:SetExtent(60, 20)
	ApplyLocalLabelStyle(trackedPageLabel, 14, ALIGN_RIGHT, 1, 1, 1)

	availablePageLabel = managerWindow:CreateChildWidget("label", "availablePageLabel", 0, true)
	DebugPrint("init: after availablePageLabel")
	availablePageLabel:AddAnchor("TOPRIGHT", managerWindow, -72, 306)
	availablePageLabel:SetExtent(60, 20)
	ApplyLocalLabelStyle(availablePageLabel, 14, ALIGN_RIGHT, 1, 1, 1)

	trackedPrevButton = managerWindow:CreateChildWidget("button", "trackedPrevButton", 0, true)
	DebugPrint("init: after trackedPrevButton")
	trackedPrevButton:SetText("<")
	ApplyLocalButtonStyle(trackedPrevButton)
	trackedPrevButton:SetExtent(30, 24)
	trackedPrevButton:AddAnchor("TOPRIGHT", managerWindow, -150, 88)

	trackedNextButton = managerWindow:CreateChildWidget("button", "trackedNextButton", 0, true)
	DebugPrint("init: after trackedNextButton")
	trackedNextButton:SetText(">")
	ApplyLocalButtonStyle(trackedNextButton)
	trackedNextButton:SetExtent(30, 24)
	trackedNextButton:AddAnchor("TOPRIGHT", managerWindow, -18, 88)

	availablePrevButton = managerWindow:CreateChildWidget("button", "availablePrevButton", 0, true)
	DebugPrint("init: after availablePrevButton")
	availablePrevButton:SetText("<")
	ApplyLocalButtonStyle(availablePrevButton)
	availablePrevButton:SetExtent(30, 24)
	availablePrevButton:AddAnchor("TOPRIGHT", managerWindow, -150, 302)

	availableNextButton = managerWindow:CreateChildWidget("button", "availableNextButton", 0, true)
	DebugPrint("init: after availableNextButton")
	availableNextButton:SetText(">")
	ApplyLocalButtonStyle(availableNextButton)
	availableNextButton:SetExtent(30, 24)
	availableNextButton:AddAnchor("TOPRIGHT", managerWindow, -18, 302)
end)

if not initOk then
	DebugPrint("init failed: " .. tostring(initErr))
	return
end

DebugPrint("init: manager base widgets complete")

local function createCategoryRow(index, scope, effectType)
	local y = 88 + ((index - 1) * 42)
	local key = scope .. "_" .. effectType

	local selectButton = managerWindow:CreateChildWidget("button", "categoryButton", index, true)
	ApplyLocalButtonStyle(selectButton)
	selectButton:SetExtent(132, 30)
	selectButton:AddAnchor("TOPLEFT", managerWindow, 20, y)
	categoryButtons[key] = selectButton

	local toggleButton = managerWindow:CreateChildWidget("button", "toggleButton", index, true)
	ApplyLocalButtonStyle(toggleButton)
	toggleButton:SetExtent(58, 30)
	toggleButton:AddAnchor("TOPLEFT", managerWindow, 160, y)
	toggleButtons[key] = toggleButton

	selectButton:SetHandler("OnClick", function()
		uiState.activeScope = scope
		uiState.activeEffect = effectType
		trackedPage = 1
		availablePage = 1
		shared.SaveUiState()
	end)

	toggleButton:SetHandler("OnClick", function()
		uiState[scope][effectType] = not uiState[scope][effectType]
		shared.SaveUiState()
	end)
end

createCategoryRow(1, "target", "buff")
createCategoryRow(2, "target", "debuff")
createCategoryRow(3, "target", "hidden")
createCategoryRow(4, "self", "buff")
createCategoryRow(5, "self", "debuff")
createCategoryRow(6, "self", "hidden")

local filterButton = managerWindow:CreateChildWidget("button", "filterButton", 0, true)
ApplyLocalButtonStyle(filterButton)
filterButton:SetExtent(198, 32)
filterButton:AddAnchor("TOPLEFT", managerWindow, 20, 352)
filterButton:SetHandler("OnClick", function()
	uiState.filterTrackedOnly = not uiState.filterTrackedOnly
	shared.SaveUiState()
end)

for i = 1, 8 do
	local rowY = 122 + ((i - 1) * 22)
	local icon = managerWindow:CreateIconDrawable("artwork")
	icon:SetExtent(18, 18)
	icon:AddAnchor("TOPLEFT", managerWindow, 245, rowY)
	icon:SetVisible(false)

	local label = managerWindow:CreateChildWidget("label", "trackedRowLabel", i, true)
	label:AddAnchor("TOPLEFT", managerWindow, 269, rowY)
	label:SetExtent(350, 20)
	ApplyLocalLabelStyle(label, 14, ALIGN_LEFT, 1, 1, 1)

	local button = managerWindow:CreateChildWidget("button", "trackedRowButton", i, true)
	button:SetText("-")
	ApplyLocalButtonStyle(button)
	button:SetExtent(78, 22)
	button:AddAnchor("TOPRIGHT", managerWindow, -18, rowY - 2)

	trackedRows[i] = {
		icon = icon,
		label = label,
		button = button,
		entry = nil,
	}
end

for i = 1, 10 do
	local rowY = 336 + ((i - 1) * 22)
	local icon = managerWindow:CreateIconDrawable("artwork")
	icon:SetExtent(18, 18)
	icon:AddAnchor("TOPLEFT", managerWindow, 245, rowY)
	icon:SetVisible(false)

	local label = managerWindow:CreateChildWidget("label", "availableRowLabel", i, true)
	label:AddAnchor("TOPLEFT", managerWindow, 269, rowY)
	label:SetExtent(350, 20)
	ApplyLocalLabelStyle(label, 14, ALIGN_LEFT, 1, 1, 1)

	local button = managerWindow:CreateChildWidget("button", "availableRowButton", i, true)
	ApplyLocalButtonStyle(button)
	button:SetExtent(78, 22)
	button:AddAnchor("TOPRIGHT", managerWindow, -18, rowY - 2)

	availableRows[i] = {
		icon = icon,
		label = label,
		button = button,
		entry = nil,
	}
end

local function clearRow(row)
	row.entry = nil
	row.label:SetText("")
	SetRowIcon(row.icon, nil)
	row.button:Show(false)
end

local function refreshWindow()
	DebugPrint("refreshWindow start")
	uiState = shared.GetUiState()
	local scope = uiState.activeScope
	local effectType = uiState.activeEffect
	DebugPrint(string.format("refreshWindow state scope=%s effect=%s trackedOnly=%s", tostring(scope), tostring(effectType), tostring(uiState.filterTrackedOnly)))
	local trackedEntries = shared.GetSortedTrackedEntries(scope, effectType)
	local liveEntries = getLiveEffects(scope, effectType)
	DebugPrint(string.format("refreshWindow data tracked=%s live=%s", tostring(#trackedEntries), tostring(#liveEntries)))

	local liveById = {}
	for i = 1, #liveEntries do
		liveById[liveEntries[i].id] = liveEntries[i]
	end

	headerLabel:SetText(categoryTitle(scope, effectType))
	trackedTitle:SetText("Tracked " .. categoryTitle(scope, effectType))
	availableTitle:SetText(liveSectionTitle(scope, effectType))
	filterButton:SetText("Filter: Tracked Only [" .. (uiState.filterTrackedOnly and "ON" or "OFF") .. "]")

	for _, scopeName in ipairs({ "target", "self" }) do
		for _, effectName in ipairs({ "buff", "debuff", "hidden" }) do
			local key = scopeName .. "_" .. effectName
			local isActive = scope == scopeName and effectType == effectName
			categoryButtons[key]:SetText(categoryButtonText(scopeName, effectName))
			toggleButtons[key]:SetText(uiState[scopeName][effectName] and "ON" or "OFF")
			if isActive then
				categoryButtons[key]:SetText("> " .. categoryButtonText(scopeName, effectName))
			end
		end
	end

	local localTrackedMaxPage
	local localAvailableMaxPage
	trackedPage, localTrackedMaxPage = clampPage(trackedPage, #trackedRows, #trackedEntries)
	availablePage, localAvailableMaxPage = clampPage(availablePage, #availableRows, #liveEntries)
	trackedPageLabel:SetText(string.format("%d/%d", trackedPage, localTrackedMaxPage))
	availablePageLabel:SetText(string.format("%d/%d", availablePage, localAvailableMaxPage))

	local trackedStartIndex = ((trackedPage - 1) * #trackedRows) + 1
	for i = 1, #trackedRows do
		local row = trackedRows[i]
		local entry = trackedEntries[trackedStartIndex + i - 1]
		if entry == nil then
			clearRow(row)
		else
			local liveEntry = liveById[entry.id]
			row.entry = entry
			row.label:SetText(formatEntry(entry))
			SetRowIcon(row.icon, entry.iconPath ~= "" and entry.iconPath or (liveEntry and liveEntry.iconPath or nil))
			row.label.style:SetColor(0.55, 0.95, 0.55, 1)
			row.button:Show(true)
			row.button:SetText("Remove")
			row.button:SetHandler("OnClick", function()
				shared.RemoveTracked(scope, effectType, entry.id)
				refreshWindow()
			end)
		end
	end

	local liveStartIndex = ((availablePage - 1) * #availableRows) + 1
	for i = 1, #availableRows do
		local row = availableRows[i]
		local entry = liveEntries[liveStartIndex + i - 1]
		if entry == nil then
			clearRow(row)
		else
			local tracked = shared.IsTracked(scope, effectType, entry.id)
			row.entry = entry
			row.label:SetText(formatEntry(entry))
			SetRowIcon(row.icon, entry.iconPath)
			if tracked then
				row.label.style:SetColor(0.55, 0.95, 0.55, 1)
				row.button:SetText("Remove")
				row.button:SetHandler("OnClick", function()
					shared.RemoveTracked(scope, effectType, entry.id)
					refreshWindow()
				end)
			else
				row.label.style:SetColor(1, 1, 1, 1)
				row.button:SetText("Track")
				row.button:SetHandler("OnClick", function()
					shared.AddTracked(scope, effectType, entry.id, entry.name, entry.iconPath)
					refreshWindow()
				end)
			end
			row.button:Show(true)
		end
	end

	if #trackedEntries == 0 then
		trackedRows[1].label:SetText("No tracked entries yet.")
		trackedRows[1].label.style:SetColor(1, 1, 1, 1)
		SetRowIcon(trackedRows[1].icon, nil)
	end

	if #liveEntries == 0 then
		availableRows[1].label:SetText(scope == "target" and "No target effects available." or "No self effects available.")
		availableRows[1].label.style:SetColor(1, 1, 1, 1)
		SetRowIcon(availableRows[1].icon, nil)
	end

	DebugPrint("refreshWindow done")
end

trackedPrevButton:SetHandler("OnClick", function()
	trackedPage = trackedPage - 1
	DebugPrint(string.format("trackedPrevButton clicked trackedPage=%s", tostring(trackedPage)))
end)

trackedNextButton:SetHandler("OnClick", function()
	trackedPage = trackedPage + 1
	DebugPrint(string.format("trackedNextButton clicked trackedPage=%s", tostring(trackedPage)))
end)

availablePrevButton:SetHandler("OnClick", function()
	availablePage = availablePage - 1
	DebugPrint(string.format("availablePrevButton clicked availablePage=%s", tostring(availablePage)))
end)

availableNextButton:SetHandler("OnClick", function()
	availablePage = availablePage + 1
	DebugPrint(string.format("availableNextButton clicked availablePage=%s", tostring(availablePage)))
end)

function managerWindow:OnUpdate(dt)
	if not self:IsVisible() then
		return
	end

	self.elapsed = (self.elapsed or 0) + dt
	if self.elapsed < 0.25 then
		return
	end

	self.elapsed = 0
	DebugPrint("managerWindow OnUpdate refresh tick")
	refreshWindow()
end

managerWindow:SetHandler("OnUpdate", managerWindow.OnUpdate)
managerWindow.ShowProc = refreshWindow

managerButton:SetHandler("OnClick", function()
	DebugPrint(string.format("managerButton clicked visibleBefore=%s", tostring(managerWindow:IsVisible())))
	managerWindow:Show(not managerWindow:IsVisible())
	DebugPrint(string.format("managerButton toggled visibleAfter=%s", tostring(managerWindow:IsVisible())))
	if managerWindow:IsVisible() then
		refreshWindow()
	end
end)

DebugPrint("tracktarget.lua init complete")
