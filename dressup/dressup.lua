-------------- Original Author: Strawberry --------------
----------------- Discord: exec_noir --------------------
if API_TYPE == nil then
    ADDON:ImportAPI(8)
    X2Chat:DispatchChatMessage(CMF_SYSTEM, "Globals folder not found. Please install it at https://github.com/Schiz-n/ArcheRage-addons/tree/master/globals")
    return
end
---------------- Thanks to Michaelqt --------------------
ADDON:ImportObject(OBJECT_TYPE.TEXT_STYLE)
ADDON:ImportObject(OBJECT_TYPE.BUTTON)
ADDON:ImportObject(OBJECT_TYPE.DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.NINE_PART_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.COLOR_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.WINDOW)
ADDON:ImportObject(OBJECT_TYPE.ICON_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.IMAGE_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.MODEL_VIEW)

ADDON:ImportAPI(API_TYPE.CHAT.id)
ADDON:ImportAPI(API_TYPE.UNIT.id)
ADDON:ImportAPI(API_TYPE.ITEM.id)
ADDON:ImportAPI(API_TYPE.EQUIPMENT.id)


local dressUpWindow = CreateEmptyWindow("dressUpWindow", "UIParent")
      dressUpWindow:AddAnchor("RIGHT", -1000,0)
local turnLeft = false
local turnRight = false
local zoomOutBool = false
local zoomInBool = false
local fov = 30
local RELAX_ANIMATION_NAME = "fist_ba_relaxed_rand_idle"

local color = {}
    color.normal    = UIParent:GetFontColor("btn_df")
    color.highlight = UIParent:GetFontColor("btn_ov")
    color.pushed    = UIParent:GetFontColor("btn_on")
    color.disabled  = UIParent:GetFontColor("btn_dis")

local buttonskin = {
        drawableType = "ninePart",
        path = "ui/common/default.dds",
        coordsKey = "btn",
        autoResize = true,
        fontColor = color,
        fontInset = {
            left = 11,
            right = 11,
            top = 0,
            bottom = 0,
        },
    }
function dressUpWindow:OnUpdate(dt)
    local modelViewer = dressUpWindow.modelViewer
    if turnLeft == true then 
        modelViewer:AddRotation(200 * dt / 1000)
    elseif turnRight == true then 
        modelViewer:AddRotation(-200 * dt / 1000)
      elseif zoomInBool == true then
          modelViewer:SetFov(fov)
          fov = fov - 0.3
      elseif zoomOutBool == true then
          modelViewer:SetFov(fov)
          fov = fov + 0.3
    end 
end 

local controlBarYOffset = 0
local modelViewer = nil
      modelViewer = dressUpWindow:CreateChildWidget("modelview", "modelViewer", 0, true)
local background = modelViewer:CreateColorDrawable(0, 0, 0, 0.1, "background")
      background:AddAnchor("TOPLEFT", modelViewer, 0, 0)
      background:AddAnchor("BOTTOMRIGHT", modelViewer, 0, 0)


local function CreateButton(parent, name, anchor, xOffset, yOffset, text, onMouseDown, onMouseUp, onLeave, onClick)
    local button = parent:CreateChildWidget("button", name, 0, true)
    button:AddAnchor(anchor, parent, xOffset, yOffset)
    button:SetStyle("text_default")
    --A-pplyButtonSkin(button, buttonskin)
    button:SetExtent(35, 35)
    button:SetText(text)
    button:SetWidth(35)
    if onMouseDown then
        function button:OnMouseDown(arg)
            onMouseDown()
        end
        button:SetHandler("OnMouseDown", button.OnMouseDown)
    end
    if onMouseUp then
        function button:OnMouseUp(arg)
            onMouseUp()
        end
        button:SetHandler("OnMouseUp", button.OnMouseUp)
    end
    if onLeave then
        function button:OnLeave(arg)
            onLeave()
        end
        button:SetHandler("OnLeave", button.OnLeave)
    end
    if onClick then
        function button:OnClick(arg)
            onClick()
        end
        button:SetHandler("OnClick", button.OnClick)
    end
    return button
end

local showCostume = false

local rotateRight = CreateButton(modelViewer, "rotateRight", "LEFT", 5, controlBarYOffset, "L",
    function() turnRight = true end,
    function() turnRight = false end,
    function() turnRight = false end)

local rotateLeft = CreateButton(modelViewer, "rotateLeft", "RIGHT", -5, controlBarYOffset, "R",
    function() turnLeft = true end,
    function() turnLeft = false end,
    function() turnLeft = false end)

local ZoomInButt = CreateButton(modelViewer, "ZoomInButt", "LEFT", 5, controlBarYOffset - 170, "+",
    function() zoomInBool = true end,
    function() zoomInBool = false end,
    function() zoomInBool = false end)

local ZoomOutButt = CreateButton(modelViewer, "ZoomOutButt", "LEFT", 5, controlBarYOffset - 135, "-",
    function() zoomOutBool = true end,
    function() zoomOutBool = false end,
    function() zoomOutBool = false end)

local closeViewer = CreateButton(modelViewer, "closeViewer", "TOPRIGHT", -5, controlBarYOffset, "X",
    nil, nil, nil,
    function() dressUpWindow:Show(false) end)

local GoUp = CreateButton(modelViewer, "GoUp", "TOPRIGHT", -90, controlBarYOffset, "^",
    nil, nil, nil,
    function() modelViewer:AdjustCameraPos(0, 0, -0.1) end)

local GoDown = CreateButton(modelViewer, "GoDown", "TOPRIGHT", -90, controlBarYOffset+60, "v",
    nil, nil, nil,
    function() modelViewer:AdjustCameraPos(0, 0, 0.1) end)

local Zoomer2 = CreateButton(modelViewer, "Zoomer2", "TOPRIGHT", -60, controlBarYOffset+30, ">",
    nil, nil, nil,
    function() modelViewer:AdjustCameraPos(-0.1, 0, 0) end)

local Zoomer3 = CreateButton(modelViewer, "Zoomer3", "TOPRIGHT", -120, controlBarYOffset+30, "<",
    nil, nil, nil,
    function() modelViewer:AdjustCameraPos(0.1, 0, 0) end)

local StopButton = CreateButton(modelViewer, "StopButton", "TOPRIGHT", -220, controlBarYOffset, "S",
    nil, nil, nil,
    function() modelViewer:StopAnimation() end)

local Cookbutton = CreateButton(modelViewer, "Cookbutton", "TOPRIGHT", -280, controlBarYOffset, "1",
    nil, nil, nil,
    function() modelViewer:SetBeautyShopMode(true) end)
local Cookbutton2 = CreateButton(modelViewer, "Cookbutton2", "TOPRIGHT", -320, controlBarYOffset, "2",
    nil, nil, nil,
    function() modelViewer:SetIngameShopCamMode(true) end)
local Cookbutton3 = CreateButton(modelViewer, "Cookbutton3", "TOPRIGHT", -360, controlBarYOffset, "3",
    nil, nil, nil,
    function() modelViewer:SetDisableColorGrading(true) end)


--local resetButton = CreateButton(modelViewer, "resetButton", "TOPLEFT", 5, controlBarYOffset + 15, "Reset",
--    nil, nil, nil,
--    function() 
--      modelViewer:ApplyModel() 
--    end)

--local showHelm = CreateButton(modelViewer, "showHelm", "TOPLEFT", 5, controlBarYOffset + 50, "Helm",
--    nil, nil, nil,
--    function() modelViewer:ApplyModel() end)
--
--local alt = CreateButton(modelViewer, "alt", "TOPLEFT", 5, controlBarYOffset + 85, "alt",
--    nil, nil, nil,
--    function() 
--      modelViewer:SetSmile(true)
--      X2Chat:DispatchChatMessage(CMF_SYSTEM, tostring("blu")) 
--    end)

local costume = CreateButton(modelViewer, "costume", "TOPLEFT", 5, controlBarYOffset + 120, "cos",
    nil, nil, nil,
    function() 
      modelViewer:ToggleCosplayEquipped(showCostume)
      showCostume = not showCostume
    end)



local dressUpModelViewerX = 800
local dressUpModelViewerY = 800
local thenumber = 4096
local function IniitalizeDressup()
    modelViewer:SetExtent(dressUpModelViewerX, dressUpModelViewerY)
    modelViewer:SetTextureSize(thenumber, thenumber)
    local width = dressUpModelViewerX * thenumber / dressUpModelViewerY
    modelViewer:SetModelViewExtent(width, thenumber)
    modelViewer:SetModelViewCoords((thenumber - width) / 8, 0, width/4, thenumber/4)
    modelViewer:AddAnchor("LEFT", dressUpWindow, 5, 20)
    modelViewer:AdjustCameraPos(0, 0, 0)
    dressUpWindow:Show(false)
end


function modelViewer:OnWheelDown()
    --X2Chat:DispatchChatMessage(CMF_SYSTEM, "down")
    fov = fov + 3
    modelViewer:SetFov(fov)
    --modelViewer:ZoomInOutBeautyShop(1)
end
modelViewer:SetHandler("OnWheelDown", modelViewer.OnWheelDown)
function modelViewer:OnWheelUp()
    --X2Chat:DispatchChatMessage(CMF_SYSTEM, "up")
    fov = fov - 3
    modelViewer:SetFov(fov)
    --modelViewer:ZoomInOutBeautyShop(-1)
end
modelViewer:SetHandler("OnWheelUp", modelViewer.OnWheelUp)

IniitalizeDressup()

---------- Chat listener -----------
local chatAggroEventListenerEvents = {
    CHAT_MESSAGE = function(channel, relation, name, message, info)
        if name == X2Unit:UnitName("player") then
            local firstWord = string.match(message, "/%w+")
            local secondWord = string.match(message, "/[%w_]+%s+([^%s]+)")
            if firstWord == "/dressup" then
                dressUpWindow:Show(true)
                modelViewer:Init("player", true)
                modelViewer:PlayAnimation(RELAX_ANIMATION_NAME, true)
            elseif firstWord == "/closedressup" then
                dressUpWindow:Show(false)
            elseif firstWord == "/animate" then
                if secondWord ~= nil then
                    X2Chat:DispatchChatMessage(CMF_SYSTEM, tostring(secondWord))
                    modelViewer:Init("player", true)
                    modelViewer:PlayAnimation(tostring(secondWord), true)
                else
                    X2Chat:DispatchChatMessage(CMF_SYSTEM, "/animate <animationname>")
                end
            elseif firstWord == "/equipbase" then
                if secondWord ~= nil then
                    local equipThisItem = secondWord
                    if secondWord:sub(1,1) == "|" then
                      equipThisItem = secondWord:match("i(%d+),")
                    end
                    dressUpWindow:Show(true)
                    modelViewer:Init("player", true)
                    modelViewer:EquipItem(tonumber(equipThisItem))
                    modelViewer:PlayAnimation(RELAX_ANIMATION_NAME, true)
                else
                    X2Chat:DispatchChatMessage(CMF_SYSTEM, "/equipbase <itemid>")
                end
            elseif firstWord == "/equip" then
                if secondWord ~= nil then
                    local linkText = secondWord:match(".*,([^,;]+);")
                    local itemInfo = X2Item:InfoFromLink(linkText, "auction")
                    local alembicSkin = itemInfo.lookType
                    dressUpWindow:Show(true)
                    modelViewer:Init("player", true)
                    modelViewer:EquipItem(tonumber(alembicSkin))
                    modelViewer:PlayAnimation(RELAX_ANIMATION_NAME, true)
                else
                    X2Chat:DispatchChatMessage(CMF_SYSTEM, "/equip <itemid>")
                end
            end
        end
    end
}

--make chat listener
local chatEventListenerAggro = CreateEmptyWindow("chatEventListenerAggro", "UIParent")
chatEventListenerAggro:Show(false)
chatEventListenerAggro:SetHandler("OnEvent", function(this, event, ...)
  chatAggroEventListenerEvents[event](...)
end)
local RegistUIEvent = function(window, eventTable)
  for key, _ in pairs(eventTable) do
    window:RegisterEvent(key)
  end
end
RegistUIEvent(chatEventListenerAggro, chatAggroEventListenerEvents)

dressUpWindow:SetHandler("OnUpdate", dressUpWindow.OnUpdate)
