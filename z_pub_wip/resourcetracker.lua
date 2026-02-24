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

ADDON:ImportAPI(API_TYPE.CHAT.id)
ADDON:ImportAPI(API_TYPE.COMBAT_RESOURCE.id)

local drawableNmyIcons = {}
local drawableNmyLabels = {}
local drawableNmyLabels_stacks = {}
local iconSize = 30

------------------------ Icon drawing function ------------------------
local function drawIcon(w, iconPath, id, xOffset, yOffset, duration, stacks)
	stacks = (stacks == "1") and "" or stacks
	-- If the icon already exists, don't redraw it, instead update it
	if drawableNmyIcons[id] ~= nil then
		if not drawableNmyIcons[id]:IsVisible() then
			drawableNmyIcons[id]:SetVisible(true)
			drawableNmyLabels[id]:Show(true)
			drawableNmyLabels_stacks[id]:Show(true)
		end
		drawableNmyIcons[id]:AddAnchor("LEFT", w, xOffset, yOffset)
		drawableNmyIcons[id]:SetExtent(iconSize, iconSize)
		drawableNmyLabels[id]:AddAnchor("LEFT", w, xOffset, yOffset)
		if duration > 0 then
			drawableNmyLabels[id]:SetText(tostring(duration))
		end
		drawableNmyLabels_stacks[id]:AddAnchor("LEFT", w, xOffset + 10, yOffset - 10)
		if duration > 0 then
			drawableNmyLabels_stacks[id]:SetText("MAX")
		else
			drawableNmyLabels_stacks[id]:SetText(stacks)
		end

		return
	end
	-- Create an icon using iconPath
	local drawableIcon = w:CreateIconDrawable("artwork")
	drawableIcon:SetExtent(iconSize, iconSize) -- Width, height
	drawableIcon:ClearAllTextures() -- Every other usage of AddTexture called this first 🤷
	drawableIcon:AddTexture(iconPath) -- path to dds texture to load
	drawableIcon:SetVisible(true)
	-- add timer label
	local lblDuration = w:CreateChildWidget("label", "lblDuration", 0, true)
	lblDuration:Show(true)
	lblDuration:EnablePick(false)
	lblDuration.style:SetColor(1, 1, 1, 1.0)
	lblDuration.style:SetOutline(true)
	lblDuration.style:SetAlign(ALIGN_LEFT)
	if duration > 0 then
		lblDuration:SetText(tostring(duration))
	end
	-- add stacks label
	local lblStacks = w:CreateChildWidget("label", "lblStacks", 0, true)
	lblStacks:Show(true)
	lblStacks:EnablePick(false)
	lblStacks.style:SetColor(0, 1, 1, 1.0)
	lblStacks.style:SetOutline(true)
	lblStacks.style:SetAlign(ALIGN_LEFT)
	if duration > 0 then
		lblStacks:SetText("MAX")
	else
		lblStacks:SetText(stacks)
	end

	-- Save the drawn icon to the global object array
	drawableNmyLabels[id] = lblDuration
	drawableNmyLabels_stacks[id] = lblStacks
	drawableNmyIcons[id] = drawableIcon
end

local loopRunner = CreateEmptyWindow("loopRunner", "UIParent")
loopRunner:Show(true)
loopRunner:AddAnchor("TOPLEFT", "UIParent", -100, -100)

local timePassed = 0
function loopRunner:OnUpdate(dt)
	timePassed = timePassed + dt
	if timePassed > 1000 then
		local info = X2CombatResource:GetCombatResourceInfo()
		local info2 = X2CombatResource:GetCombatResourceInfoByGroupType(info[2].groupType)
		X2Chat:DispatchChatMessage(
			CMF_SYSTEM,
			info2.resource1Current .. "/" .. info2.resource1Max .. " OR " .. info2.resource2Current
		)
		X2Chat:DispatchChatMessage(
			CMF_SYSTEM,
			"Path:" .. tostring(info[2].iconPath) .. " Grouptype: " .. tostring(info[2].groupType)
		)
		X2Chat:DispatchChatMessage(CMF_SYSTEM, "GroupID Loop: " .. tostring(info[2].groupType))
		drawIcon(
			loopRunner,
			info[2].iconPath,
			info[2].groupType,
			1000,
			650,
			info2.resource2Current, -- time (bigger part of icon)
			tostring(info2.resource1Current) .. "/" .. tostring(info2.resource1Max)
		) -- stacks (top blue)
		timePassed = 0
	end
end
loopRunner:SetHandler("OnUpdate", loopRunner.OnUpdate)

local function updateTimeOnly(fGroupId, fReadableSeconds)
	X2Chat:DispatchChatMessage(CMF_SYSTEM, "FGroupID Event: " .. tostring(fGroupId))
	local stringReadableSeconds = tostring(fReadableSeconds)
	X2Chat:DispatchChatMessage(CMF_SYSTEM, "Ftime: " .. stringReadableSeconds)
	drawableNmyLabels[fGroupId]:SetText(stringReadableSeconds)
end

local function stackTimer(groupId, nowTime, showMe)
	local readableSeconds = math.floor((nowTime / 1000) + 0.5)
	local groupId = groupId - 2
	X2Chat:DispatchChatMessage(CMF_SYSTEM, "GroupID Event: " .. tostring(groupId))
	X2Chat:DispatchChatMessage(CMF_SYSTEM, "time: " .. dump(readableSeconds))
	X2Chat:DispatchChatMessage(CMF_SYSTEM, "showMe: " .. dump(showMe))
	updateTimeOnly(groupId, readableSeconds)
end
UIParent:SetEventHandler(UIEVENT_TYPE.REFRESH_COMBAT_RESOURCE_UPDATE_TIME, stackTimer)
