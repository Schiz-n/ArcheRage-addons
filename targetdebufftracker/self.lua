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
local buffAnchor = CreateEmptyWindow("targetDebuffTrackerSelfAnchor", "UIParent")
buffAnchor:Show(true)

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
	local screenX, screenY, screenZ = X2Unit:GetUnitScreenPosition("player")
	if screenX == nil or screenY == nil or screenZ == nil or screenZ <= 0 then
		buffAnchor:AddAnchor("TOPLEFT", "UIParent", 5000, 5000)
		hideUnused({})
		return
	end

	local x = math.floor(0.5 + screenX)
	local y = math.floor(0.5 + screenY)
	local settings = shared.GetIconSettings("self")
	local currentIcons = {}

	buffAnchor:Show(true)
	buffAnchor:Enable(true)
	buffAnchor:AddAnchor("TOPLEFT", "UIParent", x - 50, y - 40)

	if shared.GetUiState().self.buff then
		local buffCounter = 0
		local buffCount = X2Unit:UnitBuffCount("player")
		for i = 1, buffCount do
			local buff = X2Unit:UnitBuffTooltip("player", i)
			local buffExtra = X2Unit:UnitBuff("player", i)
			local buffId = tostring(buffExtra["buff_id"])
			if shared.ShouldDisplay("self", "buff", buffId) then
				local iconId = "buff:" .. buffId .. ":" .. tostring(buff["name"])
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

	if shared.GetUiState().self.debuff then
		local debuffCounter = 0
		local debuffCount = X2Unit:UnitDeBuffCount("player")
		for i = 1, debuffCount do
			local debuff = X2Unit:UnitDeBuffTooltip("player", i)
			local debuffExtra = X2Unit:UnitDeBuff("player", i)
			local debuffId = tostring(debuffExtra["buff_id"])
			if shared.ShouldDisplay("self", "debuff", debuffId) then
				local iconId = "debuff:" .. debuffId .. ":" .. tostring(debuff["name"])
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
