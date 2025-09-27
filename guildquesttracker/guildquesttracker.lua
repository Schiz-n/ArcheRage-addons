-------------- Original Author: Strawberry --------------
----------------- Discord: exec_noir --------------------
if API_TYPE == nil then
    ADDON:ImportAPI(8)
    X2Chat:DispatchChatMessage(CMF_SYSTEM, "Globals folder not found. Please install it at https://github.com/Schiz-n/ArcheRage-addons/tree/master/globals")
    return
end

ADDON:ImportObject(OBJECT_TYPE.TEXT_STYLE)
ADDON:ImportObject(OBJECT_TYPE.WINDOW)
ADDON:ImportObject(OBJECT_TYPE.LABEL)

ADDON:ImportAPI(API_TYPE.QUEST.id)

local function isQuestOpen(questId)
  local qcount = X2Quest:GetActiveQuestListCount()
  for i = 1, qcount do
      local qtype = X2Quest:GetActiveQuestType(i)
      if qtype == questId then
        return true
      end
  end
  return false
end

local questChecker = CreateEmptyWindow("questChecker", "UIParent")
      questChecker:Show(true)
      questChecker:AddAnchor("TOPLEFT", "UIParent", -100, -100)
local lblNoQuest = questChecker:CreateChildWidget("label", "lblNoQuest", 10, true)
      lblNoQuest:Show(false)
      lblNoQuest:EnablePick(false)
      lblNoQuest.style:SetColor(0, 0.7, 0.7, 1.0)
      lblNoQuest.style:SetFontSize(50)
      lblNoQuest.style:SetOutline(true)
      lblNoQuest.style:SetAlign(ALIGN_CENTER)
      lblNoQuest:AddAnchor("CENTER", questChecker, (UIParent:GetScreenWidth()/2), (UIParent:GetScreenHeight()/3)-100)
      lblNoQuest:SetText("Guild quests")

local timePassed = 0
function questChecker:OnUpdate(dt)
    timePassed = timePassed + dt
    if timePassed > 1000 then
      local nuianQuestOne = 7736
      local haraniQuestOne = 7737
       if isQuestOpen(nuianQuestOne) or isQuestOpen(haraniQuestOne) or X2Quest:IsCompleted(nuianQuestOne) or X2Quest:IsCompleted(haraniQuestOne) then
           lblNoQuest:Show(false)
       else
           lblNoQuest:Show(true)
       end
       timePassed = 0
    end
end
questChecker:SetHandler("OnUpdate", questChecker.OnUpdate)