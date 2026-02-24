-------------- Original Author: Strawberry --------------
----------------- Discord: exec_noir --------------------
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

local frame = CreateEmptyWindow("frame", "UIParent")
frame:AddAnchor("TOPLEFT", "UIParent", 0, 0)
-- frame:SetExtent(340, 340)

-- Create an icon using iconPath
local drawableIcon = frame:CreateIconDrawable("artwork")
drawableIcon:AddAnchor("LEFT", frame, 200, 300)
--drawableIcon:AddAnchor("TOP", frame, xOffset, yOffset)
--drawableIcon:AddAnchor("TOPLEFT", "UIParent", -20, -20)
drawableIcon:SetExtent(250, 250) -- Width, height
drawableIcon:ClearAllTextures() -- Every other usage of AddTexture called this first 🤷
--    drawableIcon:AddTexture("ui/icon/icon_item_0242.dds") -- path to dds texture to load
--local coords = "0, 32, 36, 32"
--drawableIcon:AddTextureWithInfo("ui/icon/icon_item_0242.dds", "gauge_1") -- path to dds texture to load
drawableIcon:SetVisible(true)
drawableIcon:SetHeight(150)
drawableIcon:Show(true)
frame:Show(true)

local function printObjectMethods(obj)
	local mt = getmetatable(obj) -- Get the metatable of the object
	if mt then
		for k, v in pairs(mt.__index or {}) do -- Look at the __index table
			if type(v) == "function" then
				X2Chat:DispatchChatMessage(CMF_SYSTEM, k)
			end
		end
	else
		X2Chat:DispatchChatMessage(CMF_SYSTEM, "No metatable found for the object.")
	end
end

-- Usage
--printObjectMethods(drawableIcon)
