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
ADDON:ImportAPI(API_TYPE.EQUIPMENT.id)

local shared = TargetDebuffTrackerShared
local buffAnchor = CreateEmptyWindow("targetDebuffTrackerSelfAnchor", "UIParent")
buffAnchor:Show(true)

local drawableIcons = {}
local drawableDurations = {}
local drawableStacks = {}
local equipmentTrackers = {}

local equipmentSlots = {
	{ key = "mainhand", slotId = ES_MAINHAND, order = 2, flag = "showMainhand" },
	{ key = "offhand", slotId = ES_OFFHAND, order = 3, flag = "showOffhand" },
	{ key = "glider", slotId = ES_BACKPACK, order = 1, flag = "showGlider" },
	{ key = "ranged", slotId = ES_RANGED, order = 4, flag = "showRanged" },
}

local function getEquipmentPitch(settings)
	return (settings.iconSize or 25) + 2
end

local function getEquipmentOffsets(settings, index)
	local pitch = getEquipmentPitch(settings)
	if settings.layout == "vertical" then
		return settings.x, settings.y + (pitch * (index - 1))
	end

	return settings.x - (pitch * index), settings.y
end

local function createEquipmentTracker(parent, index)
	local tracker = {}

	tracker.icon = parent:CreateIconDrawable("artwork")
	tracker.icon:SetExtent(25, 25)
	tracker.icon:SetVisible(false)

	tracker.gradeIcon = parent:CreateIconDrawable("artwork")
	tracker.gradeIcon:SetExtent(25, 25)
	tracker.gradeIcon:SetVisible(false)
	tracker.gradeIcon:AddAnchor("CENTER", tracker.icon, 0, 0)

	tracker.index = index
	tracker.currentIcon = nil
	tracker.currentGradeIcon = nil

	return tracker
end

local function updateEquipmentTrackerAnchors()
	local settings = shared.GetEquipmentSettings()
	for i = 1, #equipmentSlots do
		local entry = equipmentSlots[i]
		local tracker = equipmentTrackers[entry.key]
		if tracker ~= nil then
			local offsetX, offsetY = getEquipmentOffsets(settings, entry.order)
			tracker.icon:SetExtent(settings.iconSize, settings.iconSize)
			tracker.gradeIcon:SetExtent(settings.iconSize, settings.iconSize)
			tracker.icon:RemoveAllAnchors()
			tracker.icon:AddAnchor("CENTER", buffAnchor, offsetX, offsetY)
		end
	end
end

local function clearEquipmentTracker(tracker)
	tracker.icon:ClearAllTextures()
	tracker.icon:SetVisible(false)
	tracker.gradeIcon:ClearAllTextures()
	tracker.gradeIcon:SetVisible(false)
	tracker.currentIcon = nil
	tracker.currentGradeIcon = nil
end

local function updateEquipmentTracker(tracker, slotId, isEnabled)
	if isEnabled ~= true then
		clearEquipmentTracker(tracker)
		return
	end

	local currentItem = X2Equipment:GetEquippedItemTooltipInfo(slotId, false)
	if currentItem == nil or currentItem.icon == nil or currentItem.icon == "" then
		clearEquipmentTracker(tracker)
		return
	end

	if currentItem.icon ~= tracker.currentIcon then
		tracker.icon:ClearAllTextures()
		tracker.icon:AddTexture(currentItem.icon)
		tracker.currentIcon = currentItem.icon
	end
	tracker.icon:SetVisible(true)

	local gradeIcon = currentItem.gradeIcon
	if gradeIcon ~= nil and gradeIcon ~= "" then
		if gradeIcon ~= tracker.currentGradeIcon then
			tracker.gradeIcon:ClearAllTextures()
			tracker.gradeIcon:AddTexture(gradeIcon)
			tracker.currentGradeIcon = gradeIcon
		end
		tracker.gradeIcon:SetVisible(true)
	else
		tracker.gradeIcon:ClearAllTextures()
		tracker.gradeIcon:SetVisible(false)
		tracker.currentGradeIcon = nil
	end
end

local function refreshEquipmentTrackers()
	local uiState = shared.GetUiState()
	if uiState.showEquipment ~= true then
		for i = 1, #equipmentSlots do
			clearEquipmentTracker(equipmentTrackers[equipmentSlots[i].key])
		end
		return
	end

	updateEquipmentTrackerAnchors()
	local settings = shared.GetEquipmentSettings()
	for i = 1, #equipmentSlots do
		local entry = equipmentSlots[i]
		updateEquipmentTracker(equipmentTrackers[entry.key], entry.slotId, settings[entry.flag] == true)
	end
end

for i = 1, #equipmentSlots do
	local entry = equipmentSlots[i]
	equipmentTrackers[entry.key] = createEquipmentTracker(buffAnchor, entry.order)
end

UIParent:SetEventHandler(UIEVENT_TYPE.UNIT_EQUIPMENT_CHANGED, function()
	refreshEquipmentTrackers()
end)

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
	local screenX, screenY, screenZ = X2Unit:GetUnitScreenPosition("player")
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

	if shared.GetUiState().self.buff then
		local settings = shared.GetIconSettings("self", "buff")
		local buffCounter = 0
		local buffCount = X2Unit:UnitBuffCount("player")
		for i = 1, buffCount do
			local buff = X2Unit:UnitBuffTooltip("player", i)
			local buffExtra = X2Unit:UnitBuff("player", i)
			local buffId = tostring(buffExtra["buff_id"])
			if shared.ShouldDisplay("self", "buff", buffId) then
				local iconId = "buff:" .. buffId .. ":" .. tostring(buff["name"])
				local iconX, iconY = shared.GetIconOffsetForIndex(settings, buffCounter)
				currentIcons[iconId] = true
				drawIcon(
					buffAnchor,
					iconId,
					buffExtra["path"],
					iconX,
					iconY,
					shared.FormatDuration(buff["timeLeft"] and math.floor(buff["timeLeft"] / 1000) or ""),
					buff["stack"],
					settings.iconSize
				)
				buffCounter = buffCounter + 1
			end
		end
	end

	if shared.GetUiState().self.debuff then
		local settings = shared.GetIconSettings("self", "debuff")
		local debuffCounter = 0
		local debuffCount = X2Unit:UnitDeBuffCount("player")
		for i = 1, debuffCount do
			local debuff = X2Unit:UnitDeBuffTooltip("player", i)
			local debuffExtra = X2Unit:UnitDeBuff("player", i)
			local debuffId = tostring(debuffExtra["buff_id"])
			if shared.ShouldDisplay("self", "debuff", debuffId) then
				local iconId = "debuff:" .. debuffId .. ":" .. tostring(debuff["name"])
				local iconX, iconY = shared.GetIconOffsetForIndex(settings, debuffCounter)
				currentIcons[iconId] = true
				drawIcon(
					buffAnchor,
					iconId,
					debuffExtra["path"],
					iconX,
					iconY,
					shared.FormatDuration(debuff["timeLeft"] and math.floor(debuff["timeLeft"] / 1000) or ""),
					debuff["stack"],
					settings.iconSize
				)
				debuffCounter = debuffCounter + 1
			end
		end
	end

	refreshEquipmentTrackers()
	hideUnused(currentIcons)
end

buffAnchor:SetHandler("OnUpdate", buffAnchor.OnUpdate)
