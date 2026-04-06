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

ADDON:ImportAPI(API_TYPE.CHAT.id)
ADDON:ImportAPI(API_TYPE.UNIT.id)


local refreshForce = CreateEmptyWindow("refreshForce", "UIParent")
      refreshForce:Show(true)
      refreshForce:AddAnchor("TOPLEFT", "UIParent", 15, 15)
local timeTotal = 0
local lblDamage = refreshForce:CreateChildWidget("label", "lblDamage", 0, true)
lblDamage:Show(true)
lblDamage:EnablePick(false)
lblDamage.style:SetColor(1, 1, 1, 1.0)
lblDamage.style:SetFontSize(20)
lblDamage.style:SetOutline(true)
lblDamage.style:SetAlign(ALIGN_RIGHT)
lblDamage:AddAnchor("LEFT",refreshForce,0,0)
lblDamage:SetText("")
      --Damage * (1.05 + (0.01 * meters)) up to 100 meters
function refreshForce:OnUpdate(dt)
    local nScrX_Tar, nScrY_Tar, nScrZ_Tar = X2Unit:GetUnitScreenPosition("target")
    if nScrX_Tar == nil or nScrY_Tar == nil or nScrZ_Tar == nil then
        refreshForce:AddAnchor("TOPLEFT", "UIParent", 5000, 5000) 
    elseif nScrZ_Tar > 0 then
        local x = math.floor(0.5+nScrX_Tar)
        local y = math.floor(0.5+nScrY_Tar)
        refreshForce:AddAnchor("TOPLEFT", "UIParent", x-50, y+10)
    end
    timeTotal = timeTotal + dt
    if timeTotal >= 50 then
        timeTotal = 0
        local xP, yP, zP = X2Unit:GetUnitWorldPositionByTarget("player", false)
        local xT, yT, zT = X2Unit:GetUnitWorldPositionByTarget("target", false)
        if zT ~= nil then
            local zDistance = zP - zT
            local dmgMultiplier = 1.05
            if zDistance > 100 then
                zDistance = 100
            end
            if zDistance < 1 then
                zDistance = 0
                dmgMultiplier = 1
            end
            --X2Chat:DispatchChatMessage(CMF_SYSTEM, tostring(zDistance))
            local totalDamage = math.floor(100 * (dmgMultiplier + (0.01 * zDistance)) + 0.5)
            --local totalDamage = 100 * (dmgMultiplier + (0.01 * zDistance))
            lblDamage:SetText(tostring(totalDamage))
           -- X2Chat:DispatchChatMessage(CMF_SYSTEM, tostring(totalDamage))
        end
    end
           --X2Chat:DispatchChatMessage(CMF_SYSTEM, string.format("Horizspeed: %.2f \nvelZ: %.2f", horizontalSpeed, velZ))
end
refreshForce:SetHandler("OnUpdate", refreshForce.OnUpdate)