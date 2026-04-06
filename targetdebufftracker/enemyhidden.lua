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
local buffAnchor = CreateEmptyWindow("targetDebuffTrackerEnemyHiddenAnchor", "UIParent")
buffAnchor:Show(true)

local drawableIcons = {}
local drawableDurations = {}

local function hideUnused(currentIcons)
	for id, icon in pairs(drawableIcons) do
		if not currentIcons[id] and icon:IsVisible() then
			drawableDurations[id]:Show(false)
			icon:SetVisible(false)
		end
	end
end

local function drawIcon(parent, iconId, iconPath, xOffset, yOffset, duration)
	if drawableIcons[iconId] ~= nil then
		if not drawableIcons[iconId]:IsVisible() then
			drawableIcons[iconId]:SetVisible(true)
			drawableDurations[iconId]:Show(true)
		end
		drawableIcons[iconId]:AddAnchor("LEFT", parent, xOffset, yOffset)
		drawableDurations[iconId]:AddAnchor("LEFT", parent, xOffset, yOffset)
		drawableDurations[iconId]:SetText(duration)
		return
	end

	local drawableIcon = parent:CreateIconDrawable("artwork")
	drawableIcon:SetExtent(25, 25)
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

	drawableIcons[iconId] = drawableIcon
	drawableDurations[iconId] = lblDuration
end

function buffAnchor:OnUpdate()
	local screenX, screenY, screenZ = X2Unit:GetUnitScreenPosition("target")
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
	buffAnchor:AddAnchor("TOPLEFT", "UIParent", x + 40, y - 20)

	if shared.GetUiState().target.hidden then
		local settings = shared.GetIconSettings("target", "hidden")
		local buffCounter = 0
		local buffCount = X2Unit:UnitHiddenBuffCount("target")
		for i = 1, buffCount do
			local buff = X2Unit:UnitHiddenBuffTooltip("target", i)
			local buffExtra = X2Unit:UnitHiddenBuff("target", i)
			local buffId = tostring(buffExtra["buff_id"])
			local duration = buff["timeLeft"] and math.floor(buff["timeLeft"] / 1000) or -1
			if tonumber(buffId) == 22969 then
				duration = duration - 1440
			end

			if duration >= 0 and shared.ShouldDisplay("target", "hidden", buffId) then
				local iconId = "hidden:" .. buffId .. ":" .. tostring(buff["name"])
				currentIcons[iconId] = true
				drawIcon(
					buffAnchor,
					iconId,
					buffExtra["path"],
					settings.x + ((settings.iconSize + 5) * buffCounter),
					settings.y,
					shared.FormatDuration(duration)
				)
				buffCounter = buffCounter + 1
			end
		end
	end

	hideUnused(currentIcons)
end

buffAnchor:SetHandler("OnUpdate", buffAnchor.OnUpdate)
