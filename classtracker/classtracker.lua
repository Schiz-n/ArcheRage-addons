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
ADDON:ImportAPI(API_TYPE.UNIT.id)
ADDON:ImportAPI(API_TYPE.LOCALE.id)

-- Create a basic invisible window to attach icons to
local buffAnchor = CreateEmptyWindow("buffAnchor", "UIParent")
buffAnchor:Show(true)

local drawableNmyLabels = {}
local drawableIcons = {}

local roleIcons = {
	Tank = "ui/icon/icon_skill_adamant15.dds",
	Songer = "ui/icon/icon_skill_romance15.dds",
	Melee = "ui/icon/icon_skill_fight37.dds",
	Archer = "ui/icon/icon_skill_wild35.dds",
	Mage = "ui/icon/icon_skill_magic40.dds",
	Gunner = "ui/icon/icon_skill_madness07.dds",
	Malediction = "ui/icon/icon_skill_hatred25.dds",
	Dancer = "ui/icon/icon_skill_pleasure02.dds",
	Swiftblade = "ui/icon/icon_skill_assassin43.dds",
	Healer = "ui/icon/icon_skill_love01.dds",
	unknown = "ui/icon/top_question_mark.dds",
	npc = "",
}

local function initializeIcons(w)
	for role, iconPath in pairs(roleIcons) do
		local drawableIcon = w:CreateIconDrawable("artwork")
		drawableIcon:SetExtent(35, 35)
		drawableIcon:AddAnchor("LEFT", w, 0, 0)
		drawableIcon:ClearAllTextures()
		drawableIcon:AddTexture(iconPath)
		drawableIcon:SetVisible(false)
		drawableIcons[role] = drawableIcon
	end
end

initializeIcons(buffAnchor)

local function hideNonMatchingIcons(currentClassName)
	for className, drawableIcon in pairs(drawableIcons) do
		if className ~= currentClassName then
			drawableIcon:SetVisible(false)
		end
	end
end

local function drawIcon(w, iconPath, id, xOffset, yOffset, className, actualClassName)
	hideNonMatchingIcons(className)
	if drawableNmyLabels[id] ~= nil then
		if not drawableIcons[className]:IsVisible() then
			drawableIcons[className]:SetVisible(true)
			drawableNmyLabels[id]:Show(true)
		end
		drawableNmyLabels[id]:SetText(actualClassName)
		drawableIcons[className]:AddAnchor("LEFT", w, xOffset, yOffset)
		drawableNmyLabels[id]:AddAnchor("LEFT", w, xOffset, yOffset + 20)
		return
	end
	drawableIcons[className]:SetVisible(true)
	local lblDuration = w:CreateChildWidget("label", "lblDuration", 0, true)
	lblDuration:Show(true)
	lblDuration:EnablePick(false)
	lblDuration.style:SetColor(1, 1, 1, 1.0)
	lblDuration.style:SetOutline(true)
	lblDuration.style:SetAlign(ALIGN_LEFT)
	lblDuration:AddAnchor("LEFT", w, xOffset, yOffset + 20)
	lblDuration:SetText(actualClassName)
	drawableNmyLabels[id] = lblDuration
end

function buffAnchor:OnUpdate(dt)
	local nScrX_Tar, nScrY_Tar, nScrZ_Tar = X2Unit:GetUnitScreenPosition("target")
	if nScrX_Tar == nil or nScrY_Tar == nil or nScrZ_Tar == nil then
		buffAnchor:AddAnchor("TOPLEFT", "UIParent", 5000, 5000)
	elseif nScrZ_Tar > 0 then
		local x = math.floor(0.5 + nScrX_Tar)
		local y = math.floor(0.5 + nScrY_Tar)
		buffAnchor:Show(true)
		buffAnchor:Enable(true)
		buffAnchor:AddAnchor("TOPLEFT", "UIParent", x + 40, y + 10)

		local templates = X2Unit:GetTargetAbilityTemplates("target")
		local indices = {
			templates[1].index,
			templates[2].index,
			templates[3].index,
		}
		table.sort(indices)
		local keyStr = string.format("name_%d_%d_%d", indices[1], indices[2], indices[3])
		fakeClassName = nameMappings[keyStr] or "unknown"
		local name = ""
		if keyStr ~= "name_30_30_30" then
			name = X2Locale:LocalizeUiText(COMBINED_ABILITY_NAME_TEXT, keyStr, "")
			--X2Chat:DispatchChatMessage(CMF_SYSTEM, keyStr)
			--X2Chat:DispatchChatMessage(CMF_SYSTEM, name)
			if name == nil then
				name = GetUIText(COMBINED_ABILITY_NAME_TEXT, "name_9_9_9")
			end
		end
		local actualClassName = name
		if keyStr ~= "name_30_30_30" and actualClassName ~= "" then
			drawIcon(buffAnchor, iconPath, 1, 0, 0, fakeClassName, actualClassName)
		else
			if drawableNmyLabels[1] ~= nil then
				drawableNmyLabels[1]:Show(false)
			end
			hideNonMatchingIcons("npc")
		end
	end
end

buffAnchor:SetHandler("OnUpdate", buffAnchor.OnUpdate)
