-------------- Original Author: Strawberry --------------
----------------- Discord: exec_noir --------------------
if API_TYPE == nil then
    ADDON:ImportAPI(8)
    X2Chat:DispatchChatMessage(CMF_SYSTEM, "Globals folder not found. Please install it at https://github.com/Schiz-n/ArcheRage-addons/tree/master/globals")
    return
end
ADDON:ImportObject(OBJECT_TYPE.TEXT_STYLE)
ADDON:ImportObject(OBJECT_TYPE.BUTTON)
ADDON:ImportObject(OBJECT_TYPE.DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.NINE_PART_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.COLOR_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.LABEL)
ADDON:ImportObject(OBJECT_TYPE.ICON_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.IMAGE_DRAWABLE)

ADDON:ImportAPI(API_TYPE.OPTION.id)
ADDON:ImportAPI(API_TYPE.CHAT.id)

local contentState = 1
local okButton = nil
local toggleButton = nil
local function CreateButton(portalOption)
    if okButton ~= nil then
        return
    end

    okButton = UIParent:CreateWidget("button", "exampleButton", "UIParent", "")
    okButton:SetText("Portal")
    okButton:SetStyle("text_default")

    SetButtonFontOneColor(okButton, {0.9, 0.333, 0.333, 1})
    if portalOption == 0 then
        SetButtonFontOneColor(okButton,  {0.348, 0.609, 0.370, 1})
        X2Chat:DispatchChatMessage(CMF_SYSTEM, "Using all portals.")
    else
        X2Chat:DispatchChatMessage(CMF_SYSTEM, "Using only your portals.")
    end
    -- okButton:SetUILayer("game")
    okButton:AddAnchor("BOTTOM", "UIParent", 700, -300)
    okButton:Show(true)
    okButton:EnableDrag(true)

    function okButton:OnDragStart()
        self:StartMoving()
        self.moving = true
    end
    okButton:SetHandler("OnDragStart", okButton.OnDragStart)

    function okButton:OnDragStop()
        self:StopMovingOrSizing()
        self.moving = false
    end
    okButton:SetHandler("OnDragStop", okButton.OnDragStop)

    function okButton:OnClick()
        local portalOption = X2Option:GetOptionItemValue(OIT_AUTO_USE_ONLY_MY_PORTAL)
        if portalOption == 1 then
            SetButtonFontOneColor(okButton,  {0.348, 0.609, 0.370, 1})
            X2Chat:DispatchChatMessage(CMF_SYSTEM, "Using ALL portals.")
            X2Option:SetItemFloatValue(OIT_AUTO_USE_ONLY_MY_PORTAL, 0)
        else
            SetButtonFontOneColor(okButton, {0.9, 0.333, 0.333, 1})
            X2Chat:DispatchChatMessage(CMF_SYSTEM, "Using ONLY YOUR portals.")
            X2Option:SetItemFloatValue(OIT_AUTO_USE_ONLY_MY_PORTAL, 1)
        end
        --ApplyButt-onSkin(okButton, buttonskin) fuck
    end
    okButton:SetHandler("OnClick", okButton.OnClick)

end


--optional: force to 1 on login
--X2Option:SetItemFloatValue(OPTION_ITEM_USE_ONLY_MY_PORTAL, 1)
local portalOption = X2Option:GetOptionItemValue(OIT_AUTO_USE_ONLY_MY_PORTAL)
CreateButton(portalOption)