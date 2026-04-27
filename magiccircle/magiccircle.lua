-------------- Original Author: Strawberry --------------
----------------- Discord: exec.noir --------------------
ADDON:ImportObject(OBJECT_TYPE.TEXT_STYLE)
ADDON:ImportObject(OBJECT_TYPE.BUTTON)
ADDON:ImportObject(OBJECT_TYPE.DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.NINE_PART_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.COLOR_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.WINDOW)
ADDON:ImportObject(OBJECT_TYPE.LABEL)
ADDON:ImportObject(OBJECT_TYPE.ICON_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.IMAGE_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.STATUS_BAR)
ADDON:ImportObject(OBJECT_TYPE.EFFECT_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.TEXTBOX)

ADDON:ImportAPI(API_TYPE.UNIT.id)

local MAGIC_CIRCLE_BUFF_IDS = {
    [19037] = true,
    [25850] = true,
    [25851] = true
}
local MAGIC_CIRCLE_MAX_RANGE = 29.9
local MAGIC_CIRCLE_WARNING_RANGE = 25
local offsetx = 200
local offsety = -200

local trackerWindow = CreateEmptyWindow("magicCircleTracker", "UIParent")
trackerWindow:Show(true)
trackerWindow:AddAnchor("TOPLEFT", "UIParent", 0, 0)

local distanceLabel = trackerWindow:CreateChildWidget("label", "magicCircleDistanceLabel", 0, true)
distanceLabel:Show(false)
distanceLabel:EnablePick(false)
distanceLabel.style:SetFontSize(20)
distanceLabel.style:SetOutline(true)
distanceLabel.style:SetAlign(ALIGN_LEFT)
distanceLabel:AddAnchor("LEFT", trackerWindow, (UIParent:GetScreenWidth() / 2) + offsetx, (UIParent:GetScreenHeight() / 2) + offsety)
distanceLabel:SetText("")

local buffActiveFlag = 0
local startPos = nil

local function IsMagicCircleBuffActive()
    local buffCount = X2Unit:UnitBuffCount("player")
    for i = 1, buffCount do
        local buff = X2Unit:UnitBuff("player", i)
        local buffId = buff ~= nil and tonumber(buff["buff_id"]) or nil
        if buffId ~= nil and MAGIC_CIRCLE_BUFF_IDS[buffId] then
            return 1
        end
    end
    return 0
end

function trackerWindow:OnUpdate(dt)
    local isActiveNow = IsMagicCircleBuffActive()

    if isActiveNow == 1 and buffActiveFlag == 0 then
        local x, y, z = X2Unit:GetUnitWorldPositionByTarget("player", false)
        if x ~= nil and y ~= nil and z ~= nil then
            startPos = { x = x, y = y, z = z }
        end
    elseif isActiveNow == 0 then
        startPos = nil
        distanceLabel:Show(false)
    end

    buffActiveFlag = isActiveNow

    if buffActiveFlag == 1 and startPos ~= nil then
        local x, y, z = X2Unit:GetUnitWorldPositionByTarget("player", false)
        if x ~= nil and y ~= nil and z ~= nil then
            local dx = x - startPos.x
            local dy = y - startPos.y
            local dz = z - startPos.z
            local distance = math.sqrt((dx * dx) + (dy * dy) + (dz * dz))

            if distance >= MAGIC_CIRCLE_MAX_RANGE then
                distanceLabel.style:SetColor(1, 0, 0, 1.0)
            elseif distance >= MAGIC_CIRCLE_WARNING_RANGE then
                distanceLabel.style:SetColor(1, 0.55, 0, 1.0)
            else
                distanceLabel.style:SetColor(1, 1, 1, 1.0)
            end

            distanceLabel:SetText(string.format("%.1fm", distance))
            distanceLabel:Show(true)
        end
    end
end

trackerWindow:SetHandler("OnUpdate", trackerWindow.OnUpdate)
