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
ADDON:ImportObject(OBJECT_TYPE.EDITBOX_MULTILINE)
ADDON:ImportObject(OBJECT_TYPE.MESSAGE)
ADDON:ImportObject(OBJECT_TYPE.TAB)
ADDON:ImportObject(OBJECT_TYPE.X2_EDITBOX)

ADDON:ImportAPI(API_TYPE.SOUND.id)
-- window
musicWindow = CreateEmptyWindow("musicWindow", "UIParent")
musicWindow:SetExtent(400, 30)
musicWindow:AddAnchor("LEFT", "UIParent", "LEFT", 650, -420)
musicWindow:SetCloseOnEscape(false)
local background = musicWindow:CreateColorDrawable(0, 0, 0, 0.5, "background")
background:AddAnchor("TOPLEFT", musicWindow, 0, 0)
background:AddAnchor("BOTTOMRIGHT", musicWindow, 0, 0)
local musicEdit = nil
musicEdit = musicWindow:CreateChildWidget("editboxmultiline", "musicEdit", 0, true)
musicEdit:SetInset(5, 9, 25, 8)
musicEdit:SetWidth(musicWindow:GetWidth())
musicEdit:SetHeight(musicWindow:GetHeight())
musicEdit:AddAnchor("BOTTOM", musicWindow, 0, 0)
musicWindow:Show(true)

local function OnEnterPressed()
	local someText = musicEdit:GetText()
	someText = someText:match("^%s*(.-)%s*$")
	local wordOne, wordTwo = someText:match("(%S+)%s+(%S+)")
	if someText ~= nil and wordTwo == nil then
		X2Sound:PlayUISound(someText, true)
	end

	musicEdit:Clear()
	musicEdit:SetText(" ")
end
musicEdit:SetHandler("OnEnterPressed", OnEnterPressed)
