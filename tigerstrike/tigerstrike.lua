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

local activeTimers = {}

local buffAnchor = CreateEmptyWindow("buffAnchor", "UIParent")
buffAnchor:Show(true)

local target_buffs = {}
local parryCooldown = {}
local PARRY_COOLDOWN_TIME = 12 -- 12 seconds cooldown after a parry

local buffAllString = ""
local lastBuffString = ""

local drawableNmyIcons = {}
local drawableNmyLabels = {}

------------------------ Icon drawing function ------------------------
local function drawTsIcon(w, iconPath, id, xOffset, yOffset, duration)
	-- If the icon already exists, don't redraw it, instead update it
	if drawableNmyIcons[id] ~= nil then
		if not drawableNmyIcons[id]:IsVisible() then
			drawableNmyIcons[id]:SetVisible(true)
			drawableNmyLabels[id]:Show(true)
		end
		drawableNmyIcons[id]:AddAnchor("LEFT", w, xOffset, yOffset)
		drawableNmyLabels[id]:AddAnchor("LEFT", w, xOffset, yOffset)
		drawableNmyLabels[id]:SetText(tostring(duration))
		return
	end

	local drawableIcon = w:CreateIconDrawable("artwork")
	drawableIcon:SetExtent(30, 30)
	drawableIcon:ClearAllTextures()
	drawableIcon:AddTexture(iconPath)
	drawableIcon:SetVisible(true)
	local lblDuration = w:CreateChildWidget("label", "lblDuration", 0, true)
	lblDuration:Show(true)
	lblDuration:EnablePick(false)
	lblDuration.style:SetColor(1, 1, 1, 1.0)
	lblDuration.style:SetOutline(true)
	lblDuration.style:SetAlign(ALIGN_LEFT)
	lblDuration:SetText(tostring(duration))
	drawableNmyLabels[id] = lblDuration
	drawableNmyIcons[id] = drawableIcon
end

local function onShotEvent(
	unitId,
	eventType,
	sourceName,
	targetName,
	abilityId,
	abilityName,
	damageType,
	effectType,
	isActive
)
	if tostring(abilityId):find("PARRY") then
		local lastParryTime = parryCooldown[targetName]
		local currentTime = os.time()

		if lastParryTime == nil or (currentTime - lastParryTime >= PARRY_COOLDOWN_TIME) then
			--X2Chat:DispatchChatMessage(CMF_SYSTEM, tostring(targetName) .. " parried, resetting their tiger strike.")
			timerDuration = 0
			activeTimers[targetName] = { end_time = os.time() + timerDuration }
			parryCooldown[targetName] = currentTime
		else
			--X2Chat:DispatchChatMessage(CMF_SYSTEM, tostring(targetName) .. " parried, but the cooldown is active.")
		end
	elseif tostring(abilityName):find("Tiger Strike") then
		local existingTimer = activeTimers[sourceName]
		if existingTimer then
			local remaining_time = existingTimer.end_time - os.time()
			if remaining_time <= 0 then
				--X2Chat:DispatchChatMessage(CMF_SYSTEM, tostring(sourceName) .. " tiger striked from zero, resetting TS timer.")
				timerDuration = 28
				activeTimers[sourceName] = { end_time = os.time() + timerDuration }
			else
				--X2Chat:DispatchChatMessage(CMF_SYSTEM, tostring(sourceName) .. " tiger strike ignored, timer is still active.")
			end
		else
			--X2Chat:DispatchChatMessage(CMF_SYSTEM, tostring(sourceName) .. " tiger striked, setting timer.")
			timerDuration = 28
			activeTimers[sourceName] = { end_time = os.time() + timerDuration }
		end
	end
end

UIParent:SetEventHandler(UIEVENT_TYPE.COMBAT_MSG, onShotEvent)

-- Update Loop for Buff Anchor
function buffAnchor:OnUpdate(dt)
	local nScrX_Tar, nScrY_Tar, nScrZ_Tar = X2Unit:GetUnitScreenPosition("target")
	if nScrX_Tar == nil or nScrY_Tar == nil or nScrZ_Tar == nil then
		buffAnchor:AddAnchor("TOPLEFT", "UIParent", 5000, 5000)
	elseif nScrZ_Tar > 0 then
		local x = math.floor(0.5 + nScrX_Tar)
		local y = math.floor(0.5 + nScrY_Tar)
		buffAnchor:Show(true)
		buffAnchor:Enable(true)
		buffAnchor:AddAnchor("TOPLEFT", "UIParent", x - 50, y + 25)
	end

	local current_time = os.time()
	local displayText = ""
	local currentTargetName = X2Unit:UnitName("target")
	local templates = X2Unit:GetTargetAbilityTemplates("target")
	local containsFight
	if templates ~= nil then
		for i, v in ipairs(templates) do
			if v.name == "fight" then
				containsFight = true
				break
			end
		end
	end
	local doIDraw = false
	if containsFight then
		--if person has battlerage
		for targetName, timerData in pairs(activeTimers) do
			local remaining_time = timerData.end_time - current_time
			if remaining_time > 0 then
				if targetName == currentTargetName then
					drawTsIcon(buffAnchor, "ui/icon/icon_skill_fight39.dds", 1, 0, 0, remaining_time)
					doIDraw = true
					break
				end
			else
				--X2Chat:DispatchChatMessage(CMF_SYSTEM, "Timer expired for " .. currentTargetName .. ", reset it")
				activeTimers[targetName] = nil
			end
		end
	end
	if doIDraw == false then
		for id, icon in pairs(drawableNmyIcons) do
			if icon:IsVisible() then
				icon:SetVisible(false)
				drawableNmyLabels[id]:Show(false)
			end
		end
	end
end
buffAnchor:SetHandler("OnUpdate", buffAnchor.OnUpdate)
