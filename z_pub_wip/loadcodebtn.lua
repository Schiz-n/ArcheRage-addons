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
ADDON:ImportAPI(API_TYPE.AUCTION.id)
ADDON:ImportAPI(API_TYPE.UNIT.id)
ADDON:ImportAPI(API_TYPE.LOCALE.id)
ADDON:ImportAPI(API_TYPE.SOUND.id)
ADDON:ImportAPI(API_TYPE.SIEGE_WEAPON.id)
ADDON:ImportAPI(API_TYPE.STORE.id)
ADDON:ImportAPI(API_TYPE.HOTKEY.id)

local testButton = CreateSimpleButton("loadtest", 700, -300)
function testButton:OnClick()
    local filePath = "../Documents/Addon/autorole/someguy.lua"
    local fileWithFunctions = io.open(filePath, "r")
    local fileAsString = fileWithFunctions:read("*a")
    fileWithFunctions:close()
    fileAsString = fileAsString:gsub("^\239\187\191", "")
    local fileFunction, err = loadstring(fileAsString)
    fileFunction()
end
testButton:SetHandler("OnClick", testButton.OnClick)


