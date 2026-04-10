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
ADDON:ImportObject(OBJECT_TYPE.EDITBOX)
ADDON:ImportObject(OBJECT_TYPE.X2_EDITBOX)

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

local function CreateLocalEditBox(parent, id, width)
	local edit = parent:CreateChildWidgetByType(UOT_X2_EDITBOX, id, 0, true)
	edit:SetHeight(26)
	edit:SetWidth(width)
	edit:SetInset(5, 5, 5, 5)
	edit:EnableFocus(true)
	edit:UseSelectAllWhenFocused(true)
	edit.style:SetAlign(ALIGN_LEFT)
	edit.style:SetColorByKey("title")

	local bg = edit:CreateDrawable("ui/common/default.dds", "editbox_df", "background")
	bg:AddAnchor("TOPLEFT", edit, 0, 0)
	bg:AddAnchor("BOTTOMRIGHT", edit, 0, 0)
	edit.bg = bg

	return edit
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

local function GetPreviewIconPath(effectType)
	if effectType == "debuff" then
		return "Game/ui/icon/icon_item_0060.dds"
	elseif effectType == "hidden" then
		return "Game/ui/icon/icon_skill_buff381.dds"
	end
	return "Game/ui/icon/icon_skill_buff26.dds"
end

local function GetPreviewLayout(effectType)
	if effectType == "hidden" then
		return {
			originX = 98,
			originY = 54,
			nameplateX = -78,
			nameplateY = 10,
			nameplateWidth = 80,
			nameplateHeight = 30,
		}
	end

	return {
		originX = 34,
		originY = 30,
		nameplateX = 14,
		nameplateY = 10,
		nameplateWidth = 80,
		nameplateHeight = 30,
	}
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
	local currentIcons = {}

	buffAnchor:Show(true)
	buffAnchor:Enable(true)
	buffAnchor:AddAnchor("TOPLEFT", "UIParent", x - 50, y - 40)

	if shared.GetUiState().target.buff then
		local settings = shared.GetIconSettings("target", "buff")
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
					settings.x + ((settings.iconSize + 5) * buffCounter),
					settings.y,
					shared.FormatDuration(buff["timeLeft"] and math.floor(buff["timeLeft"] / 1000) or ""),
					buff["stack"],
					settings.iconSize
				)
				buffCounter = buffCounter + 1
			end
		end
	end

	if shared.GetUiState().target.debuff then
		local settings = shared.GetIconSettings("target", "debuff")
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
					settings.x + ((settings.iconSize + 5) * debuffCounter),
					settings.y,
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
local positionButton = nil
local positionWindow
local positionModeScope = "target"
local positionModeEffect = "buff"
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
local showGearButton = nil
local showClassButton = nil
local showDistanceButton = nil
local showCastbarButton = nil
local showGearSettingsButton = nil
local showClassSettingsButton = nil
local showDistanceSettingsButton = nil
local showCastbarSettingsButton = nil
local positionModeButtons = {}
local infoSettingsWindow = nil
local infoSettingsTitle = nil
local infoSettingsStatus = nil
local infoSettingsMessage = nil
local distanceSettingsPreview = nil
local gearSettingsPreview = nil
local classSettingsPreviewIcon = nil
local classSettingsPreviewLabel = nil
local castbarSettingsPreview = nil
local castbarSettingsPreviewFill = nil
local castbarSettingsPreviewSpell = nil
local castbarSettingsPreviewTime = nil
local castbarWidthEdit = nil
local castbarHeightEdit = nil
local infoSettingsMode = "distance"
local positionStatusLabel
local positionPreviewOrigin
local positionPreviewBox
local positionPreviewName
local positionPreviewIcons = {}

local initOk, initErr = pcall(function()
	DebugPrint("init: before CreateSimpleButton")
	managerButton = CreateLauncherButtonSafe("Ext Plates", 700, -250)
	DebugPrint("init: after CreateSimpleButton")

	DebugPrint("init: before CreateWindow")
	managerWindow = CreateEmptyWindow("targetDebuffTrackerWindow", "UIParent")
	DebugPrint("init: after CreateEmptyWindow")

	managerWindow:AddAnchor("CENTER", "UIParent", 0, 0)
	DebugPrint("init: after window anchor")
	managerWindow:SetExtent(720, 640)
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
	borderLeft:SetExtent(2, 640)
	local borderRight = managerWindow:CreateColorDrawable(0.65, 0.55, 0.35, 0.9, "artwork")
	borderRight:AddAnchor("TOPRIGHT", managerWindow, 0, 0)
	borderRight:SetExtent(2, 640)
	DebugPrint("init: after borders")

	local titleBar = managerWindow:CreateColorDrawable(0.16, 0.10, 0.05, 0.95, "artwork")
	titleBar:AddAnchor("TOPLEFT", managerWindow, 2, 2)
	titleBar:SetExtent(716, 42)
	DebugPrint("init: after titleBar")

	local titleLabel = managerWindow:CreateChildWidget("label", "windowTitle", 0, true)
	titleLabel:AddAnchor("TOPLEFT", managerWindow, 20, 12)
	titleLabel:SetExtent(300, 24)
	ApplyLocalLabelStyle(titleLabel, 20, ALIGN_LEFT, 1, 0.97, 0.92)
	titleLabel:SetText("Extended Plates")
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

	positionButton = managerWindow:CreateChildWidget("button", "positionButton", 0, true)
	ApplyLocalButtonStyle(positionButton)
	positionButton:SetExtent(198, 32)
	positionButton:AddAnchor("TOPLEFT", managerWindow, 20, 352)
	positionButton:SetText("Position")
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
filterButton:AddAnchor("TOPLEFT", managerWindow, 20, 394)
filterButton:SetHandler("OnClick", function()
	uiState.filterTrackedOnly = not uiState.filterTrackedOnly
	shared.SaveUiState()
end)

showGearButton = managerWindow:CreateChildWidget("button", "showGearButton", 0, true)
ApplyLocalButtonStyle(showGearButton)
showGearButton:SetExtent(132, 32)
showGearButton:AddAnchor("TOPLEFT", managerWindow, 20, 436)
showGearButton:SetHandler("OnClick", function()
	uiState.showGear = not uiState.showGear
	shared.SaveUiState()
end)

showGearSettingsButton = managerWindow:CreateChildWidget("button", "showGearSettingsButton", 0, true)
ApplyLocalButtonStyle(showGearSettingsButton)
showGearSettingsButton:SetExtent(58, 32)
showGearSettingsButton:AddAnchor("TOPLEFT", managerWindow, 160, 436)
showGearSettingsButton:SetText("...")
showGearSettingsButton:SetHandler("OnClick", function()
	infoSettingsMode = "gear"
	if infoSettingsWindow ~= nil then
		infoSettingsWindow:Show(true)
	end
end)

showClassButton = managerWindow:CreateChildWidget("button", "showClassButton", 0, true)
ApplyLocalButtonStyle(showClassButton)
showClassButton:SetExtent(132, 32)
showClassButton:AddAnchor("TOPLEFT", managerWindow, 20, 478)
showClassButton:SetHandler("OnClick", function()
	uiState.showClass = not uiState.showClass
	shared.SaveUiState()
end)

showClassSettingsButton = managerWindow:CreateChildWidget("button", "showClassSettingsButton", 0, true)
ApplyLocalButtonStyle(showClassSettingsButton)
showClassSettingsButton:SetExtent(58, 32)
showClassSettingsButton:AddAnchor("TOPLEFT", managerWindow, 160, 478)
showClassSettingsButton:SetText("...")
showClassSettingsButton:SetHandler("OnClick", function()
	infoSettingsMode = "class"
	if infoSettingsWindow ~= nil then
		infoSettingsWindow:Show(true)
	end
end)

showDistanceButton = managerWindow:CreateChildWidget("button", "showDistanceButton", 0, true)
ApplyLocalButtonStyle(showDistanceButton)
showDistanceButton:SetExtent(132, 32)
showDistanceButton:AddAnchor("TOPLEFT", managerWindow, 20, 520)
showDistanceButton:SetHandler("OnClick", function()
	uiState.showDistance = not uiState.showDistance
	shared.SaveUiState()
end)

showDistanceSettingsButton = managerWindow:CreateChildWidget("button", "showDistanceSettingsButton", 0, true)
ApplyLocalButtonStyle(showDistanceSettingsButton)
showDistanceSettingsButton:SetExtent(58, 32)
showDistanceSettingsButton:AddAnchor("TOPLEFT", managerWindow, 160, 520)
showDistanceSettingsButton:SetText("...")
showDistanceSettingsButton:SetHandler("OnClick", function()
	infoSettingsMode = "distance"
	if infoSettingsWindow ~= nil then
		infoSettingsWindow:Show(true)
	end
end)

showCastbarButton = managerWindow:CreateChildWidget("button", "showCastbarButton", 0, true)
ApplyLocalButtonStyle(showCastbarButton)
showCastbarButton:SetExtent(132, 32)
showCastbarButton:AddAnchor("TOPLEFT", managerWindow, 20, 562)
showCastbarButton:SetHandler("OnClick", function()
	uiState.showCastbar = not uiState.showCastbar
	shared.SaveUiState()
end)

showCastbarSettingsButton = managerWindow:CreateChildWidget("button", "showCastbarSettingsButton", 0, true)
ApplyLocalButtonStyle(showCastbarSettingsButton)
showCastbarSettingsButton:SetExtent(58, 32)
showCastbarSettingsButton:AddAnchor("TOPLEFT", managerWindow, 160, 562)
showCastbarSettingsButton:SetText("...")
showCastbarSettingsButton:SetHandler("OnClick", function()
	infoSettingsMode = "castbar"
	local settings = shared.GetCastbarSettings()
	castbarWidthEdit:SetText(tostring(settings.width))
	castbarHeightEdit:SetText(tostring(settings.height))
	if infoSettingsWindow ~= nil then
		infoSettingsWindow:Show(true)
	end
end)

positionWindow = CreateEmptyWindow("targetDebuffTrackerPositionWindow", "UIParent")
positionWindow:AddAnchor("CENTER", "UIParent", 300, 0)
positionWindow:SetExtent(260, 430)
positionWindow:Show(false)

infoSettingsWindow = CreateEmptyWindow("extendedPlatesInfoSettingsWindow", "UIParent")
infoSettingsWindow:AddAnchor("CENTER", "UIParent", 300, 0)
infoSettingsWindow:SetExtent(320, 470)
infoSettingsWindow:Show(false)

do
	local bg = infoSettingsWindow:CreateColorDrawable(0.08, 0.06, 0.04, 0.96, "background")
	bg:AddAnchor("TOPLEFT", infoSettingsWindow, 0, 0)
	bg:AddAnchor("BOTTOMRIGHT", infoSettingsWindow, 0, 0)

	local top = infoSettingsWindow:CreateColorDrawable(0.65, 0.55, 0.35, 0.9, "artwork")
	top:AddAnchor("TOPLEFT", infoSettingsWindow, 0, 0)
	top:SetExtent(320, 2)
	local bottom = infoSettingsWindow:CreateColorDrawable(0.65, 0.55, 0.35, 0.9, "artwork")
	bottom:AddAnchor("BOTTOMLEFT", infoSettingsWindow, 0, 0)
	bottom:SetExtent(320, 2)
	local left = infoSettingsWindow:CreateColorDrawable(0.65, 0.55, 0.35, 0.9, "artwork")
	left:AddAnchor("TOPLEFT", infoSettingsWindow, 0, 0)
	left:SetExtent(2, 470)
	local right = infoSettingsWindow:CreateColorDrawable(0.65, 0.55, 0.35, 0.9, "artwork")
	right:AddAnchor("TOPRIGHT", infoSettingsWindow, 0, 0)
	right:SetExtent(2, 470)

	infoSettingsTitle = infoSettingsWindow:CreateChildWidget("label", "title", 0, true)
	infoSettingsTitle:AddAnchor("TOPLEFT", infoSettingsWindow, 16, 12)
	infoSettingsTitle:SetExtent(230, 24)
	ApplyLocalLabelStyle(infoSettingsTitle, 18, ALIGN_LEFT, 1, 0.97, 0.92)
	infoSettingsTitle:SetText("Distance Settings")

	local closeButton = infoSettingsWindow:CreateChildWidget("button", "closeButton", 0, true)
	ApplyLocalButtonStyle(closeButton)
	closeButton:SetExtent(30, 24)
	closeButton:AddAnchor("TOPRIGHT", infoSettingsWindow, -12, 8)
	closeButton:SetText("X")
	closeButton:SetHandler("OnClick", function()
		infoSettingsWindow:Show(false)
	end)

	infoSettingsWindow:EnableDrag(true)
	infoSettingsWindow:SetHandler("OnDragStart", function(self)
		self:StartMoving()
		return true
	end)
	infoSettingsWindow:SetHandler("OnDragStop", function(self)
		self:StopMovingOrSizing()
	end)

	infoSettingsStatus = infoSettingsWindow:CreateChildWidget("label", "status", 0, true)
	infoSettingsStatus:AddAnchor("TOPLEFT", infoSettingsWindow, 16, 46)
	infoSettingsStatus:SetExtent(288, 110)
	ApplyLocalLabelStyle(infoSettingsStatus, 14, ALIGN_LEFT, 0.96, 0.90, 0.78)

	infoSettingsMessage = infoSettingsWindow:CreateChildWidget("label", "message", 0, true)
	infoSettingsMessage:AddAnchor("TOPLEFT", infoSettingsWindow, 16, 156)
	infoSettingsMessage:SetExtent(288, 36)
	ApplyLocalLabelStyle(infoSettingsMessage, 13, ALIGN_LEFT, 1, 1, 1)
	infoSettingsMessage:SetText("")

	local previewBg = infoSettingsWindow:CreateColorDrawable(0.12, 0.10, 0.08, 0.65, "background")
	previewBg:AddAnchor("TOPLEFT", infoSettingsWindow, 16, 202)
	previewBg:SetExtent(288, 92)
	local previewPlate = infoSettingsWindow:CreateColorDrawable(0.28, 0.42, 0.18, 0.95, "artwork")
	previewPlate:SetExtent(80, 30)
	previewPlate:AddAnchor("TOPLEFT", infoSettingsWindow, 120, 232)
	local previewName = infoSettingsWindow:CreateChildWidget("label", "previewName", 0, true)
	previewName:AddAnchor("TOPLEFT", previewPlate, 6, 6)
	previewName:SetExtent(68, 18)
	ApplyLocalLabelStyle(previewName, 13, ALIGN_CENTER, 1, 1, 1)
	previewName:SetText("Strawberry")

	distanceSettingsPreview = infoSettingsWindow:CreateChildWidget("label", "distancePreview", 0, true)
	ApplyLocalLabelStyle(distanceSettingsPreview, 25, ALIGN_LEFT, 1, 0, 0)
	distanceSettingsPreview:SetText("23.4m")
	distanceSettingsPreview:AddAnchor("LEFT", previewPlate, -90, 0)

	gearSettingsPreview = infoSettingsWindow:CreateChildWidget("label", "gearPreview", 0, true)
	ApplyLocalLabelStyle(gearSettingsPreview, 15, ALIGN_LEFT, 1, 1, 1)
	gearSettingsPreview:SetText("15432")
	gearSettingsPreview:AddAnchor("LEFT", previewPlate, 90, 0)

	classSettingsPreviewIcon = infoSettingsWindow:CreateIconDrawable("artwork")
	classSettingsPreviewIcon:SetExtent(22, 22)
	classSettingsPreviewIcon:AddTexture("ui/icon/icon_skill_pleasure02.dds")
	classSettingsPreviewIcon:SetVisible(true)
	classSettingsPreviewIcon:AddAnchor("LEFT", previewPlate, 90, 24)

	classSettingsPreviewLabel = infoSettingsWindow:CreateChildWidget("label", "classPreview", 0, true)
	ApplyLocalLabelStyle(classSettingsPreviewLabel, 13, ALIGN_LEFT, 1, 1, 1)
	classSettingsPreviewLabel:SetText("Blade Dancer")
	classSettingsPreviewLabel:AddAnchor("LEFT", previewPlate, 114, 24)

	castbarSettingsPreview = infoSettingsWindow:CreateColorDrawable(0.10, 0.08, 0.05, 0.98, "artwork")
	castbarSettingsPreview:SetExtent(120, 18)
	castbarSettingsPreview:AddAnchor("TOPLEFT", infoSettingsWindow, 100, 266)

	castbarSettingsPreviewFill = infoSettingsWindow:CreateColorDrawable(0.86, 0.68, 0.18, 0.95, "overlay")
	castbarSettingsPreviewFill:SetExtent(72, 12)
	castbarSettingsPreviewFill:AddAnchor("TOPLEFT", castbarSettingsPreview, 4, 3)

	castbarSettingsPreviewSpell = infoSettingsWindow:CreateChildWidget("label", "castbarSpellPreview", 0, true)
	ApplyLocalLabelStyle(castbarSettingsPreviewSpell, 13, ALIGN_LEFT, 1, 1, 1)
	castbarSettingsPreviewSpell:SetText("Meteo..")
	castbarSettingsPreviewSpell:AddAnchor("TOPLEFT", castbarSettingsPreview, 0, 20)

	castbarSettingsPreviewTime = infoSettingsWindow:CreateChildWidget("label", "castbarTimePreview", 0, true)
	ApplyLocalLabelStyle(castbarSettingsPreviewTime, 13, ALIGN_RIGHT, 1, 1, 1)
	castbarSettingsPreviewTime:SetText("1.2 / 2.0")
	castbarSettingsPreviewTime:AddAnchor("RIGHT", castbarSettingsPreview, -6, 0)

	local controlButtons = {}
	local castbarControls = {}

	local function setCastbarControlVisible(visible)
		for i = 1, #castbarControls do
			castbarControls[i]:Show(visible)
		end
	end

	local function makeInfoAdjustButton(name, text, x, y, mode, handler)
		local button = infoSettingsWindow:CreateChildWidget("button", name, 0, true)
		ApplyLocalButtonStyle(button)
		button:SetExtent(88, 30)
		button:AddAnchor("TOPLEFT", infoSettingsWindow, x, y)
		button:SetText(text)
		button:SetHandler("OnClick", function()
			if infoSettingsMode == mode then
				handler()
			end
		end)
		controlButtons[#controlButtons + 1] = { button = button, mode = mode }
	end

	makeInfoAdjustButton("distanceFontUpButton", "Font ^", 16, 310, "distance", function()
		shared.AdjustDistanceSettings("fontSize", 1)
	end)
	makeInfoAdjustButton("distanceFontDownButton", "Font v", 112, 310, "distance", function()
		shared.AdjustDistanceSettings("fontSize", -1)
	end)
	makeInfoAdjustButton("distanceRedUpButton", "Red ^", 208, 310, "distance", function()
		shared.AdjustDistanceSettings("turnRedAt", 1)
	end)
	makeInfoAdjustButton("distanceRedDownButton", "Red v", 16, 346, "distance", function()
		shared.AdjustDistanceSettings("turnRedAt", -1)
	end)
	makeInfoAdjustButton("distanceUpButton", "^", 112, 346, "distance", function()
		shared.AdjustDistanceSettings("y", -5)
	end)
	makeInfoAdjustButton("distanceLeftButton", "<", 16, 382, "distance", function()
		shared.AdjustDistanceSettings("x", -5)
	end)
	makeInfoAdjustButton("distanceDownButton", "v", 112, 382, "distance", function()
		shared.AdjustDistanceSettings("y", 5)
	end)
	makeInfoAdjustButton("distanceRightButton", ">", 208, 382, "distance", function()
		shared.AdjustDistanceSettings("x", 5)
	end)

	makeInfoAdjustButton("gearUpButton", "^", 112, 346, "gear", function()
		shared.AdjustGearSettings("y", -5)
	end)
	makeInfoAdjustButton("gearLeftButton", "<", 16, 382, "gear", function()
		shared.AdjustGearSettings("x", -5)
	end)
	makeInfoAdjustButton("gearDownButton", "v", 112, 382, "gear", function()
		shared.AdjustGearSettings("y", 5)
	end)
	makeInfoAdjustButton("gearRightButton", ">", 208, 382, "gear", function()
		shared.AdjustGearSettings("x", 5)
	end)

	makeInfoAdjustButton("classIconToggleButton", "Icon On/Off", 16, 310, "class", function()
		shared.ToggleClassSetting("showIcon")
	end)
	makeInfoAdjustButton("classWordsToggleButton", "Words On/Off", 208, 310, "class", function()
		shared.ToggleClassSetting("showWords")
	end)
	makeInfoAdjustButton("classIconUpButton", "Icon ^", 16, 346, "class", function()
		shared.AdjustClassSettings("icon", "y", -5)
	end)
	makeInfoAdjustButton("classIconLeftButton", "Icon <", 16, 382, "class", function()
		shared.AdjustClassSettings("icon", "x", -5)
	end)
	makeInfoAdjustButton("classIconDownButton", "Icon v", 16, 418, "class", function()
		shared.AdjustClassSettings("icon", "y", 5)
	end)
	makeInfoAdjustButton("classIconRightButton", "Icon >", 112, 382, "class", function()
		shared.AdjustClassSettings("icon", "x", 5)
	end)
	makeInfoAdjustButton("classWordsUpButton", "Words ^", 208, 346, "class", function()
		shared.AdjustClassSettings("label", "y", -5)
	end)
	makeInfoAdjustButton("classWordsLeftButton", "Words <", 208, 382, "class", function()
		shared.AdjustClassSettings("label", "x", -5)
	end)
	makeInfoAdjustButton("classWordsDownButton", "Words v", 208, 418, "class", function()
		shared.AdjustClassSettings("label", "y", 5)
	end)
	makeInfoAdjustButton("classWordsRightButton", "Words >", 112, 418, "class", function()
		shared.AdjustClassSettings("label", "x", 5)
	end)

	makeInfoAdjustButton("castbarUpButton", "^", 112, 382, "castbar", function()
		shared.AdjustCastbarSettings("y", -5)
	end)
	makeInfoAdjustButton("castbarLeftButton", "<", 16, 418, "castbar", function()
		shared.AdjustCastbarSettings("x", -5)
	end)
	makeInfoAdjustButton("castbarDownButton", "v", 112, 418, "castbar", function()
		shared.AdjustCastbarSettings("y", 5)
	end)
	makeInfoAdjustButton("castbarRightButton", ">", 208, 418, "castbar", function()
		shared.AdjustCastbarSettings("x", 5)
	end)

	local widthLabel = infoSettingsWindow:CreateChildWidget("label", "castbarWidthLabel", 0, true)
	widthLabel:AddAnchor("TOPLEFT", infoSettingsWindow, 16, 318)
	widthLabel:SetExtent(54, 24)
	ApplyLocalLabelStyle(widthLabel, 13, ALIGN_LEFT, 1, 1, 1)
	widthLabel:SetText("Width")
	castbarControls[#castbarControls + 1] = widthLabel

	castbarWidthEdit = CreateLocalEditBox(infoSettingsWindow, "castbarWidthEdit", 70)
	castbarWidthEdit:AddAnchor("TOPLEFT", infoSettingsWindow, 76, 310)
	castbarControls[#castbarControls + 1] = castbarWidthEdit

	local heightLabel = infoSettingsWindow:CreateChildWidget("label", "castbarHeightLabel", 0, true)
	heightLabel:AddAnchor("TOPLEFT", infoSettingsWindow, 160, 318)
	heightLabel:SetExtent(54, 24)
	ApplyLocalLabelStyle(heightLabel, 13, ALIGN_LEFT, 1, 1, 1)
	heightLabel:SetText("Height")
	castbarControls[#castbarControls + 1] = heightLabel

	castbarHeightEdit = CreateLocalEditBox(infoSettingsWindow, "castbarHeightEdit", 70)
	castbarHeightEdit:AddAnchor("TOPLEFT", infoSettingsWindow, 224, 310)
	castbarControls[#castbarControls + 1] = castbarHeightEdit

	local applyCastbarButton = infoSettingsWindow:CreateChildWidget("button", "applyCastbarButton", 0, true)
	ApplyLocalButtonStyle(applyCastbarButton)
	applyCastbarButton:SetExtent(88, 30)
	applyCastbarButton:AddAnchor("TOPLEFT", infoSettingsWindow, 16, 346)
	applyCastbarButton:SetText("Apply Size")
	castbarControls[#castbarControls + 1] = applyCastbarButton

	local function applyCastbarSize()
		local width = tonumber(castbarWidthEdit:GetText() or "")
		local height = tonumber(castbarHeightEdit:GetText() or "")
		if width == nil or height == nil then
			X2Chat:DispatchChatMessage(CMF_SYSTEM, "Extended Plates castbar size must use numbers.")
			return
		end

		local settings = shared.SetCastbarSettings(width, height)
		castbarWidthEdit:SetText(tostring(settings.width))
		castbarHeightEdit:SetText(tostring(settings.height))
	end

	applyCastbarButton:SetHandler("OnClick", function()
		if infoSettingsMode == "castbar" then
			applyCastbarSize()
		end
	end)
	castbarWidthEdit:SetHandler("OnEnterPressed", applyCastbarSize)
	castbarHeightEdit:SetHandler("OnEnterPressed", applyCastbarSize)

	function infoSettingsWindow:OnUpdate(dt)
		if not self:IsVisible() then
			return
		end

		self.elapsed = (self.elapsed or 0) + dt
		if self.elapsed < 0.15 then
			return
		end
		self.elapsed = 0

		if infoSettingsMode == "distance" then
			local settings = shared.GetDistanceSettings()
			infoSettingsTitle:SetText("Distance Settings")
			infoSettingsStatus:SetText(
				string.format(
					"Font Size: %d\nTurn Red At: %d\nPosition X: %d\nPosition Y: %d",
					settings.fontSize,
					settings.turnRedAt,
					settings.x,
					settings.y
				)
			)
			infoSettingsMessage:SetText("Use the buttons below to tune the target distance label.")
			distanceSettingsPreview.style:SetFontSize(settings.fontSize)
			if 23.4 > settings.turnRedAt then
				distanceSettingsPreview.style:SetColor(1, 0, 0, 1)
			else
				distanceSettingsPreview.style:SetColor(1, 1, 1, 1)
			end
			distanceSettingsPreview:RemoveAllAnchors()
			distanceSettingsPreview:AddAnchor("LEFT", previewPlate, settings.x, settings.y)
			distanceSettingsPreview:Show(true)
			gearSettingsPreview:Show(false)
			classSettingsPreviewIcon:SetVisible(false)
			classSettingsPreviewLabel:Show(false)
			castbarSettingsPreview:Show(false)
			castbarSettingsPreviewFill:Show(false)
			castbarSettingsPreviewSpell:Show(false)
			castbarSettingsPreviewTime:Show(false)
			setCastbarControlVisible(false)
		elseif infoSettingsMode == "gear" then
			local settings = shared.GetGearSettings()
			infoSettingsTitle:SetText("Gear Settings")
			infoSettingsStatus:SetText(
				string.format(
					"Position X: %d\nPosition Y: %d",
					settings.x,
					settings.y
				)
			)
			infoSettingsMessage:SetText("Use the arrows below to move the gearscore label.")
			distanceSettingsPreview:Show(false)
			gearSettingsPreview:RemoveAllAnchors()
			gearSettingsPreview:AddAnchor("LEFT", previewPlate, settings.x, settings.y)
			gearSettingsPreview:Show(true)
			classSettingsPreviewIcon:SetVisible(false)
			classSettingsPreviewLabel:Show(false)
			castbarSettingsPreview:Show(false)
			castbarSettingsPreviewFill:Show(false)
			castbarSettingsPreviewSpell:Show(false)
			castbarSettingsPreviewTime:Show(false)
			setCastbarControlVisible(false)
		elseif infoSettingsMode == "class" then
			local settings = shared.GetClassSettings()
			infoSettingsTitle:SetText("Class Settings")
			infoSettingsStatus:SetText(
				string.format(
					"Icon: %s\nX: %d  Y: %d\nWords: %s\nX: %d  Y: %d",
					settings.showIcon and "ON" or "OFF",
					settings.iconX,
					settings.iconY,
					settings.showWords and "ON" or "OFF",
					settings.labelX,
					settings.labelY
				)
			)
			infoSettingsMessage:SetText("Move icon and words separately, or toggle them off.")
			distanceSettingsPreview:Show(false)
			gearSettingsPreview:Show(false)
			classSettingsPreviewIcon:RemoveAllAnchors()
			classSettingsPreviewIcon:AddAnchor("LEFT", previewPlate, settings.iconX, settings.iconY)
			classSettingsPreviewIcon:SetVisible(settings.showIcon == true)
			classSettingsPreviewLabel:RemoveAllAnchors()
			classSettingsPreviewLabel:AddAnchor("LEFT", previewPlate, settings.labelX, settings.labelY)
			classSettingsPreviewLabel:Show(settings.showWords == true)
			castbarSettingsPreview:Show(false)
			castbarSettingsPreviewFill:Show(false)
			castbarSettingsPreviewSpell:Show(false)
			castbarSettingsPreviewTime:Show(false)
			setCastbarControlVisible(false)
		else
			local settings = shared.GetCastbarSettings()
			infoSettingsTitle:SetText("Castbar Settings")
			infoSettingsStatus:SetText(
				string.format(
					"Width: %d\nHeight: %d\nPosition X: %d\nPosition Y: %d",
					settings.width,
					settings.height,
					settings.x,
					settings.y
				)
			)
			infoSettingsMessage:SetText("Use the input fields for size and arrows to move the castbar on the nameplate.")
			distanceSettingsPreview:Show(false)
			gearSettingsPreview:Show(false)
			classSettingsPreviewIcon:SetVisible(false)
			classSettingsPreviewLabel:Show(false)
			castbarSettingsPreview:RemoveAllAnchors()
			castbarSettingsPreview:SetExtent(settings.width, settings.height)
			castbarSettingsPreview:AddAnchor("TOPLEFT", previewPlate, settings.x, 34 + settings.y)
			castbarSettingsPreviewFill:RemoveAllAnchors()
			castbarSettingsPreviewFill:SetExtent(
				math.max(8, math.floor((settings.width - 8) * 0.6)),
				math.max(6, settings.height - 6)
			)
			castbarSettingsPreviewFill:AddAnchor("TOPLEFT", castbarSettingsPreview, 4, 3)
			castbarSettingsPreviewSpell:RemoveAllAnchors()
			castbarSettingsPreviewSpell:AddAnchor("TOPLEFT", castbarSettingsPreview, 0, 20)
			castbarSettingsPreviewSpell:SetExtent(settings.width, 18)
			castbarSettingsPreviewTime:RemoveAllAnchors()
			castbarSettingsPreviewTime:AddAnchor("RIGHT", castbarSettingsPreview, -6, 0)
			castbarSettingsPreviewTime:SetExtent(72, 18)
			castbarSettingsPreview:Show(true)
			castbarSettingsPreviewFill:Show(true)
			castbarSettingsPreviewSpell:Show(true)
			castbarSettingsPreviewTime:Show(true)
			setCastbarControlVisible(true)
		end

		for i = 1, #controlButtons do
			local entry = controlButtons[i]
			entry.button:Show(entry.mode == infoSettingsMode)
		end
	end

	infoSettingsWindow:SetHandler("OnUpdate", infoSettingsWindow.OnUpdate)
end

do
	local bg = positionWindow:CreateColorDrawable(0.08, 0.06, 0.04, 0.96, "background")
	bg:AddAnchor("TOPLEFT", positionWindow, 0, 0)
	bg:AddAnchor("BOTTOMRIGHT", positionWindow, 0, 0)

	local top = positionWindow:CreateColorDrawable(0.65, 0.55, 0.35, 0.9, "artwork")
	top:AddAnchor("TOPLEFT", positionWindow, 0, 0)
	top:SetExtent(260, 2)
	local bottom = positionWindow:CreateColorDrawable(0.65, 0.55, 0.35, 0.9, "artwork")
	bottom:AddAnchor("BOTTOMLEFT", positionWindow, 0, 0)
	bottom:SetExtent(260, 2)
	local left = positionWindow:CreateColorDrawable(0.65, 0.55, 0.35, 0.9, "artwork")
	left:AddAnchor("TOPLEFT", positionWindow, 0, 0)
	left:SetExtent(2, 430)
	local right = positionWindow:CreateColorDrawable(0.65, 0.55, 0.35, 0.9, "artwork")
	right:AddAnchor("TOPRIGHT", positionWindow, 0, 0)
	right:SetExtent(2, 430)

	local title = positionWindow:CreateChildWidget("label", "title", 0, true)
	title:AddAnchor("TOPLEFT", positionWindow, 16, 12)
	title:SetExtent(150, 24)
	ApplyLocalLabelStyle(title, 18, ALIGN_LEFT, 1, 0.97, 0.92)
	title:SetText("Position")

	local closeButton = positionWindow:CreateChildWidget("button", "closeButton", 0, true)
	ApplyLocalButtonStyle(closeButton)
	closeButton:SetExtent(30, 24)
	closeButton:AddAnchor("TOPRIGHT", positionWindow, -12, 8)
	closeButton:SetText("X")
	closeButton:SetHandler("OnClick", function()
		positionWindow:Show(false)
	end)

	positionWindow:EnableDrag(true)
	positionWindow:SetHandler("OnDragStart", function(self)
		self:StartMoving()
		return true
	end)
	positionWindow:SetHandler("OnDragStop", function(self)
		self:StopMovingOrSizing()
	end)

	local function makePositionModeButton(index, scope, effectType, text)
		local button = positionWindow:CreateChildWidget("button", "modeButton", index, true)
		ApplyLocalButtonStyle(button)
		button:SetExtent(108, 28)
		local col = (index - 1) % 2
		local row = math.floor((index - 1) / 2)
		button:AddAnchor("TOPLEFT", positionWindow, 16 + (col * 116), 48 + (row * 34))
		button:SetText(text)
		button:SetHandler("OnClick", function()
			positionModeScope = scope
			positionModeEffect = effectType
		end)
		positionModeButtons[#positionModeButtons + 1] = {
			button = button,
			scope = scope,
			effectType = effectType,
			baseText = text,
		}
	end

	makePositionModeButton(1, "target", "buff", "Target Buffs")
	makePositionModeButton(2, "target", "debuff", "Target Debuffs")
	makePositionModeButton(3, "target", "hidden", "Target Hidden")
	makePositionModeButton(4, "self", "buff", "Self Buffs")
	makePositionModeButton(5, "self", "debuff", "Self Debuffs")
	makePositionModeButton(6, "self", "hidden", "Self Hidden")

	positionStatusLabel = positionWindow:CreateChildWidget("label", "status", 0, true)
	positionStatusLabel:AddAnchor("TOPLEFT", positionWindow, 16, 156)
	positionStatusLabel:SetExtent(228, 40)
	ApplyLocalLabelStyle(positionStatusLabel, 14, ALIGN_LEFT, 0.96, 0.90, 0.78)

	local previewOffsetX = 16
	local previewOffsetY = 206

	local previewBg = positionWindow:CreateColorDrawable(0.12, 0.10, 0.08, 0.65, "background")
	previewBg:AddAnchor("TOPLEFT", positionWindow, previewOffsetX, previewOffsetY)
	previewBg:SetExtent(228, 86)

	positionPreviewOrigin = CreateEmptyWindow("targetDebuffTrackerPositionPreviewOrigin", "UIParent")
	positionPreviewOrigin:SetExtent(1, 1)
	positionPreviewOrigin:AddAnchor("TOPLEFT", positionWindow, previewOffsetX + 34, previewOffsetY + 30)
	positionPreviewOrigin:Show(true)

	positionPreviewBox = positionWindow:CreateColorDrawable(0.28, 0.42, 0.18, 0.95, "artwork")
	positionPreviewBox:SetExtent(80, 30)
	positionPreviewBox:AddAnchor("TOPLEFT", positionPreviewOrigin, 14, 10)

	local previewBoxBorderTop = positionWindow:CreateColorDrawable(0.84, 0.88, 0.74, 0.9, "overlay")
	previewBoxBorderTop:SetExtent(80, 1)
	previewBoxBorderTop:AddAnchor("TOPLEFT", positionPreviewBox, 0, 0)
	local previewBoxBorderBottom = positionWindow:CreateColorDrawable(0.20, 0.26, 0.14, 0.9, "overlay")
	previewBoxBorderBottom:SetExtent(80, 1)
	previewBoxBorderBottom:AddAnchor("BOTTOMLEFT", positionPreviewBox, 0, 0)
	local previewBoxBorderLeft = positionWindow:CreateColorDrawable(0.84, 0.88, 0.74, 0.9, "overlay")
	previewBoxBorderLeft:SetExtent(1, 30)
	previewBoxBorderLeft:AddAnchor("TOPLEFT", positionPreviewBox, 0, 0)
	local previewBoxBorderRight = positionWindow:CreateColorDrawable(0.20, 0.26, 0.14, 0.9, "overlay")
	previewBoxBorderRight:SetExtent(1, 30)
	previewBoxBorderRight:AddAnchor("TOPRIGHT", positionPreviewBox, 0, 0)

	positionPreviewName = positionWindow:CreateChildWidget("label", "previewName", 0, true)
	positionPreviewName:AddAnchor("TOPLEFT", positionPreviewBox, 6, 6)
	positionPreviewName:SetExtent(68, 18)
	ApplyLocalLabelStyle(positionPreviewName, 13, ALIGN_CENTER, 1, 1, 1)
	positionPreviewName:SetText("Strawberry")

	for i = 1, 4 do
		local icon = positionWindow:CreateIconDrawable("artwork")
		icon:SetExtent(25, 25)
		icon:SetVisible(true)
		positionPreviewIcons[i] = icon
	end

	local function makeAdjustButton(name, text, x, y, axis, delta)
		local button = positionWindow:CreateChildWidget("button", name, 0, true)
		ApplyLocalButtonStyle(button)
		button:SetExtent(70, 28)
		button:AddAnchor("TOPLEFT", positionWindow, x, y)
		button:SetText(text)
		button:SetHandler("OnClick", function()
			shared.AdjustIconSettings(positionModeScope, positionModeEffect, axis, delta)
		end)
	end

	makeAdjustButton("upButton", "^", 94, 304, "y", -5)
	makeAdjustButton("leftButton", "<", 16, 338, "x", -5)
	makeAdjustButton("rightButton", ">", 172, 338, "x", 5)
	makeAdjustButton("downButton", "v", 94, 372, "y", 5)
	makeAdjustButton("biggerButton", "Bigger", 16, 400, "size", 5)
	makeAdjustButton("smallerButton", "Smaller", 126, 400, "size", -5)

	function positionWindow:OnUpdate(dt)
		if not self:IsVisible() then
			return
		end

		self.elapsed = (self.elapsed or 0) + dt
		if self.elapsed < 0.15 then
			return
		end
		self.elapsed = 0

		local current = shared.GetIconSettings(positionModeScope, positionModeEffect)
		local layout = GetPreviewLayout(positionModeEffect)
		positionStatusLabel:SetText(
			string.format(
				"%s\nX: %d  Y: %d  Size: %d",
				categoryTitle(positionModeScope, positionModeEffect),
				current.x,
				current.y,
				current.iconSize
			)
		)

		local previewTexture = GetPreviewIconPath(positionModeEffect)
		positionPreviewOrigin:RemoveAllAnchors()
		positionPreviewOrigin:AddAnchor(
			"TOPLEFT",
			positionWindow,
			previewOffsetX + layout.originX,
			previewOffsetY + layout.originY
		)

		positionPreviewBox:RemoveAllAnchors()
		positionPreviewBox:SetExtent(layout.nameplateWidth, layout.nameplateHeight)
		positionPreviewBox:AddAnchor(
			"TOPLEFT",
			positionPreviewOrigin,
			layout.nameplateX,
			layout.nameplateY
		)

		positionPreviewName:SetExtent(layout.nameplateWidth - 12, 18)
		for i = 1, #positionPreviewIcons do
			local icon = positionPreviewIcons[i]
			icon:ClearAllTextures()
			icon:AddTexture(previewTexture)
			icon:SetExtent(current.iconSize, current.iconSize)
			icon:RemoveAllAnchors()
			icon:AddAnchor(
				"LEFT",
				positionPreviewOrigin,
				current.x + ((current.iconSize + 5) * (i - 1)),
				current.y
			)
		end

		for i = 1, #positionModeButtons do
			local entry = positionModeButtons[i]
			local active = entry.scope == positionModeScope and entry.effectType == positionModeEffect
			entry.button:SetText((active and "> " or "") .. entry.baseText)
			if entry.button.style ~= nil and entry.button.style.SetColor ~= nil then
				if active then
					entry.button.style:SetColor(0.10, 0.60, 0.10, 1)
				else
					entry.button.style:SetColor(0.08, 0.06, 0.03, 1)
				end
			end
		end
	end

	positionWindow:SetHandler("OnUpdate", positionWindow.OnUpdate)
end

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
	DebugPrint(
		string.format(
			"refreshWindow state scope=%s effect=%s trackedOnly=%s",
			tostring(scope),
			tostring(effectType),
			tostring(uiState.filterTrackedOnly)
		)
	)
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
	filterButton:SetText("Show All [" .. (uiState.filterTrackedOnly and "OFF" or "ON") .. "]")
	showGearButton:SetText("Show Gear [" .. (uiState.showGear and "ON" or "OFF") .. "]")
	showClassButton:SetText("Show Class [" .. (uiState.showClass and "ON" or "OFF") .. "]")
	showDistanceButton:SetText("Show Distance [" .. (uiState.showDistance and "ON" or "OFF") .. "]")
	showCastbarButton:SetText("Show Castbar [" .. (uiState.showCastbar and "ON" or "OFF") .. "]")

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

positionButton:SetHandler("OnClick", function()
	positionWindow:Show(not positionWindow:IsVisible())
end)

DebugPrint("tracktarget.lua init complete")
