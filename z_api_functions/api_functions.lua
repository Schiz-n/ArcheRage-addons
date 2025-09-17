----------------------------------------------------------------------------------------
-- ADDON
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
UR_HOSTILE
UR_NEUTRAL
UR_FRIENDLY
UCST_UNIT
UOT_TEXT_STYLE
UOT_LABEL
UOT_IMAGE_DRAWABLE
UOT_NINE_PART_DRAWABLE
UOT_EDITBOX
UOT_X2_EDITBOX
UOT_EMPTY_WIDGET
UOT_EDITBOX_MULTILINE
UOT_LISTBOX
UOT_LIST_CTRL
UOT_SLIDER
UIC_PLAYER_UNITFRAME
UIC_TARGET_UNITFRAME
UIC_RANK
UIC_RANK_LOCAL_VIEW
UIC_DYNAMIC_ACTIONBAR
UIC_MODE_ACTIONBAR
UIC_SHORTCUT_ACTIONBAR
UIC_CLIENT_DIRVEN_TITLE
UIC_CLIENT_DIRVEN_CONTENTS
UIC_CLIENT_DRIVEN_EXIT_BTN
UIC_OPTION_FRAME
UIC_SYSTEM_CONFIG_FRAME
UIC_GAME_EXIT_FRAME
UIC_QUEST_CINEMA_WND
UIC_QUEST_CINEMA_FADE_WND
UIC_MAIN_ACTION_BAR
UIC_DEATH_AND_RESURRECTION_WND
UIC_GAME_TOOLTIP_WND
UIC_AUTH_MSG_WND
UIC_CHARACTER_INFO
UIC_BAG
UIC_QUEST_LIST
UIC_QUEST_NOTIFIER
UIC_ACHIEVEMENT
UIC_SKILL
UIC_WORLDMAP
UIC_CRAFT_BOOK
UIC_CRAFT_ORDER
UIC_MAKE_CRAFT_ORDER
UIC_MY_FARM_INFO
UIC_EXPEDITION
UIC_RAID_TEAM_MANAGER
UIC_RAID_RECRUIT
UIC_FRIEND
UIC_NATION
UIC_WEB_MESSENGER
UIC_WEB_PLAY_DIARY
UIC_WEB_WIKI
UIC_WEB_HELP
UIC_SPECIALTY_INFO
UIC_TGOS
UIC_DROPDOWN_LIST
UIC_SLAVE_EQUIPMENT
UIC_TARGET_EQUIPMENT
UIC_CHECK_BOT_WND
UIC_HERO
UIC_UI_AVI
UIC_EVENT_CENTER
UIC_ITEM_GUIDE
UIC_DEV_WINDOW
UIC_CREATE_EXPEDITION
UIC_RENAME_EXPEDITION
UIC_EXPEDITION_GUILD_FUNCTION_CHANGE_BUFF
UIC_RECOVER_EXP
UIC_TRADER
UIC_ABILITY_CHANGE
UIC_AUCTION
UIC_BANK
UIC_GUILD_BANK
UIC_STORE
UIC_RESIDENT_TOWNHALL
UIC_SPECIALTY_BUY
UIC_SPECIALTY_SELL
UIC_TRADE_GOOD_PRICE_INFORMATION
UIC_APPELLATION
UIC_BLESS_UTHSTIN
UIC_EQUIP_SLOT_REINFORCE_TAB
UIC_LOOT_GACHA
UIC_ENCHANT
UIC_LOOK_CONVERT
UIC_ITEM_REPAIR
UIC_ITEM_LOCK
UIC_EXPAND_INVENTORY
UIC_INGAME_SHOP
UIC_BEAUTY_SHOP
UIC_PREMIUM
UIC_SCHEDULE_ITEM
UIC_REQUEST_BATTLEFIELD
UIC_COMMERCIAL_MAIL
UIC_MAIL
UIC_ADDON
UIC_CHALLENGE
UIC_TRADE
UIC_WHISPER
UIC_PARTY
UIC_FAMILY
UIC_RAID
UIC_EXPAND_JOB
UIC_SELECT_CHARACTER
UIC_EXIT_GAME
UIC_PLAYER_EQUIPMENT
UIC_ACTABILITY
UIC_FOLLOW
UIC_REPORT_BAD_USER
UIC_MARKET_PRICE
UIC_WEB_PLAY_DIARY_INSTANCE
UIC_SET_SECOND_PASSWORD
UIC_INTERACT_SECOND_PASSWORD
UIC_CLEAR_SECOND_PASSWORD
UIC_CHECK_SECOND_PASSWORD
UIC_NOTIFY_ACTABILITY
UIC_NOTIFY_SKILL
UIC_EQUIP_SLOT_REINFORCE
UIC_MEGAPHONE
UIC_SQUAD
UIC_SQUAD_MINIVIEW
UIC_COFFER
UIC_LOCAL_DEVELOPMENT_BOARD
UIC_HERO_ELECTION
UIC_HIDDEN_QUEST
UIC_BUTLER_INFO
ZST_INVALID
ZST_CONQUEST_WAR
UIC_SIEGE_RAID_REGISTER_WND
UIC_SIEGE_RAID_TEAM_MEMBER_LIST_WND
UIC_RETURN_ACCOUNT_REWARD_WND
UIC_CHRONICLE_BOOK_WND
UIC_FORCE_ATTACK
UIC_ROSTER_MANAGER_WND
UIC_CHARACTER_INFO_VISUAL_RACE
UIC_CHANGE_VISUAL_RACE
UIC_STABLER
UIC_COMMUNITY
UIC_OPTIMIZATION
UIC_ENTER_SECOND_PASSWORD
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
ImportAPI(apiType)
ImportObject(objectType)
RegisterContentWidget(uiCategory)
RegisterContentTriggerFunc(uiCategory)
GetContent(uiCategory)
GetContentMainScriptPosVis(uiCategory)
ShowContent(uiCategory, arg)
ToggleContent(uiCategory)
GetAddonInfos()
SetAddonEnable(name, enable)
SaveAddonInfos()
FireAddon(name)
ReloadAddon(name)
ChatLog(logMessage)
AddEscMenuButton(categoryId, uiContentType, iconKey, name)
GetName()
LoadData(key)
SaveData(key, table)
ClearData(key)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetFeatureset()
ConnectToServer(serverIP, userId, password)
ReturnToLoginStage()
SendOtpNumber(numStr)
SendPcCertNumber(numStr)
SendSecureCardNumber(ValueStr)
RequestJoin()
RequestFindId()
RequestFindPassword()
GetCurrentWorldId()
GetRaces()
GetRaceCongestions()
GetAimPos()
GetAimLevel()
UnBoardingTransfer()
GetDynamicActionCount()
GetDynamicActionSkill(idx)
ExecuteDynamicAction(idx)
IsDynamicActionSkillToggled(idx)
GetBodyItemCategoryCount()
GetBodyItemCountByCategory(category, race, gender)
GetBodyItemName(category, index, race, gender)
GetTargetCombatRelationship()
GetTargetFactionRelationship()
IsStablerNpc()
RepairPetItems()
GetTotalRepairsForPetItems()
IsRepairmanNpc()
RepairSlaveItems()
GetTotalRepairsForSlaveItems()
RollDice(maxFaces)
IsWebEnable()
GetWebWidgetName()
SendNewsCastByChat(text)
SendPlayDiaryByChat(text)
GetDoodadInfoById(id)
StopChatBubble(qType)
FastForwardQuestChat(bubbleId)
FastBackwardQuestChat(bubbleId)
IsFirstQuestChat(bubbleId)
HasNextQuestChat(bubbleId)
GetQuestChatBubbleNextSpeech(bubbleId, checkTalker)
AdjustQuestChatBubbleAutoFireEnd(bubbleId)
FastBackwardQuestChatByForceSkip()
GetCharacterUiData(key)
SetCharacterUiData(key, table)
ClearCharacterUiData(key)
GetQuestNotifierListUiData()
SetQuestNotifierListUiData(table)
GetQuestContextStateValuesUiData()
SetQuestContextStateValuesUiData(table)
GetAutoToggleSlaveEquipmentUiData()
SetAutoToggleSlaveEquipmentUiData(autoToggle)
GetPortalSortUiData(tabName)
SetPortalSortUiData(tabName, table)
GetRoadmapOptionUiData()
SetRoadmapOptionUiData(table)
GetWorldmapDefaultExpansionLevel()
SetWorldmapDefaultExpansionLevel(level)
ConvertUnitId(npcType)
WidgetClosedByEsc(windowId)
GetCombatResourceUiData()
SetCombatResourceUiData(isOpen)
GetCandidateList(idx)
GetCandidateOnceRetrieveCount()
SetCandidateOnceRetrieveCount(count)
GetCandidateCount()
GetCandidateSelectedIdx()
GetCandidateSelectedIdxOnCurrentPage()
GetCandidatePageStartIdx()
IsEnteredWorld()
IsInClientDrivenZone()
IsEnableSkipClientDriven()
RequestEndClientDrivenIndun()
GetAggroTable(type)
GetCommonFarmInfo(commonFarmType)
GetFarmGorupInfo(farmGroupType)
GetFarmGroupDoodadList(farmGroupType)
RequestRuntimeCommonFarmDoodadInfo()
GetRuntimeCommonFarmDoodadsInfo(farmGroupType)
GetRuntimeCommonFarmDoodadCount(farmGroupType)
GetFarmGroups()
CancelEscape()
GetSystemDungeonStateInfo()
GetSystemDungeonName()
SystemDungeonStateClear()
EnterSystemDungeon(instId)
GetInstanceIndex()
IsExistFileInAFS(name)
NotifyQuestDirectingModeUpdate(prev, next, confirm)
GetImageTextCoords(fontSet, size, key)
SetClipboardText(text)
GetHpBarSplitColors()
GetTipOfDays()
GetRoadMapUiData()
SetRoadMapUiData(isOpen)
GetEscMenuCategories()
GetHudRightIconMenus()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- Console
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetAttribute(attr)
ExecuteString(str)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetAttribute(attr)
ExecuteString(str)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- UI
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
UM_PC_NAME
UM_PC_RACE
UM_PC_GENDER
UM_PC_CLASS
UM_ZONE_NAME
UM_SUB_ZONE_NAME
UM_AREA_SPHERE
UM_NPC_NAME
UM_NPC_GROUP_NAME
UM_DOODAD_NAME
UM_ITEM_NAME
UM_SOURCE_NAME
UM_TARGET_NAME
UM_SPECIFY_TARGET_NAME
UM_QUEST_NAME
UM_EXPEDITION_NAME_BY_ZONEGROUP
UM_EXPEDITION_LEADER_NAME_BY_ZONEGROUP
UM_YEAR
UM_MONTH
UM_DAY
UM_HOUR
UM_MINUTE
UM_SECOND
UM_ACHIEVEMENT_NAME
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
CreateWidget()
GetScreenWidth()
GetScreenHeight()
GetVirtualMemoryStats()
GetCurrentDP()
GetCurrentPolyCount()
IsDX11Supported()
IsRenderThreadSupported()
GetFrameTime()
GetFrameRate()
GetViewCameraPos()
GetViewCameraDir()
GetViewCameraAngles()
GetUIScale()
SetUIScale(scale, immediatlyeApply)
SetViewCameraFov(fov)
SetViewCameraPos(pos)
SetViewCameraDir(dir)
SetViewCameraAngles(angles)
GetViewCameraFov()
IsPointVisible(point)
GetEntityByName(sEntityName)
SetUseInsertComma(use)
SetEventHandler(eventName, handler)
ReleaseEventHandler(eventName, handler)
GetUIStamp(key)
GetCurrentTimeStamp()
GetAccountUITimeStamp(key)
GetCharacterTodayPlayedTimeStamp()
GetServerTimeTable()
GetTextureKeyData(filename)
GetTextureData(filename, infoKey)
GetFontColor(key)
GetEtcValue(key)
GetUIBound(key)
SetUIBound(key, table)
ClearUIBound(key)
GetPermission(category)
InitFontSize()
GetId()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetCursorPosition()
GetCursorWidget()
Log()
DevLog()
Warning()
Error()
SetUIStamp(key, stamp)
SetAccountUITimeStamp(key)
SetCharacterTodayPlayedTimeStamp()
CheckTextureToolFileOpen()
GetSmoothPing()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Ability
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
SBC_NONE
SBC_ATTACK
SBC_GENERAL
SBC_JOB
SBC_EMOTION
ABILITY_GENERAL
ABILITY_MADNESS
ABILITY_MAX
RAC_INVALID
RAC_FIRST
RAC_SECOND
BIK_DESCRIPTION
BIK_RUNTIME_MINE
BIK_RUNTIME_DURATION
BIK_RUNTIME_TIMELEFT
BIK_RUNTIME_STACK
BIK_RUNTIME_ALL
MAX_ABILITY_SET_SLOTS
INVALID_ABILITY_KIND
ACTIVE_SKILL_1
ACTIVE_SKILL_2
ACTIVE_SKILL_3
PASSIVE_SKILL_1
PASSIVE_SKILL_2
PASSIVE_SKILL_3
ATTACK_SKILL
GENERAL_SKILL
JOB_SKILL
EMOTION_SKILL
SPECIAL_ACTIVE_SKILL
SPECIAL_PASSIVE_SKILL
SPECIAL_ABILITY_MUTATION_SKILL
SAT_NONE
SAT_ACTIVE
SAT_NONACTIVE
SAT_HIDE
ABILITY_ACTIVATION_LEVEL_1
ABILITY_ACTIVATION_LEVEL_2
ABILITY_ACTIVATION_LEVEL_3
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetBuffTooltip(buffType, itemLevel)
GetAllMyActabilityInfos()
IsActiveAbility(index)
GetActiveAbility()
GetMyActabilityInfo(actAbilityGroupType)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
IsSkillTrainer()
GetNumSkills()
GetNumSkillsByAbility(ability)
GetSpellBookSkillByAbility(ability, skillIndex)
GetAbilityStr(ability)
GetSkillPoint()
GetAbilitySkillReqPoint()
GetSkillPointInSavedSkillSet(index)
GetBuffInfo(ability, index)
AskResetSkills(abilityIdx)
ResetSkills(index)
GetResetSkillsCost(index)
SwapAbility(oldAbility, newAbility)
CanBuyAbilityChange()
GetAbilityChangeCost()
GetAbilitySetChangeCost()
NumActiveAbility()
GetActiveAbilityForSkillAlert()
GetAbilityInfo(abilIndex)
GetAllCombatAbility()
GetAbilityLevel(abilityStr)
GetRecommendAbility(activeAbil, category)
CancelPlayerBuff(buffId)
FindAbilityIndexForStr(abilityStr)
IsAbilityChanger()
GetRaceSkillCount(raceStr, genderStr)
GetRaceSkillType(raceStr, genderStr, index)
GetActabilityViewInfo()
GetMinActabilityPoint(actAbilityGroupType)
GetMaxActabilityPoint(actAbilityGroupType)
GetPassiveBuffInfo(passiveBuffType)
IsLanguageActability(actAbilityGroupType)
CanUpgradeExpert(actAbilityGroupType)
CanDowngradeExpert(actAbilityGroupType)
UpgradeExpert(actAbilityGroupType)
DowngradeExpert(actAbilityGroupType)
GetDownGradeItemInfo()
GetGradeInfo(grade)
GetMaxGrade()
GetActabilityCountByGrade(grade, viewGroupType)
GetRemainCountToNextGrade(grade, viewGroupType, includeCurCount)
GetActabilityViewGroupName(viewGroupType)
GetExpertMaxCount()
GetExpertCount()
GetIntensifiedExpertCount()
CanExpandExpert()
GetExpandExpertInfo()
ExpandExpert()
GetCurrencyForAbilityChange()
GetCurrencyForAbilitySetChange()
GetCurrencyForSkillsReset()
GetExpandAbilitySetSlotInfo()
RequestExpandAbilitySetSlot()
GetIndexCurrentJobInSavedJobList()
SelectAbilitySetIndex(slotIndex, curJobIndex)
SaveAbilitySet(slotIndex)
DeleteAbilitySet(slotIndex)
ActiveAbilitySet(slotIndex)
GetMaxAbilitySetCount()
GetSavedAbilitySets()
GetSavedSkillSet(slotIndex)
GetSavedPassiveBuffSet(slotIndex)
ResetAbilityView()
GetAbilitySetFreeActivationCountInfo()
SetAbilityToView(index, ability)
GetAbilitySlotCount(index)
GetAbilitySlotName(index)
LearnAbility(ability)
GetAbilitySlotActiveType(index)
GetAbilityActiveSkills(ability)
GetSynergySkills(skillType, isPrecede)
GetUnitStatusSkills(statusType)
GetUnitStatusList(ability1, ability2, ability3)
GetMutationSkillInfo()
SetSelectSpecialAbility(ability)
IsLearnedSpecialAbility(ability)
LearnSpecialAbility(ability)
GetSpecialAbilityLearnItemInfo()
IsSpecialAbility(abilityStr)
GetAbilityFromView(index)
CanHeirLevelUp()
AskHeirLevelUp()
HeirLevelUpItemInfo()
IsAcitveAbilityForHeir(ability)
IsMaxCharHeirLevel()
NeedHeirLevelUpItem()
GetCombatAbilityMax()
GetMyLangauge()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Achievement
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
AF_INVALID
AF_ALL
AF_COMPLETE
AF_UNCOMPLETE
AF_TRACING
EAK_RACIAL_MISSION
EAK_ACHIEVEMENT
EAK_COLLECTION
EAK_ARCHERAGE
TADT_TODAY
TADT_EXPEDITION
TADT_FAMILY
TADT_HERO
TADT_ARCHE_PASS
TADT_EXPEDITION_PUBLIC
TADT_MAX
MAX_TRACING_ACHIEVEMENT
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetAchievementName(type)
GetCategories(kind)
GetSubcategoryInfo(subCategory)
GetCategoryCount(kind, cType, scType, filter)
GetAchievementTracingList(kind)
GetAchievementMainList(kind, sId, filter)
GetAchievementSubList(mainType filter)
GetAchievementInfo(aId)
AddTracingAchievement(aId, inLevel)
RemoveTracingAchievement(aId, inLevel)
IsTracingAchievement(aId, inLevel)
GetTodayAssignmentInfo(todayType, index)
GetTodayAssignmentInfoForChange(todayType, index)
GetTodayAssignmentCount(todayType)
GetTodayAssignmentGoal()
GetTodayAssignmentStatus()
IsTodayAssignmentQuest(todayType, questType)
GetTodayAssignmentResetCount(todayType)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
HandleClickTodayAssignment(todayType, index)
ResetTodayAssignment(todayType, index)
GetTodayAssignmentAllAcceptState()
IsPossibleTodayAssignmentAllAccept(todayType)
RequestTodayAssignmentAllAccept(todayType)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Action
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
IsActionEmtpty(slot)
GetActionType(slot)
GetActionInfoForActionBar(slot)
GetActionInfo(slot)
GetActionTooltipText(slot)
GetActionCooldown(slot)
GetActionCooldownEx(slot)
IsEmptySlot(slot)
GetActionLastIndex()
SetActionSpell(slot, spellId)
ClearAction(slot)
IsAutoRepeatAction(slot)
IsCurrentAction(slot)
GetComboActionInfo(slot)
PlaceAction(slot)
BaseActionBarEmptySlotCount(slotCnt)
SetActionBarPage(page)
GetActionBarPage()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2ArchePass
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
APS_INVALID
APS_OWNED
APS_PROGRESS
APS_EXPIRED
APS_DROPPED
APS_COMPLETED
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetMyArchePassInfo()
GetMyArchePassRewards()
GetMyArchePassReward(tier, premium)
GetCategories()
GetStatus(archePassType)
GetArchePassInfo(archePassType)
GetArchePassRewards(archePassType)
RemovePass()
StartPass(archePassType)
BuyPass(archePassType)
UpgradePremium()
IsCompleted(archePassType)
GetMissionCompleteCount()
GetMissionChangeCount()
ResetTodayAssignment(todayType, index)
IsPremiumItemTag(itemType)
IsFull()
NormalComplete()
GetArchePassResetWeeklyDay()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Auction
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
PT_BID
PT_PARTITION
ASK_NORMAL
ASK_PCBANG
ASK_PREMIUM
ASK_ACCOUNT_BUFF
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SearchAuctionArticle(page, minLevel, maxLevel, grade, category, exactMatch, keywords, minDirectPriceStr, maxDirectPriceStr)
GetSearchedItemPage()
GetSearchedItemCount()
GetSearchedItemTotalCount()
GetSearchedItemInfo(idx)
GetLowestPrice(itemType, itemGrade)
AskMarketPrice(itemType, itemGrade, askMarketPriceUi)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
ClearSearchCondition()
AskAuctionArticle()
SearchRefresh()
SearchAuctionArticleByPage(page)
SearchMyAuctionArticles(page)
SearchDeclareSiege(page)
BidAuctionArticle(stringId, moneyStr)
DirectPurchaseAuctionArticle(stringId)
PartitionAuctionArticle(stringId, itemStack, bidStackStr)
CancelAuctionArticle(stringId)
SearchedListSort(sortKind)
SetListSort(sortKind)
SetCurTab(tab)
GetSearchedSortInfo()
GetSearchedItemMyTotalCount()
GetSearchedItemArticleId(idx)
GetSearchedItemPrice(idx)
AttachItemFromPick()
AttachItemFromBag(slotId)
DetachItem(soundPlay)
GetAttachedItemInfo()
GetAttachedItemExist()
SetDuration(duration)
SetPrice(bid, direct)
SetPricePartition(direct, maxStack)
GetPartitionPriceByCount(direct, itemStackCount, bidCount)
CalcDeposit(start, direct, duration)
HasPostAuthority()
RequirePostAuthority()
IsShowDirectPriceRangeEdit()
SetShowDirectPriceRangeEdit(show)
SearchMyBidList(page)
SetOpen(open)
IsMyPutupArticle(idx)
GetLinkText(idx)
GetCurrencyForFee()
GetCurrencyForBid()
ToggleAuction()
GetAsrGoldLabels()
GetAsrVolLabels()
GetMarkerPricePeriod()
GetPostType()
SetPostType(postType)
SetPartitionBuyMinMaxCount(minStack, maxStack)
GetDepositRatioValue(duration)
GetMaxDepositValue()
GetChargeInfo(itemType)
EnoughByMoneyBuyAuctionItem(price)
PermissionCheckByCraft(craftType)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Bag
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetBagItemInfo(bagId, slot)
EquipBagItem(slot, isAuxEquip)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
PickupBagItemPartial(bagId, slot, amount)
HasPickedItem()
GetMountableBagItemInfo(mountIndex, bagId, slot)
GetMountableSlotItemInfo(slot)
GetRenewItemPreviewTooltipText(bagId, sourceSlot, targetSlot)
GetMountableBagItemTooltipText(mountIndex, bagId, slot)
GetMountableSlotItemTooltipText(slot)
GetBagNumSlots(bagId)
GetMountBagNumSlots(mountIndex, bagId)
UseItemByType(itemType)
GetBagItemSoundType(bagId, slotIndex)
FindBagItem(bagId, impl1)
FindBagItemByEquipSlot(bagId, equipSlot)
CountBagItemByItemType(itemType)
FindFirstBagSlotItemByItemType(itemType)
FindFirstBagItemInfoByItemType(itemType)
CountEmptyBagSlots()
Capacity()
CountItems()
GetBagCooldown(bagSlot)
ItemIdentifier(slot)
ItemDurability(slot)
ItemGemStats(slot)
IsSoulBoundedItem(slot)
ItemStack(slot)
IsLocked(slot)
ItemRepair(slot)
ItemRepairCost(slot)
ItemRequireLevel(slot)
Slots()
SlotByIdx(virtualSlot)
Modified()
ManualSort()
Sync()
CreateTab(iconIdx, tabDescText, groups)
EditTab(tabIdx, iconIdx, tabDescText, groups)
RemoveTab(tabIdx)
SwitchTab(tabIdx)
CurrentTabIdx()
TabCount()
HandleClick(virtualSlot)
HandleDragStart(virtualSlot)
HandleDragRecv(virtualSlot)
HandleUse(virtualSlot)
Confirm()
IsConfirmedSlot(virtualSlot)
IsInvalidSlot(virtualSlot)
TabInfo(tabIdx)
TabInfos()
Expand()
IsExpandable()
CanExpand()
ExpansionCost()
LockSlot(slotIdx)
UnlockSlot(slotIdx)
MoveToEmptyBankSlot(slotIdx)
MoveToEmptyCofferSlot(slotIdx)
MoveToEmptyGuildBankSlot(slotIdx)
GetLinkText(slotIdx)
ExpansionMaxSlotCount()
ExpandedSlotCount()
IsSlotSearched(slotIdx)
SetSearchKeyword(keyword)
GetSearchKeyword()
GetCurrency()
GetAutoUseAAPoint()
SetAutoUseAAPoint(use)
GetCountInBag(itemType)
HasRepairAuthorityInBag()
HandleSelectiveItems()
SetSelectiveItem(idx, checked)
SetSelectiveTryCount(count)
IsBagSlotDimCheck(slotIdx)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Bank
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetBagItemInfo(slot)
CountEmptyBagSlots()
Capacity()
CountItems()
ItemIdentifier(slot)
ItemDurability(slot)
ItemGemStats(slot)
IsSoulBoundedItem(slot)
ItemStack(slot)
IsLocked(slot)
ItemRepair(slot)
ItemRepairCost(slot)
ItemRequireLevel(slot)
Slots()
SlotByIdx(virtualSlot)
Modified()
ManualSort()
Sync()
CreateTab(iconIdx, tabDescText, groups)
EditTab(tabIdx, iconIdx, tabDescText, groups)
RemoveTab(tabIdx)
SwitchTab(tabIdx)
CurrentTabIdx()
TabCount()
HandleClick(virtualSlot)
HandleDragStart(virtualSlot)
HandleDragRecv(virtualSlot)
HandleUse(virtualSlot)
Confirm()
IsConfirmedSlot(virtualSlot)
IsInvalidSlot(virtualSlot)
IsBankerNpc()
PickupBankItemPartial(slot, amount)
TabInfo(tabIdx)
TabInfos()
Expand()
IsExpandable()
CanExpand()
ExpansionCost()
LockSlot(slotIdx)
UnlockSlot(slotIdx)
MoveToEmptyBagSlot(slotIdx)
Deposit(moneyStr, aaPointStr)
Withdraw(moneyStr, aaPointStr)
GetLinkText(slotIdx)
ExpansionMaxSlotCount()
ExpandedSlotCount()
IsSlotSearched(slotIdx)
SetSearchKeyword(keyword)
GetSearchKeyword()
GetCurrency()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2BattleField
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
VS_LOSE
VS_WIN
VS_DRAW
NIBC_BUFF_STACK
NIBC_BUFF_LEFT_TIME
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetMyPickBuffInfos()
PickBuff(buffType)
IsPossiblePickBuff()
GetMyKillstreakSkillsInfos()
IsInInstantGame()
RequestInstanceGame(instanceType)
CancelInstanceGame()
GetGameMode()
GetProgressEntireInfo(miniScoreboard)
GetProgressTimeInfo()
GetProgressScoreInfo(miniScoreboard)
GetProgressTargetNpcInfo()
GetProgressRankInfo()
GetProgressVictoryConditionInfo()
GetEndReasonInfo()
GetScoreColumnInfo(miniScoreboard)
GetVersusFactionInfo()
EndKillStreakSound()
AskLeaveInstantGame()
ToggleBattleField()
GetBestRatingReward()
ClearBestRatingReward()
ClearInstantGameCancelInfo()
GetTargetNpcInfo()
OffBanner()
IsInGlobalField()
RequestTryReentryCheck()
RequestTryReentry()
RequestCancelReentry()
RequestLeaveUserList()
GetInstanceName(instanceType)
GetInstanceUiKindList()
GetInstanceListByKind(kind)
GetInstanceRewardMailInfo(instanceType, mailType)
GetDetailInstanceInfo(instanceType)
GetInstanceAvailableLevel(instanceType)
GetVictoryInfo(instanceType)
IsApplyInstance()
GetApplyInstanceInfo()
GetBannerInfo(instanceType)
GetInstanceRoundResultMessageInfo()
GetFactionInfo()
GetMemberInfo(corpsNo)
GetRewardInfo()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2BlessUthstin
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetBlessUthstinInitItemInfo()
UseBlessUthstinInitStats(pageNumber)
GetBlessUthstinIncreaseMax()
UseBlessUthstinExtendMaxStats()
SetBlessUthstinItemSlotFromPick()
GetBlessUthstinItemInfo()
ClearItemSlot()
GetApplyStatsItemInfo(pageNumber)
UseApplyStatsItem(pageNumber)
ApplyStats,)apply, itemType, incStatsKind, decStatsKind, incStatsPoint, decStatsPoint, pageNumber)
EnterBlessUthstin()
LeaveBlessUthstin()
ExpandBlessUthstinPage()
SelectBlessUthstinPage(pageNumber)
CopyBlessUthstinPage(srcPageNumber, dstPageNumber)
GetCopyCost()
GetSelectCost()
GetActivatedPageNumber()
GetPageCount()
GetExpandItemInfo()
GetMaxPageCount()
GetTotalAppliedStats(pageNumber)
SetPreviewPageNumber(pageNumber)
GetCashItemNeedCount(pageNumber)
GetStatInfo()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Book
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetBookInfo(bookType)
GetPageInfo(pageType)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2BuffSkill
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
StartBuffSkill(index)
CanUseBuffSkill(index)
GetNumBuffSkills()
GetBuffSkill(index)
GetBuffSkillCooldown(index)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Butler
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
SWAP_EQUIPMENT_MODE()
ADD_GARDEN_MODE()
RECHARGE_COST_MODE()
REGISTER_HARVEST_MODE()
CHANGE_LOOK_MODE()
REGISTER_TRACTOR_MODE()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetButlerDesc()
GetResetWeeklyDay()
GetMyButlerInfo()
GetBindInfo()
GetEquipment(equipSlot)
GetAttribute(attribute)
GetActability(actability)
GetActabilityAdvantage(point)
GetChargeLpInfo()
GetProductionCostFreeChargeCount()
GetMyGardenInfo()
GetMyTractorInfo()
GetMyJobCount()
ChangeName(name)
Unbind()
ChargeLp(amount)
PickupButlerEquipment(slotIdx)
UnequipButlerEquipment(slotIdx)
EnterInteractionMode(mode)
LeaveInteractionMode()
GetActabilityPoint(stat)
ApplyActabiltiyStats(diff)
ResetActabiltiyStat()
GetReservedSlotItem()
SetReservedSlot()
ClearReservedSlot()
GetReservedHarvest()
SetReservedHarvest()
ClearReservedHarvest()
AddGarden()
RemoveGarden(gardenId)
RechargeProductionCost()
GetLookItem()
ChangeLook()
RegisterTractor()
RemoveTractor()
GetMyHarvestInfo()
RegisterHarvest(amount)
UnregisterHarvest(harvestId)
ExpandHarvestSlot()
IsEnableSpecialtyTrade()
GetButlerZoneGroupInfo()
GetSellableZoneGroups()
GetSpecialties(toZoneGroupType)
GetSpecialtyDetailInfo(specialtyTradeType)
RegisterSpecialtyTrade(specialtyTradeType, toZoneGroupType)
UnregisterSpecialtyTrade(specialtyTradeId)
ExpandSpecialtyTradeSlot()
GetMySpecialtyTradeInfo()
GetChargeInfo()
IsButlerHarvestItem(slotIndex)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Camera
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
ShakeCamera(shakeInfo)
SetUnitCameraAngles(angles)
IsScreenShotCameraMode()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Chat
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
QMS_GIVE_MAIN
QMS_GIVE_SAGA
QMS_GIVE_NORMAL
QMS_GIVE_REPEAT
QMS_CHECKPOINT
QMS_PROGRESS
QMS_READY_MAIN
QMS_READY_SAGA
QMS_READY_NORMAL
QMS_OVER_DONE
QMS_LET_IT_DONE
CHAT_INVALID
CHAT_REPLYWHISPER
CHAT_WHISPERED
CHAT_WHISPER
CHAT_DAILY_MSG
CHAT_NOTICE
CHAT_SAY
CHAT_ZONE
CHAT_TRADE
CHAT_FIND_PARTY
CHAT_PARTY
CHAT_RAID
CHAT_FACTION
CHAT_EXPEDITION
CHAT_SYSTEM
CHAT_FAMILY
CHAT_RAID_COMMAND
CHAT_TRIAL
CHAT_GM_LISTEN
CHAT_PLAY_MUSIC
CHAT_RACE
CHAT_BIG_MEGAPHONE
CHAT_SMALL_MEGAPHONE
CHAT_SQUAD
CHAT_ALL_SERVER
CHAT_LOCALE_SERVER
CHAT_USER
CMF_NONE
CMF_BEGIN_USE
CMF_SAY
CMF_WHISPER
CMF_PARTY
CMF_RAID
CMF_RAID_COMMAND
CMF_TRIAL
CMF_COMMUNITY
CMF_EXPEDITION
CMF_FAMILY
CMF_FACTION
CMF_ZONE
CMF_TRADE
CMF_FIND_PARTY
CMF_NOTICE
CMF_SYSTEM
CMF_CHANNEL_INFO
CMF_COMBAT_SRC_GROUP
CMF_COMBAT_DST_GROUP
CMF_COMBAT_SRC_SELF
CMF_COMBAT_SRC_OTHER
CMF_COMBAT_DST_SELF
CMF_COMBAT_DST_OTHER
CMF_COMBAT_MELEE_GROUP
CMF_COMBAT_MELEE_DAMAGE
CMF_COMBAT_MELEE_MISSED
CMF_COMBAT_SPELL_GROUP
CMF_COMBAT_SPELL_DAMAGE
CMF_COMBAT_SPELL_MISSED
CMF_COMBAT_SPELL_HEALED
CMF_COMBAT_SPELL_ENERGIZE
CMF_COMBAT_SPELL_CAST
CMF_COMBAT_SPELL_AURA
CMF_COMBAT_ENVIRONMENTAL_DMANAGE
CMF_COMBAT_DEAD
CMF_SELF_SKILL_INFO
CMF_ADDED_ITEM_GROUP
CMF_ADDED_ITEM_SELF
CMF_ADDED_ITEM_TEAM
CMF_ACQ_CONSUME_GROUP
CMF_LOOT_METHOD_CHANGED
CMF_SELF_MONEY_CHANGED
CMF_SELF_HONOR_POINT_CHANGED
CMF_SELF_LIVING_POINT_CHANGED
CMF_SELF_CONTRIBUTION_POINT_CHANGED
CMF_SELF_LEADERSHIP_POINT_CHANGED
CMF_PARTY_AND_RAID_INFO
CMF_DOMINION_AND_SIEGE_INFO
CMF_TRADE_STORE_MSG
CMF_BEHAVIOR_RESULT
CMF_QUEST_INFO
CMF_EMOTIOIN_EXPRESS
CMF_ETC_GROUP
CMF_PLAY_MUSIC
CMF_RACE
CMF_HERO_SEASON_UPDATED
CMF_BIG_MEGAPHONE
CMF_SMALL_MEGAPHONE
CMF_SQUAD
CMF_END_USE
CMF_OTHER_CONTINENT
CMF_ALL_SERVER
CMF_LOCALE_SERVER
CMF_CONNECT_ALERT
CMF_CONNECT_FRIEND
CMF_CONNECT_FAMILY
CMF_CONNECT_EXPEDITION
CMF_KO
CMF_EN_US
CMF_ZH_CN
CMF_JA
CMF_RU
CMF_ZH_TW
CMF_DE
CMF_FR
CMF_TH
CMF_IND
CMF_EN_SG
CMF_LANG_BEGIN
CMF_LANG_END
COLLISION_PART_FRONT
COLLISION_PART_SIDE
COLLISION_PART_REAR
COLLISION_PART_BOTTOM
COLLISION_PART_TOP
LOCALE_INVALID
LOCALE_KO
LOCALE_ZH_CN
LOCALE_EN_US
LOCALE_JA
LOCALE_ZH_TW
LOCALE_RU
LOCALE_DE
LOCALE_FR
LOCALE_TH
LOCALE_IND
LOCALE_EN_SG
CIK_DEFAULT
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
DispatchChatMessage(filter, message)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
CreateUserChatChannel(channel, password)
JoinUserChatChannel(channel, password)
LeaveUserChatChannel(channel)
GetChatChannelName(channel)
OpenChat()
GetChatCommands()
ExpressEmotion(text)
DispatchCombatChatMessage(targetFilter, combatFilter, message)
UpdateChatTabInfo(tabId, chatTabInfoTable)
UpdateChatTabFilter(tabId, filtersTable, filterColorsTable)
AddNewChatTabByUser(windowId, name)
DeleteChatTabByUser(tabId)
RenameChatTabByUser(tabId, name)
ClearChatContentByUser(tabId)
GetChatTabInfoTable(tabId)
GetDefaultChatTabInfoTable(tabId)
AllChatWindowIds()
AddItemLinkToActiveChatInput(linkText)
AddQuestLinkToActiveChatInput(linkText)
AddRaidRecruitLinkToActiveChatInput(linkText)
AddSquadRecruitLinkToActiveChatInput(linkText)
AddUrlLinkToActiveChatInput()
AddCraftLinkToActiveChatInput(craftType)
IsActivatedChatInput()
ActivateWhisperChatInput(isWhispered)
InitChatWindow()
IsLockedChatWindowByChatTabId(tabId)
LockChatWindowByTabId(tabId, lock)
GetChatOption()
UpdateChatOption(chatOption)
ReportSpammer(targetName, message, chatType)
GetChatChannelInfo(chatType)
UseMegaphone()
GetMegaphoneChannelInfos()
SetMegaphoneWarningMsgState()
GetUrlTextAddr()
SetUrlTextAddr(text, addr)
IsEnableChatChannel(chatType)
GetChatIcon(chatIconKind)
GetChatIconKind(charId, chatType)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Coffer
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetBagItemInfo(slot)
CountEmptyBagSlots()
Capacity()
CountItems()
ItemIdentifier(slot)
ItemDurability(slot)
ItemGemStats(slot)
IsSoulBoundedItem(slot)
ItemStack(slot)
IsLocked(slot)
ItemRequireLevel(slot)
Slots()
SlotByIdx(virtualSlot)
Modified()
ManualSort()
Sync()
TabAddible()
CreateTab(iconIdx, tabDescText, groups)
EditTab(tabIdx, iconIdx, tabDescText, groups)
RemoveTab(tabIdx)
SwitchTab(tabIdx)
CurrentTabIdx()
TabCount()
CofferWindowClosed()
HandleClick(virtualSlot)
HandleDragStart(virtualSlot)
HandleDragRecv(virtualSlot)
HandleUse(virtualSlot)
Confirm()
IsConfirmedSlot(virtualSlot)
IsInvalidSlot(virtualSlot)
PickupCofferItemPartial(slot, amount)
TabInfo(tabIdx)
TabInfos()
MoveToEmptyBagSlot(slot)
GetLinkText(slotIdx)
IsSlotSearched(slotIdx)
SetSearchKeyword(keyword)
GetSearchKeyword()
IsMyHouseCoffer()
IsPrivateCoffer()
IsManikin()
GetHouseCofferPermission()
GetHouseCofferName()
SetHouseCofferPermission(newPermission)
GetHouseCofferSlotSize()
RetryPendedOpen()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2CombatResource
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
CRU_GAUGE
CRU_OVERLAP
CRU_DOUBLE_GAUGE
CRU_DOUBLE_GAUGE_2
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetCombatResourceInfo()
GetCombatResourceInfoByGroupType(groupType)
CheckCombatResourceMaxPointByGroupType(groupType)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Craft
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
CRAFT_ORDER_ENTRY_PER_SEARCH
CRAFT_ORDER_ENTRY_PER_CHARACTER
COSK_DEFAULT
COSK_ACTABILITY_GROUP
COSK_FEE
COSO_ASC
COSO_DESC
COPT_INVALID
COPT_PC
COPT_INSTANT
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetCraftBaseInfo(craftType)
GetCraftMaterialInfo(craftType, doodadId)
GetCraftProductInfo(craftType)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetCraftingMaterialLimitCount()
GetActabilityGroupInfoByGroupType(groupType)
GetCraftName(craftType)
GetExecutableCraftCount(craftType)
ExecuteBatchCraftByType(craftType, doodadId, count)
StopBatchCrafting()
EndCraftingInteraction()
IsWorkingCraft()
GetCraftTypeByItemType(itemType)
GetLeftBatchCount()
IsMyCraftTable()
GetActabilityGroup()
GetACategories()
GetBCategories(category)
GetEquipmentBCateoryInfo()
GetList(categoryA, categoryB)
GetListBySearching(categoryA, actGroup, productSearch, craftable, keyword, isFavorite)
GetListByItemType(itemType)
GetListByFavorite(craftable)
IsEquipmnetACategory(categoryA)
IsVisibleACategory(categoryA)
GetInteratcionTargetId()
GetInteratcionTargetDoodadType()
GetCraftStepInfo(craftType)
ResetCraftOrder()
EnterCraftOrderMode()
LeaveCraftOrderMode()
IsCraftOrderMode()
InteractionWithBoard()
ReleaseInteractionWithBoard()
MakeCraftOrderSheet(craftType, count)
RestoreCraftOrderSheet()
StopCraftOrderSkill()
SearchCraftOrder(actabilityType, sortKind, sortOrder, page, possible)
PostCraftOrder(fee)
CancelCraftOrder(entryId)
ProcessCraftOrder(entryId)
ProcessCraftOrderInstant(entryId)
GetMyCraftOrderEntry()
GetMyCraftOrderSheet()
GetMyCraftOrderInstantEntry(entryId)
GetMinCraftOrderFee(craftType)
RequestCraftOrderFee(craftType)
GetCraftOrderableCount(craftType)
GetCraftOrderCharge()
ClearCraftOrderItemSlot()
SetCraftOrderItemSlotFromPick()
SetRestoreCraftOrderSlot(slotIndex)
ModifyFavoriteCraft(craftType)
UpdateFavoriteCraftsToServer()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Cursor
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetCursorInfo()
ClearCursor()
GetCursorPickedItemIconInfo()
GetCursorPickedBagItemIndex()
GetCursorPickedBagItemAmount()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Debug
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
ReloadScreen()
GetDevMode()
GetSavedLocation(index)
GetPlayerUnit()
GetPlayerId()
IsMaster()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Decal
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
SAGA_QUEST_NOTIFIER_MARK
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
SetQuestGuidDecalByIndex(index, type, show)
CanMakeGuidedDecal(questType)
CanMakeDirectionGuide(questType, decal)
GetMaxDecalCount()
SetTargetDecalMaterial(layer, state, material)
SetTargetDecalStartAnimation(layer, state, t1, t2, key1, key2, key3)
SetTargetDecalLoopAnimation(layer, state, t1, t2, t3, key1, key2, key3)
DisableTargetDecal(layer, state, disable)
SetMinimunSizeTargetDecal(size)
DisableTargetDecalLayer(layer, disable)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2DialogManager
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
DBT_OK_CANCEL
DBT_OK
DBT_NONE
DLG_TASK_DEFAULT
DLG_TASK_JOIN_TEAM
DLG_TASK_JOIN_EXPEDITION
DLG_TASK_JOIN_FAMILY
DLG_TASK_CONFIRM_CHANGE_RESOLUTION
DLG_TASK_JOIN_INSTANT_GAME
DLG_TASK_JOIN_INSTANT_GAME_INVITATION
DLG_TASK_JOIN_INSTANT_GAME_INVITATION_WAITING
DLG_TASK_NOTICE_INSTANT_GAME
DLG_TASK_INVITE_JURY
DLG_TASK_IMPRISION_OR_TRIAL
DLG_TASK_SKIP_FINAL_STATEMENT
DLG_TASK_CHALLENGE_DUEL
DLG_TASK_PURCHASE
DLG_TASK_PURCHASE_COIN
DLG_TASK_DOODAD_PHASE_CHANGE_BY_ITEM
DLG_TASK_BUY_FISH
DLG_TASK_CONVERT_FISH
DLG_TASK_DESTROY_ITEM
DLG_TASK_CONVERT_ITEM
DLG_TASK_SOUL_BIND_ITEM
DLG_TASK_RECHARGE_ITEM
DLG_TASK_SKINIZE_ITEM
DLG_TASK_SECURITY_LOCK_ITEM
DLG_TASK_SECURITY_UNLOCK_ITEM
DLG_TASK_LEARN_SKILL
DLG_TASK_LEARN_BUFF
DLG_TASK_RESET_SKILLS
DLG_TASK_EXPAND_INVENTORY
DLG_TASK_LEAVE_EXPEDITION
DLG_TASK_DISMISS_EXPEDITION
DLG_TASK_BUILD_SHIPYARD
DLG_TASK_BUILD_INTERACTION
DLG_TASK_WARN_EXECUTE
DLG_CHARACTER_CREATE_FAILED
DLG_TASK_EXPAND_CHARACTER_COUNT
DLG_TASK_EXPANDED_CHARACTER_COUNT
DLG_NOTICE_EXPIRE_INSTANCE_TICKET
DLG_TASK_RENAME_EXPEDITION
DLG_TASK_ASK_USE_AA_POINT
DLG_TASK_ASK_CHARGE_AA_POINT
DLG_TASK_WARN_CRAFT_ITEM
DLG_TASK_CONFIRM_GENDER_TRANSEFR
DLG_TASK_CONFIRM_ENTER_BEAUTYSHOP
DLG_TASK_ITEM_UNPACK
DLG_TASK_REVERT_LOOK_ITEM
DLG_TASK_INDUN_DIRECT_TEL
DLG_TASK_INDUN_ENTRANCE
DLG_TASK_CONFIRM_APPLY_INSTANT_GAME
DLG_TASK_BATTLE_FIELD_RESET_VISIT_COUNT
DLG_TASK_CONFIRM_ROTATE_HOUSE
DLG_TASK_HAND_OVER_TEAM_OWNER
DLG_TASK_ZONE_PERMISSION
DLG_TASK_ZONE_PERMISSION_EXPELLED
DLG_TRADE
DLG_TASK_PRIEST_RECOVER_EXP
DLG_TASK_FAMILY_JOIN
DLG_TASK_FAMILY_LEAVE
DLG_TASK_FAMILY_KICK
DLG_TASK_FAMILY_INCREASE_MEMBER
DLG_TASK_HEIR_LEVEL_UP
DLG_TASK_GET_HEIR_SKILL
DLG_TASK_ACTIVE_HEIR_SKILL
DLG_TASK_CHANGE_HEIR_SKILL
DLG_TASK_RESET_HEIR_SKILL_FOR_SLOT
DLG_TASK_EQUIP_SLOT_REINFORCE_LEVEL_UP
DLG_TASK_ASK_EXIT_INDUN
DLG_TASK_RAID_RECRUIT_DEL
DLG_TASK_AUTH_LOGIN_DENIED
DLG_TASK_REPORT_BADWORD_USER
DLG_TASK_RESTORE_DISABLE_ENCHANT_ITEM
DLG_TASK_RENAME_CHARACTER_BY_ITEM
DLG_TASK_DISBAND_SQUAD
DLG_TASK_DISBAND_SQUAD_IN_RECRUIT_LIST
DLG_TASK_INVITE_SQUAD_MEMBER
DLG_TASK_ITEM_EVOLVING_CONFIRM
DLG_TASK_ITEM_EVOLVING_WARNING
DLG_TASK_ITEM_REROLL_EVOLVING
DLG_TASK_ITEM_REROLL_CHANCE_OVER
DLG_TASK_RECHARGE_LP_BY_ITEM
DLG_TASK_RECHARGE_LP_WARRING
DLG_TASK_ENSEMBLE_SUGGEST
DLG_TASK_ACTABILITY_FULL_NOTICE
DLG_TASK_EVOLVING_RESULT_NOTICE
DLG_TASK_RE_ROLL_EVOLVING_RESULT_NOTICE
DLG_TASK_REQUEST_RAID_JOINT
DLG_TASK_ITEM_ELEMENT_RESULT_NOTICE
DLG_TASK_RAID_APPLICANT_ACCEPT
DLG_TASK_BIND_BUTLER
DLG_TASK_EXPEDITION_SUMMON_SUGGEST
DLG_TASK_RESOPONSE_RAID_JOINT
DLG_TASK_TEAM_SUMMON_SUGGEST
DLG_TASK_MOBILIZATION_ORDER
DLG_TASK_MOBILIZATION_ORDER_CALL
DLG_TASK_DEATH_AND_RESURRECTION
DLG_TASK_BIND_SPECIAL_REZ_DISTIRCT
DLG_TASK_BAN_VOTE_ANNOUNCE
DLG_TASK_BAN_VOTE_PARTICIPATE
DLG_TASK_EQUIP_SLOT_REINFORCE_EXP_OVER
DLG_TASK_SELECT_INSTANCE_GAME_DIFFICULT
DLG_TASK_RULING_STATUS
DLG_TASK_UNLOCK_LEARN_SKILL
IRT_INVALID
IRT_BUFF
IRT_SKILL
IRT_RND_ATTR_UNIT_MODIFIER
IRT_PROC
RK_NORMAL
RK_IN_PLACE
RK_SPECIAL
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
SetHandler(taskType, handler)
OnOK(widgetId)
OnCancel(widgetId)
OnTimeOut(widgetId)
SetInfoTable(widgetId, infoTable)
SetCode(widgetId, code)
RequestDialog(handler, ownerWindowId, infoTable)
RequestDefaultDialog(handler, ownerWindowId)
RequestNoticeDialog(handler, ownerWindowId)
Delete(taskType)
DeleteByOwnerWindow(widgetId, dlgName)
RequestTHTransfer()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Dominion
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
HPWS_TROUBLE_0
HPWS_TROUBLE_1
HPWS_TROUBLE_2
HPWS_TROUBLE_3
HPWS_TROUBLE_4
HPWS_BATTLE
HPWS_WAR
HPWS_PEACE
DHG_MAX
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetMySiegeZoneGroupTypes()
GetCurSiegePeriodName(zoneGroupType)
GetNextSiegePeriodName(zoneGroupType)
GetCurPeriodStartDate(zoneGroupType)
GetCurPeriodEndDate(zoneGroupType)
GetCurPeriodRemainDate(zoneGroupType)
GetNextPeriodStartDate(zoneGroupType)
GetNextPeriodEndDate(zoneGroupType)
GetNextPeriodRemainDate(zoneGroupType)
GetSiegePeriodStartDate(zoneGroupType)
GetSiegePeriodEndDate(zoneGroupType)
GetReinforceRemainDate(zoneGroupType)
IsReinforceArrived(zoneGroupType)
GetSiegeCurDeffenseExpeditionName(zoneGroupType)
GetSiegeCurOffenseExpeditionName(zoneGroupType)
GetCurDefenseSiegeParticipantCount(zoneGroupType)
GetCurOffenseSiegeParticipantCount(zoneGroupType)
GetSiegeMember(zoneGroupType, index)
GetDominionOriginOwnerFactionName(zoneGroupType)
IsNextSiegePeriodToday(zoneGroupType)
IsSiegeExpedition(zoneGroupType)
IsInSiegeTeam()
GetGuardTowerId(zoneGroupType)
GetGuardTowerHp(zoneGroupType)
GetZoneGroupName(zoneGroupType)
GetRecommendLevelToZoneGroup(zoneGroupType)
GetOwnerFaction(zoneGroupType)
GetOwnerFactionName(zoneGroupType)
GetPeaceTaxMoney(zoneGroupType)
GetPeaceTaxAAPoint(zoneGroupType)
GetTaxRate(zoneGroupType)
ChangeDominionTaxRate(zoneGroupType, taxRate)
IsSiegeWinnerMyFaction(zoneGroupType)
GetSiegeInfoDominion()
GetSiegeTimeInfo()
GetSiegePeriodName()
GetSiegeZoneGroup()
GetSiegeProgressInfo()
GetCurPeriodRemainDateByCurrentZone()
GetSiegeRewardItem()
CanUpdateSiegeSchedule()
IsSiegeSecondHalf(zoneGroupType)
GetSiegeWinScore()
IsOutlawOffensebyMyFaction()
IsNotOutlawOffensebyMyFaction()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Dyeing
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetInfo()
DyeSample(r, g, b)
Execute()
Leave()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2EquipSlotReinforce
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
ESRA_OFFENCE
ESRA_DEFENCE
ESRA_SUPPORT
ESRA_MAX
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetMaterialInfo(equipSlotIndex, level)
GetReinforceInfo(equipSlotIndex)
GetAttributeType(equipSlotIndex)
StartReinforceAddExp(equipSlotIndex, materialType)
StartReinforceLevelup(equipSlotIndex)
ChangeLevelEffect(equipSlotIndex, levelEffectIndex)
IsFullExp(equipSlotIndex)
GetSetEffects(attributeType)
GetSetEffectTopLevel(attributeType)
GetAttributeTotalLevel(attributeType)
GetNextSetApplyLevel(attributeType)
GetLevelEffectChangeUIInfo(equipSlotIndex)
GetLevelEffectStep(equipSlotIndex)
GetLevelEffectInfoByEquipSlot(equipSlotIndex)
EnableLevelUp(equipSlotIndex)
HasNextSetEffect(attributeType)
IsInGameShopItemTag(itemType)
SuitableLevelForEquipSlotReinforce()
GetAppliedAllLevelEffect()
GetAppliedAllSetEffect()
GetAppliedAllBundleEffect()
GetTotalReinforceLevel()
GetBundleEffectTopLevel()
GetBundleEffectInfos()
IsWorkingAddExp()
StopCasting()
ExpandPage()
SelectPage(pageNumber)
GetSelectCost()
GetActivatedPageNumber()
GetPageCount()
GetMaxPageCount()
GetExpandItemInfo()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Equipment
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
EST_INVALID
EST_HEAD
EST_NECK
EST_CHEST
EST_WAIST
EST_LEGS
EST_HANDS
EST_FEET
EST_ARMS
EST_BACK
EST_EAR
EST_FINGER
EST_UNDERSHIRT
EST_UNDERPANTS
EST_MAINHAND
EST_OFFHAND
EST_2HANDED
EST_1HANDED
EST_RANGED
EST_AMMUNITION
EST_SHIELD
EST_INSTRUMENT
EST_BAG
EST_FACE
EST_HAIR
EST_GLASSES
EST_HORNS
EST_TAIL
EST_BODY
EST_BEARD
EST_BACKPACK
EST_COSPLAY
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetEquippedItemTooltipInfo(equipSlot, targetEquippedItem)
GetEquippedItemType(equipSlot)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
SwapPrelimEquipments()
IsMateEquippableSlot(unit, equipSlot)
MateUnequipItem(unit, equipSlot)
PickupMateEquippedItem(unit, equipSlot)
GetEquippedItemInfo(unit, equipSlot)
GetEquippedItemTooltipText(unit, equipSlot)
GetPreliminaryItemTooltipText(equipSlot)
UseEquippedItemByType(itemType)
IsEquippedItemByType(itemType)
FindEquippedItemByType(itemType)
ItemIdentifier(equipSlot)
ItemDurability(equipSlot)
ItemGemStats(equipSlot)
IsSoulBoundedItem(equipSlot)
ItemStack(equipSlot)
IsLocked(equipSlot)
ItemRepairCost(equipSlot)
ItemRequireLevel(equipSlot)
DameagedItemCount()
DameagedItems(n)
GetBackPackGoodsInfo(unit)
GetLinkText(equipSlot)
GetPrelimLinkText(equipSlot)
SecurityLock()
SecurityUnlock()
HasAnyPrelimEquipments()
GetPrelimSlotLockInfo()
SetPrelimSlotLock(slotIdx, lock)
StartPrelimBagInteraction()
EndPrelimBagInteraction()
GetEquipSlotByEquipSlotType(equipSlotType)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2EventCenter
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
GEIP_ALL
GEIP_SCHEDULED
GEIP_IN_PROGRESS
GEIP_ENDED
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetAttendanceRewardInfos()
CheckAttendable()
AddAttendance()
GetAttendedDayCount()
RequestGameEventInfo()
GetGameEventInfoCount()
GetGameEventInfo(value)
GetGameEventInfoTitleList(eventFilter)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Faction
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
EXPEDITION_CREATE_COST
MAX_EXPEDITION_APPLY_COUNT
EHP_MANAGEMENT
EHP_STORE
EHP_WAR
EHP_INSTANCE
EMT_BUFF
EMT_QUEST
EMT_RANK_REWARD
EIMS_START
EIMS_END
VS_LOSE
VS_DRAW
VS_WIN
EMSK_NAME
EMSK_ROLE
EMSK_LEVEL
EMSK_JOB
EMSK_CONTRIBUTION_POINT
EMSK_WEEKLY_CONTRIBUTION_POINT
EMSK_ONLINE
EGFT_BANK
EGFT_BUFF
EGFT_SHOP
EGFT_QUEST
MIN_GUILD_FUNCTION_BUFF_TYPE
MAX_GUILD_FUNCTION_BUFF_TYPE
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetFactionList()
GetFactionInfo(id)
GetInterFactionState(id1, id2)
GetTopLevelFaction(id)
GetMyTopLevelFaction()
GetMyTopLevelFactionFromExpedition()
GetSponsorFaction()
CreateExpedition(expeditionName, sponsorId)
DismissExpedition()
LeaveExpedition()
InviteToExpedition(charName)
KickFromExpedition(charName)
ChangeExpeditionRolePolicy(rolePolicy)
ChangeExpeditionMemberRole(charName, roleId)
ChangeExpeditionOwner(charName)
RenameExpedition(newName, byItem)
IsExpedInfoLoaded()
GetMyExpeditionId()
GetMyExpeditionLevel()
IsMyRoleExpeditionOwner()
GetMyExpeditionOwnerName()
GetFactionName(id, isIncludeSysFaction)
IsMyExpeditionMember(charName)
GetAllExpeditionRolePolicies()
GetExpeditionRolePolicy(roleId)
GetExpeditionMyRolePolicy()
GetExpeditionMyRole()
GetExpeditionLevelInfo(expeditionLevel)
GetExpeditionMaxLevel()
GetExpeditionMemberCount()
RequestExpeditionMembers(allMember, startIndex, sortKind, asc)
GetExpeditionMembersPerPage()
CanInviteExpedition()
GetMyExpeditionContributionPoint()
GetMyExpeditionInfo()
SetExpeditionLevelUp()
CheckExpeditionExpNextDay()
GetExpeditionPublicAssignmentChangeCost()
EnoughExpeditionPublicAssignmentChangeCost()
SetExpeditionNotice(notice)
SetMyExpeditionInterest(interest)
GetExpeditionBuffs(expeditionId)
GetExpeditionBuffAndGrade(buffType, grade)
GetExpeditionBuffAllGradeDesc(buffType)
RequestExpeditionBuffUp(buffType, grade)
RequestExpeditionHouseInfo()
GetExpeditionHouseId()
GetExpeditionHouseInfo()
GetEnemyExpedition()
CanDeclareExpeditionWar()
RequestDeclarationMoney()
DeclareExpeditionWar(id, moneyStr)
GetRemainTimeExpeditionWar()
RequestExpeditionWarKillScore()
GetExpeditionWarKillScore()
RequestExpeditionHistory(type)
GetExpeditionHistory(type)
GetExpeditionWarState()
GetMyExpeditionProtectionTime()
RequestCancelProtection()
GetExpeditionRecord()
RequestExpeditionMyRecruitmentsGet()
RequestExpeditionRecruitmentsGet(info)
RequestExpeditionRecruitmentAdd(interestTable, days, introduce)
RequestExpeditionRecruitmentDel()
RequestExpeditionApplicantsGet()
RequestExpeditionApplicantAdd(expeditionId, memo)
RequestExpeditionApplicantDel(expeditionId)
RequestExpeditionApplicantAccept(charId)
RequestExpeditionApplicantReject(charId)
GetExpeditionRecruitmentPeriod()
GetExpeditionRecruitmentPeriodCost()
RequestIssuanceOfMobilizationOrder(doodadId)
RequestMobilizationOrder(result, heroId, zoneGroupType)
RequestMobilizationOrderNotRecv(use)
IsProtectedZone()
GetSiegeAuctionBidCurrency()
GetExpeditionSummonLimit()
GetExpeditionSummonItem()
RequestExpeditionSummon(count, character)
RequestExpeditionSummonNotRecv(use)
RequestExpeditionSummonReply(result, name)
GetRenameExpeditionItem()
GetRenameExpeditionPeriod()
GetFactionKickInactiveDay()
GetHeroDropoutComebackRequestInfo()
GetExpeditionPortals(expeditionid)
SaveExpeditionPortal(memo)
RenameExpeditionPortal(portalId, name)
DeleteExpeditionPortal(portalId)
TeleportExpeditionPortal(portalId)
GetDisplayPortalTime()
GetExpeditionPortalLimit()
GetExpeditionInstanceHistoryMemberInfos(strHistoryId)
GetExpeditionPublicQuestResetWeeklyDay()
SetExpeditionMemo(memoContent)
IsGuildFunctionsUnlocked()
GetGuildFunctionStatus(guildFunction)
GetGuildFunctionPrice(guildFunction, selectedLevel)
RequestGuildFunctionACP(guildFunction, selectedLevel)
GetGuildFunctionCertificatePrice(selectedLevel)
RequestGuildFunctionCertificateBuy(selectedLevel, amount)
GetGuildFunctionBuffInfo(guildFunction)
GetGuildFunctionShopDiscount()
CanManageContribution()
GetGuildFunctionBuffType()
SelectGuildFunctionBuffType(buffType)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Family
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
ShowMembers()
Invite(name, title)
Leave()
ChangeTitle(charIdStr, title)
GetMemberCount()
GetMembers(allMember)
IsOwner()
ChangeOwner(charIdStr)
IsMyFamily(name)
IsFamily()
IsLimitFamily()
GetInfo()
UpdateTodayAssignment()
GetEffect()
GetMemberList(allMember)
GetRoleList()
GetChangeNameItem()
SetName(name)
SetNotice(notice)
ChangeMemberRole(charIdStr, role)
OpenJoin(name)
OpenLeave()
OpenKick(charIdStr)
OpenIncreaseMember()
ChangeName(familyName)
GetRenameFamilyPeriod()
GetFamilyGuideInfo()
IsMaxFamily()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Friend
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
MAX_FRIENDS
MAX_WAIT_FRIENDS
MAX_BLOCK_USER
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
IsFriendListLoaded()
IsMyFriend(charName)
GetFriendCount()
GetFriendList(allMember)
RequestFriendList(allMember)
GetFriendsPerPage()
DeleteFriend(charName)
GetBlockList()
BlockUser(charName)
UnblockUser(charName)
IsBlockedUser(charName)
GetWaitFriendList()
IsExistWaitFriendToReceive()
IsRequestFriend(charName)
FriendRequest(charName)
AcceptFriend(targetId)
CancelFriend(targetId)
RejectFriend(targetId)
AcceptReceiveList(listTable)
RejectReceiveList(listTable)
CancelRequestList(listTable)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2GuildBank
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetBagItemInfo(slot)
CountEmptyBagSlots()
Capacity()
CountItems()
ItemIdentifier(slot)
ItemDurability(slot)
ItemGemStats(slot)
IsSoulBoundedItem(slot)
ItemStack(slot)
IsLocked(slot)
ItemRequireLevel(slot)
Slots()
SlotByIdx(virtualSlot)
Modified()
ManualSort()
Sync()
CreateTab(iconIdx, tabDescText, groups)
EditTab(tabIdx, iconIdx, tabDescText, groups)
RemoveTab(tabIdx)
SwitchTab(tabIdx)
CurrentTabIdx()
TabCount()
GuildBankWindowClosed()
HandleClick(virtualSlot)
HandleDragStart(virtualSlot)
HandleDragRecv(virtualSlot)
HandleUse(virtualSlot)
Confirm()
IsConfirmedSlot(virtualSlot)
IsInvalidSlot(virtualSlot)
PickupGuildBankItemPartial(slot, amount)
TabInfo(tabIdx)
TabInfos()
MoveToEmptyBagSlot(slotIdx)
GetLinkText(slotIdx)
IsSlotSearched(slotIdx)
SetSearchKeyword(keyword)
GetSearchKeyword()
Deposit(moneyStr)
Withdraw(moneyStr)
GetLinkText(slotIdx)
GetCurrency()
GetGuildBankMoneyString()
GetCellNumber()
ShowCell(cellNumber)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2HeirSkill
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
HSVK_ORIGIN_SKILL
HSVK_HEIR_SKILL
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
SetOriginSkill(ability)
SetHeirSkill(ability, slotIndex)
GetSelectedOriginSkillInfo(ability, slotIndex)
GetHeirSkillPos(ability, slotIndex)
GetResetSkillInfo(ability, selected)
CheckHeirSkillStep(ability, slotIndex)
IsHeirSkill(skillType)
FindHeirSkill(ability, slotIndex, pos)
ResetHeirSkill(resetKind, ability, slotIndex)
ResetHeirSkillForSlot(skillType)
GetCurrencyForHeirSkillsReset()
GetOriginSkillCount()
GetHeirSkillCount()
GetHeirSkillInfoTable(ability, slotIndex)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Hero
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetClientFactionID()
GetClientFactionName()
GetRankFactions()
GetScheduleInfo()
RequestRankData(factionID)
GetMyScore()
GetHeroCandidateCount()
GetRankingData(factionID)
GetRemainTimeToAnnounceHero()
GetElectionPeriod()
IsElectionPeriod()
GetCandidateList()
GetActivedHeroPeriod(eventID)
GetAbstainPeriod()
IsCandidate()
IsVoter()
IsAlreadyVoted()
RequestElection(rankings)
RequestAbstain()
RequestFactionScores(factionId)
GetHeroFactions()
GetHeroList(factionID)
VoteReputation(point)
CanAddReputation()
GetReputationCondition()
GetVoterCondition()
GetHeroBonus()
GetMyHeroBonusInfo()
GetFactionScores(factionId)
GetFactionHeroCount()
GiveDominionPoint(zoneGroup)
DominionPointCount()
IsHero()
IsTopLevelHero()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Hotkey
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
HOTKEY_ACTION
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetOptionBinding(action, index, option, arg)
GetOptionBindingButton(buttonName, index)
SetOptionBindingWithIndex(action, key, index, arg)
SetOptionBindingButtonWithIndex(buttonName, key)
EnableHotkey(enable)
IsOverridableAction(action)
IsValidActionName(action)
GetBindingUiEvent(actionName, index)
SetBindingUiEvent(actionName, key)
SetBindingUiEventWithIndex(actionName, key, index)
GetOptionBindingUiEvent(actionName, index)
SetOptionBindingUiEvent(actionName, key)
SetOptionBindingUiEventWithIndex(actionName, key)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
InitOptionHotKey()
SaveHotKey()
BindingToOption()
OptionToBinding()
RemoveOptionBinding(action, index, arg)
GetBinding(action, index)
GetBindingSpell(spellName, index)
GetBindingButton(buttonName, index)
SetBinding(action, key)
SetOptionBinding(action, key)
SetBindingSpell(spellName, key)
SetBindingButton(buttonName, key)
SetOptionBindingButton(buttonName, key)
SetBindingItem(itemName, key)
SetTemporaryBindingButton(buttonName, key)
GetTemporaryBindingButton(buttonName, index)
SetBindingWithIndex(action, key, index)
SetBindingSpellWithIndex(spellName, key, index)
SetBindingButtonWithIndex(buttonName, key, index)
SetBindingItemWithIndex(itemName, key, index)
ExcuteActionHandler(action)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2House
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
HOUSING_UCC_POS_WALL
HOUSING_UCC_POS_FLOOR
HOUSING_UCC_POS_TOP
HOUSING_UCC_POS_WALL_OUTDOOR
HOUSING_UCC_POS_ROOF
HOUSE_ALLOW_OWNER
HOUSE_ALLOW_EXPEDITION
HOUSE_ALLOW_ALL
HOUSE_ALLOW_FAMILY
HOUSE_ALLOW_FAMILY_AND_EXPEDITION
HOUSE_ALLOW_ALLIANCE
MAX_PREPAID_WEEKS
HOUSING_TAX_SEAL
HOUSING_TAX_CONTRIBUTION
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
IsMyHouse()
IsHouseUnderConstruction()
GetHouseId()
GetHouseOwnerName()
GetHouseName()
GetHouseType()
SetHouseName(newName)
GetHousePermission()
SetHousePermission(newPermission)
CalcHouseBuildTotalPayStr(moneyStr)
GetHouseRemainProgress()
GetHouseBaseProgress()
GetHouseZoneName()
Demolish(package, sealCount)
GetDemolishSealCount()
CanPackageDemolish()
IsSiegePeriod()
IsWarmUpPeriod()
IsCastle()
IsDominionCastle()
IsExpeditionHouse()
GetTaxations(additionalTaxRate)
GetHouseConstructionStepInfo()
GetTaxItem()
CountTaxItemInBag()
CountTaxItemForTax(taxStr, taxType)
GetShipyardOwnerName()
GetShipyardProtectionPeriod()
GetShipyardRemainProgress()
GetShipyardBaseProgress()
GetShipyardConstructionStepInfo()
GetHousingModelName(hType)
GetHousingModelConstructionInfo(hType)
NextStepFromBuildCheck()
PrevStepFromBuildCheck()
GetGuardTowerStepInfo()
GetHouseDecoCount()
GetHouseAllowRecover()
SetHouseAllowRecover(isAllow)
GetActabilityDecoCount()
GetDecoActabilityPoint(index)
GetDecoActabilityByType(index)
GetDecoActabilityLimitGroup()
GetHousingRebuildingPackInfo()
GetHousingRebuildingBaseInfo(type)
RequestHousingRebuildingTaxInfo()
GetCurrentHousingTaxInfo()
GetHousingRebuildingTaxInfo(type)
GetHousingRebuildingMaterialInfo(type)
GetCurrentHousingItemType()
CanRebuild(type)
StartRebuild(type)
RequestLookAheadMode()
LookAheadRebuildHouse(type)
CancelRebuild()
GetHouseSaleInfo()
SetHouseForSale(moneyStr, sellToName, isPublic)
CancelHouseForSale()
BuyHouse()
GetHouseSaleItemInfo(gold, silver, cooper)
GetHouseSaleTaxInfo()
PrepayHouseTax()
GetCurrencyForTax()
GetCurrencyForHouseSale()
GetPrepayRequireItemInfo()
IsConvertTaxItemToAAPoint()
GetRequireItemInfoForRotate()
PreviewRotateHouse()
IsHouseRotatable()
RotateHouse()
EnterUccApply()
EnterUccRemove()
LeaveUccItem()
ClearUccItemSlot()
SetUccItemSlotFromPick()
GetHousingUccItemInfo()
GetHousingUccInfo()
Preview(pos)
UseApplyUccItem(pos)
CanUseHousingUcc()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Indun
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
IsEntranceIndunMatch()
IsNonRoundUiInstance()
AskLeaveInstantGame()
GetRoundIndunActivation()
GetTotalRound()
GetRoundInfo()
GetRoundLeftTime()
GetTimeLimitRound()
GetNpcInfoBroadcastingCountOfLeftTime()
GetNpcInfoBroadcastingCountOfStack()
SetInstanceGameDifficult(difficult)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2IngameShop
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
BM_SELECTED
BM_CART_ALL
CU_NONE
CU_ALL
CU_BUY_PRESENT
CU_BUY_CART
CU_BUY
BFR_NONE
BFR_NORMAL
BFR_CASH
BFR_AA_POINT
BFR_FRIEND_NAME
BFR_SOLD_OUT
BFR_EXPIRED_DATE
BFR_COUNT_PER_ACCOUNT
BFR_SAME_ACCOUNT
BFR_LIMITED_TOTAL_PRICE
BFR_SECOND_PASSWORD
BFR_BM_MILEAGE
BFR_GOLD
BFR_INVALID_ACCOUNT
BFR_DELETED_CHARACTER
BFR_TRANSFER_CHARACTER
BFR_CANNOT_USE_AACOIN_FOR_GIFT
BFR_BILL
CFR_NONE
CFR_NORMAL
CFR_FULL
STOP_SALE_NONE
STOP_SALE_BY_COUNT
STOP_SALE_BY_ENDDATE
STOP_SALE_BY_STARTDATE
STOP_SALE_BY_LIMIT_OVER
PRICE_TYPE_AA_CASH
PRICE_TYPE_AA_POINT
PRICE_TYPE_BM_MILEAGE
PRICE_TYPE_REAL_MONEY
PRICE_TYPE_ITEM
PRICE_TYPE_AA_BONUS_CASH
PRICE_TYPE_AA_CASH_AND_BONUS_CASH
PRICE_TYPE_GOLD
ICS_GRW_INVALID
ICS_GRW_CHARGED_MAIL
ICS_GRW_EXPRESSS_MAIL
ICS_GRW_INVENTORY
MAX_INGAME_SHOP_UPDATE
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
CheckReady()
GetMainTabs()
GetSubTabs()
GetFirstMainTab()
GetFirstSubTab(mainTab)
GetGoodsPerPage()
SelectMainTab(mainTab, subTab)
SelectSubTab(subTab)
SelectPage(page)
GetGoods(page, index)
SelectGoods(page, index)
CheckSelectedGoodsDetail(index)
GetSelectedGoods(present)
PutSelectedGoodsInCart()
GetCartInfos(present)
DeleteGoodsInCart(index)
RequestBuy(buyMode, receiverName)
GetBuyResult()
IsInGameShopEnable()
EnterBeautyShop()
GenderTransfer()
CheckWaitingServer()
GetSecondPriceType()
Search(keyward, matchWord)
LeaveSearch()
IsSearchMode()
GetSortFilter()
Sort(sortType)
LeaveSort()
ToggleCommercialMailBox()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Input
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetMousePos()
IsShiftKeyDown()
IsControlKeyDown()
IsAltKeyDown()
SetInputLanguage(language)
GetInputLanguage()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Interaction
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
CancelNPCInteraction()
GetInteractionSkillIconPath(item)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Item
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
ITEM_TASK_HOUSE_CREATION
ITEM_TASK_TRADE
ITEM_TASK_INVALID
ITEM_TASK_MAIL
ITEM_MATE_UNSUMMON
ITEM_MATE_NOT_EQUIP
ITEM_SLAVE_UNSUMMON
ITEM_SLAVE_NOT_EQUIP
ITEM_TASK_CRAFT_PICKUP_PRODUCT
ITEM_SECURITY_INVALID
ITEM_SECURITY_LOCKED
ITEM_SECURITY_UNLOCKED
ITEM_SECURITY_UNLOCKING
MAX_ITEM_SOCKETS
BPT_GOODS
BPT_TRADEGOODS
ISLOT_EQUIPMENT
ISUS_UPGRADE
ISUS_MAX_UPGRADE
ISUS_MISS_MATCH
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
InfoFromLink(linkText)
IIK_TYPE()
IIK_NAME()
IIK_GRADE()
IIK_GRADE_STR()
IIK_IMPL()
IIK_SELL()
IIK_STACK()
IIK_CATEGORY()
IIK_CONSUME_ITEM()
IIK_SOCKET_MODIFIER()
NORMAL_ITEM_GRADE()
POOR_ITEM_GRADE()
MAX_SET_ITEMS()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetItemInfoByType(type)
GetGearScore(type)
GetItemGradeIconPath(itemGrade)
GetItemIconSet(type, grade)
Cooldown(type)
Name(type)
CountInBag(type)
CountInEquipment(type)
Count(type)
Info(type)
CombinedSkill(type)
CombinedBuff(type)
StatDelta(type)
Stats(type)
IsSoulBoundable(type)
IsConsumable(type)
IsEquippable(type)
IsEquipped(type)
IsUsable(type)
IsInRange(type)
IsStackable(type)
IsSellable(type)
IsGradeable(type)
IsPetArmor(type)
IsBundle(type)
CanEquip(type)
Description(type)
RepairAll()
RepairAllCost()
EnterRepairMode()
LeaveRepairMode()
IsInRepairMode()
EnterSecurityLockMode()
LeaveSecurityLockMode()
IsInSecurityLockMode()
EnterSecurityUnlockMode()
LeaveSecurityUnlockMode()
IsInSecurityUnlockMode()
EnterSlaveEquipChangeMode()
LeaveSlaveEquipChangeMode()
IsInSlaveEquipChangeMode()
GroupTypes()
GroupName(itemGroupType)
GroupDescription(itemGroupType)
AllGradeTypes()
NoPoorGradeTypes()
GradeColor(grade)
GradeName(grade)
IsLimitGrade(type, grade)
GetLevelRequirement(type)
GetExpeditionLevelRequirement(type)
GetSecurityUnlockDelayTime()
GetItemSideEffect(type)
GetItemLinkedTextByItemType(type)
CheckSecondPassword()
IsShowEquipItemLockUI()
GetItemInfoToItemGuide(type)
GetAllItems()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2ItemEnchant
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
IGER_BREAK
IGER_DOWNGRADE
IGER_DISABLE
IGER_FAIL
IGER_SUCCESS
IGER_GREAT_SUCCESS
IGER_RESTORE_DISABLE
IEBCT_ENCHANT_SUCCESS
IEBCT_ENCHANT_GREATE_SUCCESS
IEBCT_EVOVING
ICMR_SUCCESS
ICMR_FAIL
ICMR_FAIL_DISABLE_ENCHANT
IAAIS_INHERIT
IAAIS_RANDOM
IAAIS_DELETE
MAX_ITEM_EVOLVE_MATERIAL_SLOT
AT_CLOTH
AT_LEATHER
AT_METAL
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
EnterItemEnchantMode()
SwitchItemEnchantGradeMode()
SwitchItemEnchantSocketInsertMode()
SwitchItemEnchantSocketRemoveMode()
SwitchItemEnchantSocketExtractMode()
SwitchItemEnchantSocketUpgradeMode()
SwitchItemEnchantGemMode()
SwitchItemEnchantEvolvingMode()
SwitchItemEnchantEvolvingReRollMode()
SwitchItemRefurbishmentMode()
SwitchItemSmeltingMode()
SwitchItemAwakenMode()
SwitchItemEnchantElementMode()
LeaveItemEnchantMode()
GetEnchantConsumeLp()
GetElementComsumeTax()
SetTargetItemSlotFromPick()
GetTargetItemInfo()
ClearTargetItemSlot()
SetEnchantItemSlotFromPick()
GetEnchantItemInfo()
ClearEnchantItemSlot()
IsEvolvingReRollSelect()
SetSupportItemSlotFromPick()
GetSupportItemInfo()
ClearSupportItemSlot()
SetMaterialItemSlotFromPick(index)
GetMaterialItemInfo(index)
ClearMaterialItemSlot(index)
Execute()
GetRatioInfos()
GetEvolvingDiffAttrs()
GetEvolvingEnableGradeupCount()
GetEvolvingCanGradeupCount()
GetEvolvingAddibleRndAttrCount()
GetLeftBatchCount()
IsWorkingEnchant()
StopEnchanting()
GetSocketingExtraCost()
GetItemSocketMax()
SetSocketUpgradeSelect(index, checked, selectBitFlag)
GetEvolvingRndAttrsInfo(index)
GetEvolvingExpInfo()
GetItemElementExpInfo()
SetAutoMaterials(reset)
IsSmeltingSmeltable(targetItemCount)
UpdateSmeltingEnchantMode(targetItemCount)
GetSmeltingTargetRequirementsInfo(itemType, targetItemCount)
GetSmeltingResultsInfo(itemType, targetItemCount)
GetSmeltingEnchantRequirementsInfo(targetItemType, enchantItemType, targetItemCount)
SetSmeltingTargetItemCount(targetItemCount)
GetAwakenResultInfo()
GetItemElementList()
GetWeaponElementName(equipSlot)
GetWeaponElementValue(equipSlot)
GetItemElementResist(unit, element)
GetElementNameByType(type)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2ItemGacha
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
EnterLootGachaMode()
LeaveLootGachaMode()
IsEntered()
SetSourceItemSlotFromPick()
GetSourceItemInfo()
ClearSourceItemSlot()
SetConsumeItemSlotFromPick()
GetConsumeItemInfo()
ClearConsumeItemSlot()
Execute()
GetLeftBatchCount()
IsWorkingLoot()
StopLooting()
GetMaxLootCount()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2ItemGuide
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
IGLMC_CRAFT
IGLMC_OTHER_CRAFT
IGLMC_INDUN
IGLMC_BOSS
IGLMC_ETC
IGLMC_SHOP
IGLMC_EVENT
IGLMC_INGAME_SHOP
IGLMC_REBUILDING
IGLMC_SOCKET_CHANGE
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetImpls()
GetCategories()
GetCategoryInfos(aCategory, bCategory, lootIndex, grade)
GetSpecifiedItems(aCategory, bCategory, equipItemGuideType, grade)
GetIndunPortalInfo(indunZoneKey)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Locale
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
HasLocalizeUiText()
LocalizeUiText()
LocalizeFormatUiText()
TextFormating(text)
GetLocale()
GetLocaleIndex()
GetKeyboardLayout()
LocalizeNonUiText()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2LoginCharacter
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
LOW_CONGESTION
MIDDLE_CONGESTION
HIGH_CONGESTION
FULL_CONGESTION
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
NewCharacter(characterInfo)
ApplyEditCharacter(characterInfo)
SetUsingGradeRatingStage(use)
SetUsingHealthNoticeStage(use)
EndCurrentLoginStage()
CreateCharacter()
EditCharacter(index)
CharacterSelect()
GetLastPlayedWorldInfo()
GetLastPlayedCharacterIndex()
CheckPremiumUserServer()
SelectCharacter(index, skipClientDriven)
ShowSelectedCharacter(index)
ShowPreviewRaceGender(raceName, genderName)
GetNumLoginCharacters()
GetLoginCharacterName(index)
GetLoginCharacterRace(index)
GetLoginCharacterGender(index)
GetLoginCharacterAbilities(index)
GetLoginCharacterLevel(index)
GetLoginCharacterHeirLevel(index)
GetLoginCharacterZone(index)
GetLoginCharacterFaction(index)
GetLoginCharacterFactionName(index)
GetLoginCharacterLaborPower(index)
GetLoginCharacterLocalLaborPower(index)
GetLoginCharacterPremiumGrade(index)
GetLoginCharacterMaxLaborPower(index)
GetLoginCharacterMoney(index)
GetLoginCharacterVisualRaceExpiredTimeStr(index)
IsDeleteRequestedCharacter(index)
GetCharacterDeleteWaitingTime(index)
IsTransferRequestedCharacter(index)
DeleteCharacterCheckName(index, name)
DeleteCharacter(index)
CancelCharacterDelete(index)
IsInEnableStartingLocation(index)
CanShowClientDrivenSkipDialog(index)
RequestCharacterListRefresh(force)
ChangeCharacterFace(faceName)
GetCustomizingUnit()
ShowSkillAction(ability)
UsePremiumEntrance()
IsInPremiumQueue()
GetWorldNormalQueueLength()
GetWorldPremiumQueueLength()
GetWorldQueuePosition()
GetWorldQueueExpectedTime()
ConnectToWorld()
CancelWorldQueue()
EndCharacterCreate(gotoNext)
EndCharacterCustomize(gotoNext)
EndCharacterAbility(gotoNext)
GotoCharacterSelect()
ReviewMovie()
GetCurrentStage()
SetTimeOfDay(time)
GetSkillTooltip(skillId)
IsRecustomizing()
GetEditUnitGender()
GetEditUnitRace()
GetEditUnitAbility()
GetEditUnitName()
GetLoginCharacterBmPoint(index)
ShowStaffWindow()
HideStaffWindow()
StartRaceIntroMovie()
IsForceNameChangedCharacter(index)
RenameCharacter(index, name)
SetRepresentCharacter(index)
DeleteRepresentCharacter(index)
GetRepresentCharacterIndex()
GetLoginStageTOD()
SetLoginStageTOD(hour, minute)
GetEquipedItem(equipSlot)
SetEquipedItem(equipSlot, itemType)
GetEquipItemList(equipSlot)
SetClothPack(clothPack)
CheckULCAbilityValidation(abilIndex, showErrMsg)
GetLastAbility()
DoTransform()
IsFrozen()
SetFreeze(isStop)
SetCustomizingLight(on)
SkipSkillAction(skip)
IsSkipSkillAction()
GetRaceList()
GetAbilityList()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Loot
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
DRK_DEFAULT
DRK_AUTO_ACCEPT
DRK_AUTO_GIVEUP
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetNumLootItems()
GetLootingBagItemInfo(slot)
GetLootingBagItemTooltipText(slot)
LootItem(slot)
CloseLoot()
GetLootItemSoundType(slot)
DoDiceAction(key, roll)
RequestNextDiceItem()
SetMaxConcurrentNotifyDiceItem(count)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Mail
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
MAIL_LIST_INVALID
MAIL_LIST_START
MAIL_LIST_CONTINUE
MAIL_LIST_END
MLK_INBOX
MLK_OUTBOX
MLK_COMMERCIAL
SIMT_SCHEDULE_ITEM_NORMAL_MAIL
SIMT_SCHEDULE_ITEM_CUSTOM_MAIL
MAIL_NORMAL
MAIL_EXPRESS
MAIL_ADMIN
MAIL_BILLING
MAIL_BALANCE_RECEIPT
MAIL_TAXRATE_CHANGED
MAIL_AUC_OFF_CANCEL
MAIL_AUC_OFF_SUCCESS
MAIL_AUC_OFF_FAIL
MAIL_AUC_BID_WIN
MAIL_AUC_BID_FAIL
MAIL_SYS_EXPRESS
MAIL_SYS_SELL_BACKPACK
MAIL_DEMOLISH_WITH_PENALTY
MAIL_HOUSING_SALE
MAIL_MOBILIZATION_GIVE_ITEM
MAIL_HERO_CANDIDATE_ALARM
MAIL_HERO_ELECTION_ITEM
MAIL_HOUSING_REBUILD
MAIL_DEMOLISH
MAIL_TAX_IN_KIND_RECEIPT
MAIL_RESIDENT_BALANCE
MAIL_BATTLE_FIELD_REWARD
MAIL_CRAFT_ORDER
MAIL_HERO_DROPOUT_COMEBACK_REQUEST
MAIL_FROM_BUTLER
MAIL_CHARGED
MAIL_PROMOTION
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
CanSendMail()
SendMail(mailTable)
PlaceMailItem(index)
PlaceMailItemFromBag(index, bagId, slotIndex)
GetMailItem(index)
GetNormalMailCost(moneyAttached)
GetNormalMailAttachmentCost()
GetExpressMailCost(moneyAttached)
GetExpressMailAttachmentCost()
GetMailEmptyItemIndex()
ClearMailItem(index)
GetReceivedMailCount()
GetReceivedMailTitleInfo(index)
GetPostedMailCount()
GetPostedMailTitleInfo(index)
ReadReceivedMail(index)
ReadReceivedMailById(idStr)
ReadPostedMail(index)
ReadPostedMailById(idStr)
IsExistCurrentMailBody()
GetCurrentMailBody()
GetCurrentMailType()
DeleteCurrentMail()
ClearCurrentMail()
GetCurrentMailItem(index)
TakeAttachmentSequentially(idStr)
TakeCurrentMailItem(index)
TakeAllCurrentMailItem()
GetCurrentMailMoneyStr()
TakeCurrentMailMoney()
GetCurrentMailChargeMoneyStr()
GetCurrentMailAAPointStr()
GetCurrentMailHonorPointStr()
PayCurrentMailChargeMoney()
GetCountUnreadMail()
GetAttachedItemCountById(isSent, idStr)
GetCurrentMailAttachedItemCount()
DeleteMailById(isSent, idStr)
ReturnMailById(idStr)
IsReturnedMail(idStr)
IsReturnedCurrentMail()
IsSystemMail(idStr)
IsBillingMail(idStr)
IsBalanceReceiptMail(idStr)
IsTaxInKindReceiptMail(idStr)
IsTaxRateChangedMail(idStr)
IsHeroDropoutComebackRequestMail(idStr)
IsUserMail(idStr)
ReportSpam(idStr)
GetQuestMailSender(id)
RequestMailList(mailType, startIdx, sentCnt)
CompleteMailList()
GetCurrencyForAttachment()
GetCurrencyForFee()
ToggleMailBox()
SetWriting(isWriting)
SetReading(isReading)
IsReportedSpamMail(postIdx)
OpenGoodMailWarringSite()
ComebackRequestAccept()
GetAttachmentMoneyLimit(isGroupMail)
GetCacheBodyInfo(isSent, index)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Map
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
MST_QUEST_TALK_OR_EMPLOYMENT
MST_QUEST_MAIN_GIVES
MST_QUEST_ZONE_GIVES
MST_QUEST_REPEAT
MST_QUEST_MAIN_COMPLETES
MST_QUEST_MAIN_PROGRESS
MST_QUEST_ZONE_COMPLETES
MST_QUEST_ZONE_PROGRESS
MST_QUEST_LIVELIHOOD_GIVES
MST_QUEST_LIVELIHOOD_COMPLETE
MST_QUEST_HUNT_GIVES
MST_QUEST_NOTIFIER
MST_PARTY
MST_RAIDTEAM
MST_OFFLINE_PARTY
MST_RAIDTEAM_OWNER
MST_OVER_HEAD_MARK1
MST_OVER_HEAD_MARK2
MST_OVER_HEAD_MARK3
MST_OVER_HEAD_MARK4
MST_OVER_HEAD_MARK5
MST_OVER_HEAD_MARK6
MST_OVER_HEAD_MARK7
MST_OVER_HEAD_MARK8
MST_OVER_HEAD_MARK9
MST_OVER_HEAD_MARK10
MST_OVER_HEAD_MARK11
MST_OVER_HEAD_MARK12
MST_QUEST_LETIT
MST_QUEST_OVER
MST_NPC_STATION
MST_NPC_GRAVEYARD
MST_NPC_ABILITY_CHANGER
MST_NPC_STABLER
MST_FRIENDLY
MST_HOSTILE
MST_NPC_STORE_POTION
MST_NPC_STORE_CLOTHES
MST_NPC_STORE_FOOD
MST_NPC_STORE_WEAPON
MST_NPC_STORE_DEFENSE
MST_NPC_STORE_TREE
MST_NPC_STORE_PLANTS
MST_NPC_STORE_MATERIAL
MST_NPC_STORE_GOODS
MST_NPC_STORE_ENLISTING
MST_NPC_STORE_SHIP
MST_NPC_STORE_SIEGE_WEAPON
MST_NPC_STORE_BUILDING
MST_NPC_STORE_FURNITURE
MST_NPC_STORE_LIVESTOCK
MST_NPC_STORE_BANK
MST_NPC_STORE_AUCTION_HOUSE
MST_NPC_STORE_EXPEDITION
MST_NPC_STORE_PIRATE_EXPEDITION
MST_NPC_STORE_TERRITORY
MST_NPC_STORE_TRADE
MST_NPC_STORE_DELPHINAD
MST_NPC_STORE_ROAMER
MST_NPC_STORE_BLACKSMITH
MST_NPC_STORE_GLADIATOR
MST_NPC_STORE_HONOR_POINT_COLLECTOR
MST_NPC_INSTANCE_TARGET_CORPS1
MST_NPC_INSTANCE_TARGET_CORPS2
MST_NPC_SPECIALTY_GOODS_TRADER
MST_NPC_SPECIALTY_TRADEGOODS_TRADER
MST_NPC_SPECIALTY_TRADEGOODS_SELLER
MST_NPC_SPECIALTY_TRADEGOODS_BUYER
MST_HOUSING_HOUSE
MST_HOUSING_FARM
MST_HOUSING_FISHFARM
MST_HOUSING_FAMILY_HOUSE
MST_HOUSING_FAMILY_FARM
MST_HOUSING_FAMILY_FISH_FARM
MST_HOUSING_EXPED_HOUSE
MST_HOUSING_EXPED_FARM
MST_HOUSING_EXPED_FISH_FARM
MST_MY_CROPS
MST_CORPSE_POS
MST_MY_PING
MST_PORTAL
MST_SHIP
MST_SHIPYARD
MST_SHIP_ENEMY
MST_SHIPYARD_ENEMY
MST_COMMON_FARM
MST_TRANSFER_AIRSHIP
MST_TRANSFER_CARRIAGE
MST_TRANSFER_LANDSHIP
MST_TRANSFER_CRUISER
MST_FORCE_RELEASED_SHIP
MST_FORCE_RELEASED_VEHICLE
MST_FISH_SCHOOL
MST_BOSS
MST_DOODAD_MAIL
MST_DOODAD_INN
MST_DOODAD_LEATHER
MST_DOODAD_CRAFT
MST_DOODAD_METAL
MST_DOODAD_MACHINERY
MST_DOODAD_TIMBER
MST_DOODAD_WOODWORK
MST_DOODAD_WEAPON
MST_DOODAD_STONE
MST_DOODAD_ARCHIUM
MST_DOODAD_ALCHEMY
MST_DOODAD_COOK
MST_DOODAD_COATOFARMS
MST_DOODAD_FABRIC
MST_DOODAD_SPECIAL_PRODUCT
MST_DOODAD_LIGHT_ARMOR
MST_DOODAD_LEATHER_ARMOR
MST_DOODAD_HEAVY_ARMOR
MST_DOODAD_PAPER
MST_DOODAD_PRINT
MST_DOODAD_FISH_STAND
MST_DOODAD_ART_WORK
MST_DOODAD_PORTAL
MST_DOODAD_PORTAL_ARCHEMALL
MST_DOODAD_PORTAL_DUNGEON
MST_DOODAD_CRAFT_ORDER_BOARD
MST_HOUSE_NORMAL_HOUSE
MST_HOUSE_SEA_FARM_HOUSE
MST_HOUSE_HIGH_HOUSE
MST_HOUSE_PUMPKIN_HOUSE
MST_HOUSE_FARM_HOUSE
MST_HOUSE_BENNY_HOUSE
MST_HOUSE_BUNGALOW_HOUSE
MST_MY_SLAVE
MST_PLAYER
MST_TERRITORY_A
MST_TERRITORY_B
MST_TERRITORY_C
MST_TRADE_ROUTE
MST_LIGHT_HOUSE
MST_NPC_OCEAN_TRADER
MST_DOODAD_HAMMER
MST_FACTION_HQ
MST_DOODAD_MATE_EQUIPMENT
MST_DOODAD_SLAVE_EQUIPMENT
MST_PING_ENEMY
MST_PING_ATTACK
MST_PING_LINE
MST_DOODAD_RAID_PURITY
MST_RESIDENT_HALL
MST_SEA_GIMIC
MST_JOINT_RAID_TEAM
MST_JOINT_RAID_LEADER
MST_JOINT_RAID_OFFICER
MST_MAX
FILTER_INVALID
FILTER_NPC
FILTER_DOODAD
FILTER_HOUSE
FILTER_STRUCTURE
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetZoneStateInfoByZoneId(zoneId)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
UpdateNotifyQuestInfo(decalIndex, qType, show)
RemoveNotifyQuestInfo(qType)
RemoveAllNotifyQuestInfo()
SetNotifyCoords(path, keyTable)
SetNotifyAreaCoords(path, keyTable)
SetNotifyAreaColors(count, colors)
SetShipCoords(path, keyTable)
SetMapFilter(npcIcon, checked)
SetShowFilter(filter, checked)
GetDefault()
GetCheckList(filter)
GetMapIconCoord(symbolType)
GetTelescopeUnitHealth(id)
GetMySlaveHealth()
GetMapIconText(index)
GetZoneListByWorldId(worldId)
IsCheckedMapFilter(symbolType)
GetZoneGroupOfCity(zoneId)
SetSafeAreaTextureSettings(count, settings)
GetZoneFactionCompetitionInfo()
GetZoneFactionCompetitionRemainTime(zoneGroup)
GetTowerDefAlarmInfo(zoneId)
GetZoneDoodadText(zoneGroup)
GetZoneStateTextInfo(state)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Mate
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
MATE_TYPE_NONE
MATE_TYPE_RIDE
MATE_TYPE_BATTLE
MAX_MATE_SKILL
MATE_COMMAND_EQUIP
MATE_COMMAND_TOGGLE_MOUNT
MATE_COMMAND_PASSENGER_GET_OFF
MATE_COMMAND_RELEASE
MATE_COMMAND_ATTACK
MATE_COMMAND_MAX
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
DismissPet(mateType)
PassiveMode(mateType)
StandMode(mateType)
ProtectiveMode(mateType)
AggressiveMode(mateType)
OrderAttackTarget(mateType)
IsMyPet(stringId)
IsPlayerPetExists(mateType)
IsAttackablePet(mateType)
IsMountablePet(mateType)
IsHavePassengerSeat(mateType)
PetState(mateType)
GetPetExpToNextLevel(mateType)
MountMate(mateType)
UnMountMate()
CanMount(mateType)
CanUnmount()
CanDismiss(mateType)
KickPassenger()
HavePassenger(mateType)
IsTargetMyMate()
IsPlayerMounting()
SetMateName(mateType, name)
GetNumMountSkills(mateType)
GetMountSkill(mateType, index)
GetAutoStartMountSkill(mateType, index)
GetSpeedInfo(mateType)
GetCommandIconInfo()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2MiniScoreboard
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
ENSMK_HP
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetInfo()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2NameTag
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
NAME_TAG_MODE_DEFAULT
NAME_TAG_MODE_BATTLE
NAME_TAG_MODE_LIFE
NAME_TAG_MODE_BOX
NAME_TAG_MODE_MAX
NAME_TAG_FACTION_EXPEDITION
NAME_TAG_FACTION_FACTION
NAME_TAG_FACTION_FAMILY
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
SetNameTag()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Nation
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
NR_INVALID
NR_WAR
NR_HOSTILE
NR_FRIENDLY
NR_NATIVE
NR_LIGEANCE
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetNationBaseInfo(factionId)
SetDominionColors(colorInfo)
SetDominionCustomColor(zoneGroupType, colorTable)
SetNationRelationColors(colorInfo)
AdjustDomionRelation(drawable, path, factionId)
GetDominionList(factionId)
GetDominionListAll()
GetNationalDominionInfo(zoneGroupType)
GetNationList()
GetRelationList(factionId)
GetRelationHistoryList(checkExpire)
CanGetRelationCount()
GetRelationCount(charId)
CanDiplomacy()
RequestDiplomacy(charId, factionId)
ResponseDiplomacy(ok)
DiplomacyDialogTimeout()
GetPowerGrade(factionId)
GetNationImmigrateInfo(factionId)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2OneAndOneChat
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
OnChatClosed(channelId)
OnChatEntered(channelId, message)
GetChatDataList()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Option
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
OIT_R_FULLSCREEN
OIT_R_DESIREWIDTH
OIT_R_DESIREHEIGHT
OIT_R_GAMMA
OIT_SYS_MAX_FPS
OIT_SYS_USE_LIMIT_FPS
OIT_R_VSYNC
OIT_NEXT_R_MULTITHREADED
OIT_NEXT_R_DRIVER
OIT_R_PIXELSYNC
OIT_UI_SCALE
OIT_MASTERGRAHICQUALITY
OIT_NEXT_SYS_SPEC_FULL
OIT_OPTION_TEXTURE_BG
OIT_OPTION_TEXTURE_CHARACTER
OIT_OPTION_VIEW_DISTANCE
OIT_OPTION_TERRAIN_DETAIL
OIT_OPTION_TERRAIN_LOD
OIT_OPTION_VIEW_DIST_RATIO
OIT_OPTION_VIEW_DIST_RATIO_VEGETATION
OIT_OPTION_CHARACTER_LOD
OIT_OPTION_USE_SHADOW
OIT_OPTION_SHADOW_DIST
OIT_OPTION_SHADOW_VIEW_DIST_RATIO_CHARACTER
OIT_OPTION_SHADOW_VIEW_DIST_RATIO
OIT_OPTION_SHADER_QUALITY
OIT_OPTION_VOLUMETRIC_EFFECT
OIT_OPTION_USE_CLOUD
OIT_E_ZONEWEATHEREFFECT
OIT_OPTION_WEAPON_EFFECT
OIT_OPTION_EFFECT
OIT_OPTION_WATER
OIT_OPTION_USE_WATER_REFLECTION
OIT_OPTION_USE_HDR
OIT_OPTION_USE_DOF
OIT_OPTION_ANTI_ALIASING
OIT_OPTION_ANIMATION
OIT_NEXT_OPTION_SOUND
OIT_S_GAMEMASTERVOLUME
OIT_S_MUSICVOLUME
OIT_S_SFXVOLUME
OIT_SOUND_MOOD_COMBAT_ENABLE
OIT_S_CINEMAVOLUME
OIT_S_MIDIVOLUME
OIT_USER_MUSIC_DISABLE_SELF
OIT_USER_MUSIC_DISABLE_OTHERS
OIT_S_VEHCLEMUSICVOLUME
OIT_NAME_TAG_MODE
OIT_NAME_TAG_APPELLATION_SHOW
OIT_NAME_TAG_FACTION_SHOW
OIT_NAME_TAG_HP_SHOW
OIT_NAME_TAG_SELF_ENABLE
OIT_NAME_TAG_PARTY_SHOW
OIT_NAME_TAG_EXPEDITION_SHOW
OIT_NAME_TAG_FRIENDLY_SHOW
OIT_NAME_TAG_HOSTILE_SHOW
OIT_NAME_TAG_MY_MATE_SHOW
OIT_NAME_TAG_FRIENDLY_MATE_SHOW
OIT_NAME_TAG_HOSTILE_MATE_SHOW
OIT_NAME_TAG_NPC_SHOW
OIT_NAME_TAG_FACTION_SELECTION
OIT_SHOWHEATLTHNUMBER
OIT_SHOWMAGICPOINTNUMBER
OIT_SHOWBUFFDURATION
OIT_SHOWTARGETCASTINGBAR
OIT_SHOWTARGETTOTARGETCASTINGBAR
OIT_VISIBLEMYEQUIPINFO
OIT_FIXEDTOOLTIPPOSITION
OIT_SHOWEMPTYBAGSLOTCOUNTER
OIT_SHOWCHATBUBBLE
OIT_SHOWFPS
OIT_SHOWPLAYERFRAMELIFEALERTEFFECT
OIT_USEQUESTDIRECTINGCLOSEUPCAMERA
OIT_SHOWACTIONBAR_1
OIT_SHOWACTIONBAR_2
OIT_SHOWACTIONBAR_3
OIT_SHOWACTIONBAR_4
OIT_SHOWACTIONBAR_5
OIT_SHOWACTIONBAR_6
OIT_CLICK_TO_MOVE
OIT_USE_CELERITY_WITH_DOUBLE_FORWARD
OIT_GLIDER_START_WITH_DOUBLE_JUMP
OIT_DOODAD_SMART_POSITIONING
OIT_DECORATION_SMART_POSITIONING
OIT_SHOW_GUIDEDECAL
OIT_FIRE_ACTION_ON_BUTTON_DOWN
OIT_AUTO_ENEMY_TARGETING
OIT_AUTO_USE_ONLY_MY_PORTAL
OIT_SMART_GROUND_TARGETING
OIT_USE_AUTO_REGIST_DISTRICT
OIT_OPTION_ITEM_MOUNT_ONLY_MY_PET
OIT_COMBAT_MSG_LEVEL
OIT_COMBAT_MSG_VISIBILITY
OIT_COMBAT_MSG_DISPLAY_SHIP_COLLISION
OIT_OPTION_CAMERA_FOV_SET
OIT_CUSTOM_FOV
OIT_CUSTOM_CAMERA_MAX_DIST
OIT_CUSTOM_ZOOM_SENSITIVITY
OIT_CAMERA_USE_SHAKE
OIT_CR_SENSITIVITY
OIT_CR_INVERT_X_AXIS
OIT_CR_INVERT_Y_AXIS
OIT_CURSOR_SIZE
OIT_BASIC_CURSOR_SHAPE
OIT_SKILL_SYNERGY_INFO_SHOW_TOOLTIP
OIT_SKILL_DETAIL_DAMAGE_SHOW_TOOLTIP
OIT_ITEM_MAKER_INFO_SHOW_TOOLTIP
OIT_G_IGNORE_PARTY_INVITE
OIT_G_IGNORE_RAID_INVITE
OIT_G_IGNORE_RAID_JOINT
OIT_G_IGNORE_SQUAD_INVITE
OIT_G_IGNORE_EXPEDITION_INVITE
OIT_G_IGNORE_FAMILY_INVITE
OIT_G_IGNORE_JURY_INVITE
OIT_G_IGNORE_TRADE_INVITE
OIT_G_IGNORE_WHISPER_INVITE
OIT_G_IGNORE_DUEL_INVITE
OIT_G_IGNORE_CHAT_FILTER
OIT_G_USE_CHAT_TIME_STAMP
OIT_ACTION_BAR_LOCK
OIT_SLOT_COOLDOWN_VISIBLE
OIT_G_HIDE_TUTORIAL
OIT_G_SHOW_LOOT_WINDOW
OIT_E_CUSTOM_CLONE_MODE
OIT_E_CUSTOM_MAX_CLONE_MODEL
OIT_E_CUSTOM_MAX_MODEL
OIT_OPTION_MAP_GIVEN_QUEST_DISTANCE
OIT_OPTION_SKILL_ALERT_ENABLE
OIT_OPTION_SKILL_ALERT_POSITION
OIT_OPTION_OPTIMIZATION_ENABLE
OIT_OPTION_SHOW_COMBAT_RESOURCE_WINDOW
OIT_OPTION_CHARACTER_PRIVACY_STATUS
OIT_GIVEN_QUEST_DISTANCE_DISPLAY_MODE
OIT_OPTION_DISABLE_PRIVATE_MESSAGE_MUSIC
OIT_OPTION_USE_KR_FONTS
OIT_OPTION_ENABLE_COMBAT_CHAT_LOG
OIT_OPTION_ENABLE_MISC_CHAT_LOG
OIT_NAME_TAG_EXPEDITIONFAMILY_SHOW
OIT_OPTION_HIDE_ENCHANT_BROADCAST
OIT_OPTION_OVERHEAD_MARKER_FIXED_SIZE
OIT_OPTION_HIDE_MOBILIZATION_ORDER
OIT_OPTION_HIDE_BLOODLUST_MODE
OIT_OPTION_CUSTOM_SKILL_QUEUE
OIT_OPTION_CUSTOM_ADDON_FONTS
OIT_OPTION_CUSTOM_ADDON_UI
OIT_OPTION_GAME_LOGS_LIFE_TIME
OIT_SHOWGAMETIME
OIT_SHOWSERVERTIME
OISLT_CHARACTER
OISLT_SYSTEM
OISLT_CHARACTER_MODE
MAX_ACTION_BAR_COUNT
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
Save()
Reset()
CreateOptionItemFloat(name, value)
CreateOptionItemString(name, value)
GetOptionItemValue(optionType)
GetOptionItemValueByName(name)
SetItemFloatValue(optionType, value)
SetItemFloatValueWithoutModify(optionType, value)
SetItemFloatValueByName(name, value)
SetItemStringValue(optionType, value)
SetItemStringValueByName(name, value)
SetItemDefaultFloatValue(optionType, value)
SetItemDefaultFloatValueByName(name, value)
SetItemDefaultStringValue(optionType, value)
SetItemDefaultStringValueByName(name, value)
GetResolutionCount()
GetResolution(index)
GetCursorSize()
GetBasicCursorShape()
EnumAAFormats()
GetNextSysSpecFullValue()
GetMinxMaxOfMouseSensitivity()
IsPixelSyncSupported()
HasOceanSimulateOption()
OptimizationEnable(enable)
GetSubOptionItemList(modeOptionId, selected)
GetOptionInfo(optionType)
GetConsoleVariable(name)
SetConsoleVariable(name, value)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetModifiedRestartOption()
RemoveModifiedOption()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Player
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
SCREEN_NONE
SCREEN_LOGIN
SCREEN_WORLD_SELECT
SCREEN_CHARACTER_SELECT
SCREEN_CHARACTER_CREATE
SCREEN_INIT_WORLD
SCREEN_WORLD
SCREEN_INTRO
SCREEN_BASE
INSTANT_TIME_EXPEDITION_REJOIN
APPELATION_ROUTE_TYPE_QUEST_CONTEXTS
APPELATION_ROUTE_TYPE_ACHIEVEMENTS
APPELATION_ROUTE_TYPE_MERCHANT_PACKS
APPELATION_ROUTE_TYPE_HIDDEN
APPELATION_ROUTE_TYPE_ETC
APPELATION_ROUTE_TYPE_MAX
APPELLATION_LIST_PER_PAGE
ACCOUNT_RESTRICT_CODE_NONE
ACCOUNT_RESTRICT_CODE_NEXON
ACCOUNT_RESTRICT_CODE_XL
ZPW_ENTER
ZPW_WAIT
ZPW_OUT
ZPW_EXPEL
ZP_RESERVED
BOT_QUESTION_CHAR_SIZE
BOT_CHECK_ANSWER_COUNT
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetUnitAppellationRouteList()
GetAppellationCount()
GetAppellations(routeFilter, pageIndex)
GetAppellationsCount(routeFilter)
ChangeAppellation(nameType, effectType)
GetShowingAppellation()
GetEffectAppellation()
GetAppellationMyLevelInfo()
GetAppellationBuffInfoByLevels()
GetAppellationRouteInfo(type)
GetAppellationStampInfo()
GetAppellationMyStamp()
GetAppellationChangeItemInfo()
GetStampChangeItemInfo()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
IsPlayerAimming()
IsInIndunWithGraveyard()
IsInSeamlessZone()
GetResurrectionInfo()
Resurrect(kind)
GetBreathTime()
IsRuning()
IsBoundSlave()
PlayerInCombat()
GetExpInfo()
GetRecoverableExp()
IsTickRecoverLocalLaborPower()
IsUsingAccountLaborPower()
IsUsingLocalLaborPower()
GetGlobalLaborPower()
GetLocalLaborPower()
GetTotalLaborPower()
GetMaxLaborPower()
GetMaxLocalLaborPower()
GetPremiumServiceOnlineLaborPower()
GetPremiumServiceOfflineLaborPower()
GetOnlineLaborPowerChargeAmount()
GetOfflineLaborPowerChargeAmount()
GetRechargedLaborPowerInfo()
GetCrimeInfo()
GetGamePoints()
GetFeatureSet()
BackCarryingOrders()
GetBackCarryingOrderKeys()
ShowBackHoldable(show)
ShowCosplay(show)
IsInvisibleCosplay()
ShowBackPackWithCosplay(show)
GetJuryPoint()
GetJuryWaitingNumber()
OpendTutorialWindow(id)
GetPayMethod()
GetPayLocation()
HasSlaveUnit()
SetAppellationStamp(stampId)
GetUseULC()
GetULCList()
GetULCInfo(ulcType)
GetULCGuideInfo(ulcType)
RequestULCBuy()
IsEnableChat()
PlayCinema(name)
GetBmPoint()
GetAaCoin()
GetScheduleItemList(activeTake)
GetScheduleItemInfo(scheduleType)
TakeScheduleItem(scheduleType)
CheckEventScheduleState()
ExchangeCashToAAPoint(cashString)
RequestBuyAAPoint(cashString)
RequestRefreshCash()
GetExchangeRatio()
GetMyCash()
RequestCashCharge()
UseSteam()
RequestHelp(browserWidgetId)
RequestHome()
RequestTicket()
GetSensitiveOperationTime()
SetSensitiveOperationTime(time)
SensitiveOperationVerify(urlString)
CancelSensitiveOperationVerify(seqNum)
AskToggleForceAttack()
ToggleForceAttack()
RefreshBotCheckInfo()
AnswerBotCheck(answer)
GetUIScreenState()
GetPremiumItemReceiveCharacterName()
GetPcbangLaborPowerTic()
GetDefaultLaborPowerTic()
GetZonePermissionCondition()
OpenZonePermissionWaitWindow()
OpenZonePermissionOutWindow()
IsEnabledHeirLevel()
GetHeirExpInfo()
GetInstantTime(type)
HasAccountBuffUsingSpecialityConfig()
PlayCinemaByQuestType(type)
GetMinHeirLevel()
GetMaxHeirLevel()
GetProtectPvpLevel()
GetForceAttackLimitLevel()
GetReturnAccountItemType()
TakeReturnAccountItem()
IsReturnAccount()
GetReturnAccountStatus()
GetZoneScoreContents()
GetZoneScore(kindId)
UpdateZoneScoreContentState()
IsForeigner()
SetGameSchedule(enter)
SetSpecialty(enter)
IsAccountRestrictState()
GetAccountRestrictInfo()
GetCharacterPrivacyStatus()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2PremiumService
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
PSBFR_NONE
PSBFR_NORMAL
PSBFR_CASH
PSBFR_AA_POINT
PG_PREMIUM_0
PG_PREMIUM_1
PG_PREMIUM_2
PG_PREMIUM_3
PG_PREMIUM_4
PG_PREMIUM_5
PG_PREMIUM_6
PG_PREMIUM_7
PG_PREMIUM_8
PSBM_ONLY_PREMIUM_QUEST
PSBM_ONLINE_LABOR_POWER
PSBM_OFFLINE_LABOR_POWER
PSBM_ADD_MAX_LABOR_POWER
PSBM_GIVE_MILEAGE
PSBM_BATTLE_FILED_WIN
PSBM_BATTLE_FILED_LOSE
PSBM_GLADIATOR_FILED_WIN
PSBM_GLADIATOR_FILED_LOSE
PSBM_AUCTION_POST_AUTHORITY
PSBMT_VALUE
PSBMT_PECENT
PSBMT_CUSTOM
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetPremiumMaxGrade()
GetPremiumBuyMax()
GetPremiumServiceBuyData(row)
GetPremiumServiceBenefitMenuCount()
GetPremiumServiceBenefitMenuName(row)
GetPremiumServiceBenefitMenuData(row)
GetPremiumPoint()
GetPremiumSeviceEndTime()
IsPremiumService()
BuyPremiumService(index)
GetPremiumPointToGet()
GetPremiumGradePoint()
RequestPremiumServiceList()
IsPremiumSeviceListRequested()
RequestRefreshCash()
Initialize()
UsePcbangBuff()
GetPcbangBenefitList()
GetPcbangBenefitUiStyle()
OpenPremiumWarringSite(index)
IsPremiumNativeSite(index)
GetPremiumServiceBuyItemInfo()
GetPremiumServiceBuyCount(index)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Quest
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
CBK_NORMAL
CBK_THINK
CBK_SYSTEM
DOW_INVALID
DOW_SUNDAY
DOW_MONDAY
DOW_TUESDAY
DOW_WEDNESDAY
DOW_THURSDAY
DOW_FRIDAY
DOW_SATURDAY
QSTATFAILED_MAYBE_QUEST_LIST_FULL
QUEST_MARK_ORDER_MAIN
QUEST_MARK_ORDER_SAGA
QUEST_MARK_ORDER_DAILY
QUEST_MARK_ORDER_WEEKLY
QUEST_MARK_ORDER_DAILY_HUNT
QUEST_MARK_ORDER_LIVELIHOOD
QUEST_MARK_ORDER_NORMAL
QCS_COMPLETED
MAX_CHRONICLE_INFO_ACTIVE_COUNT
MAX_QUEST_OBJECTIVE
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetQuestContextMainTitle(type)
SetTrackingActiveQuest(idx)
GetActiveQuestListCount()
GetActiveQuestType(idx)
IsCompleted(type)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetQuestContextGrade(type)
GetQuestContextSummary(type)
GetQuestContextReadySummary(type)
GetQuestContextRewardSummary(type)
GetQuestContextBody(type)
GetQuestContextAcceptText(type)
GetQuestContextReportText(type)
TryStartQuestContext(who, qtype, stype, doodadId, npcStringId)
TryProgressTalkQuestComponent(qtype, ctype, atype, npcStringId, doodadStrId)
GetQuestContextRewardItemAllCount(type)
GetQuestContextRewardSelectiveItemAllCount(type)
GetQuestContextRewardAppellation(type)
GetQuestContextRewardCopper(type)
GetQuestContextRewardAAPoint(type)
GetQuestContextRewardExp(type)
GetQuestContextRewardItemIconType(type, idx)
GetQuestContextRewardItemName(type, idx)
GetQuestContextRewardItemCount(type, idx)
GetQuestContextRewardSelectiveItemIconType(type, idx)
GetQuestContextRewardSelectiveItemName(type, idx)
GetQuestContextRewardSelectiveItemCount(type, idx)
GetQuestContextItemTooltip(type, idx)
GetQuestContextSelectiveItemTooltip(type, idx)
GetQuestContextObjectiveCount(type)
GetQuestObjectiveText(type, idx)
GetLastQuest()
GetTrackingActiveQuest()
IsMainQuest(type)
IsSagaQuest(type)
IsLivelihoodQuest(type)
IsHiddenQuest(type)
IsDailyQuest(type)
IsWeeklyQuest(type)
IsRepeatableQuest(type)
GetQuestDetail(type)
IsSelectiveQuest(type)
IsTodayQuest(type)
IsGroupQuest(type)
GetQuestCategoryNameByQuestType(type)
GetQuestCategoryName(type)
GetQuestCategoryTypeByQuestType(type)
IsLetItDoneQuest(idx)
IsOverDoneQuest(idx)
IsLetItDoneQuestByType(type)
IsOverDoneQuestByType(type)
IsOverProgressQuestByType(type)
IsChapterDone(type)
GetQuestContextQuestChapterIdxByType(type)
GetQuestContextQuestIsHideChapterIdxByType(type)
GetQuestReportNpcTypeByQuestType(type)
GetQuestReportNpcNameByQuestType(type)
GetQuestRelatedNpcs(type)
GetItemSkillTargetStrByType(type)
GetUseTypeQuestItems(type, checkState)
GetUseTypeQuestItemsByObjIndex(qType, objIdx)
IsUseItemInActiveQuest(type)
IsQuestStartItem(type)
GetQuestContextLeftTime(type)
IsScoreQuest(idx)
GetScoreQuestObjective(idx)
GetScoreQuestCurrentScore(idx)
GetScoreQuestDoneScore(idx)
GetActiveQuestLevel(idx)
GetActiveQuestLevelByType(type)
GetActiveQuestListName(idx)
GetActiveQuestListStatus(idx)
GetActiveQuestListStatusByType(type)
GetActiveQuestComparedLevel(idx)
GetActiveQuestComparedLevelByType(type)
GetActiveQuestListObjectiveCount(idx)
GetActiveQuestListObjectiveText(idx, objIdx)
GetActiveQuestTitle(type)
GetActiveQuestObjectiveText(type, objIdx)
GetActiveQuestContextConditionMessage()
GetQuestName(questType)
GetQuestJournalTitle(idx)
GetQuestJournalSubTitle(idx)
GetQuestJournalSubTitleByType(type)
GetQuestCategoryTextByType(type)
GetQuestJournalProgTitle(idx)
GetQuestJournalProgTitleByType(type)
GetQuestJournalObjectiveCount(idx)
GetQuestJournalObjectiveCountByType(type)
GetQuestJournalObjectiveText(idx, objIdx)
GetQuestJournalObjectiveTextByType(type, objIdx)
GetQuestJournalBodyCount(idx)
GetQuestJournalBodyText(idx, bodyIdx)
TryCompleteQuestContext(who, qtype, doodadId, npcStringId, selected)
TrySelectQuestContextToNpc(who, npcStringId)
TrySelectQuestContextToDoodad(who, doodadStringId)
GetNpcQuestContextCountStart()
GetNpcQuestContextCountProgress()
GetNpcQuestContextCountComplete()
GetNpcQuestContextCountTalk()
GetNpcQuestContextQuestTypeStart(idx)
GetNpcQuestContextQuestTypeProgress(idx)
GetNpcQuestContextQuestTypeComplete()
GetNpcQuestContextQuestTypeTalk(idx)
CallQuestUi(type, questType, npcStringId)
CallQuestTalk(qtype, ctype, npcStringId, doodadId)
CallQuestSelectByNpc(npcStringId, interactionValue)
IsQuestMultiSelectState(npcStringId, doodadStringId)
IsExistCompleteQuestList(npcStringId, doodadStringId)
QuestContextDrop(idx)
QuestContextRestart(questType)
RewardExpeditionExp(questType)
RewardFamilyExp(questType)
RewardLaborPower(questType)
RewardLocalLaborPower(questType)
RewardHonorPoint(questType)
RewardLivingPoint(questType)
RewardContributionPoint(questType)
RewardCrimePoint(questType)
RewardActability(questType)
RewardLeadershipPoint(questType)
RewardResidentPoint(questType)
NumAcceptBubble(questType)
AcceptBubbleText(questType)
ProgressBubbleText(questType)
ReadyBubbleText(questType)
GetObjectiveComponentCount(questType)
GetFirstObjectiveCount(questType)
GetObjective(questType, objIdx)
IsNextQuestAcceptableForDirecting(questType)
EnterQuestDirectingMode()
LeaveQuestDirectingMode()
IsQuestDirectingMode()
AcceptDirectingQuest()
DeclineDirectingQuest()
ProgressTalkDirectingQuest()
CompleteDirectingQuest(selected)
GetQuestLinkText(questType)
IsProgressQuestInJournal(questType)
IsReadyQuestInJournal(questType)
GetLinkedQuestSummary(questType)
GetLinkedQuestObjectives(questType)
NowIsAggroComponent(questType)
GetQuestDirInfo(questType)
GetTodayQuestInfo(questType)
GetQuestNotifierLimit()
IsReadyForCompleteQuest(questType)
GetMaxLimitCountInfo()
GetMainQuestListCount()
GetMainQuestType(idx)
GetMainQuestVecIndex(type)
GetZoneQuestVecIndex(type)
GetQuestContextQuestIdxByType(type)
IsExistCinema(type)
GetQuestAcceptName(type)
GetQuestAcceptZoneName(type)
RewardArchePassPoint(type)
ToggleChronicleNotifier(sagaGroupType)
UpdateChronicleNotifier(sagaGroupType)
IsExistChronicleNotifier(sagaGroupType)
GetChronicleNotifierQuest(sagaGroupType)
GetProgressSagaQuestGroupList()
IsChronicleNotifierDecalFull()
GetChronicleNotifierDecalIndex(qType)
GetChronicleNotifierCheckStatus(qType)
SetChronicleNotifierCheckStatus(qType, checkStatus)
GetChronicleMainKeyList()
GetChronicleSubTableList(sagaGroupType)
GetChronicleInfoByMainKey(sagaGroupType)
GetChronicleInfoBySubTableKey(sagaGroupType, qType)
GetChronicleInfoSagaGroupType(qType)
IsExistChronicleInfo(sagaGroupType)
BuyChronicleInfo(sagaGroupType)
GetRequireInfoByPurchase(sagaGroupType)
IsPublicQuest(type)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Rank
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
RK_FISHING_SUM
RK_FISHING_TOP
RK_GOODS_VALUE
RK_CHARACTER_GEAR_SCORE
RK_ITEM_SCORE
RK_INSTANCE_RATING
RK_EXPEDITION_GEAR_SCORE
RK_EXPEDITION_BATTLE_RECORD
RK_HEIR_LEVEL
RK_ZONE_SCORE_SUM_BY_QUEST_COMPLETE
RK_EXPEDITION_INSTANCE_RATING
RK_GAME_POINTS
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetRankTabCodes()
BuildRankTabInfo(tabCode)
GetRankKind(rankType)
IsRankerQueriable(rankType)
IsRankRatingOnly(rankType)
GetGamePointDetail(rankType)
HasRankReward(rankType, divisionId)
GetPersonalData(rankType, divisionId, preSeason)
GetSnapshot(rankType, divisionId)
GetRewardSnapshot(rankType, divisionId)
GetRankRewards(rankType, divisionId)
GetMetaInfo(rankType, divisionId, preSeason)
RequestSnapshot(rankType, divisionId)
RequestRewardSnapshot(rankType, divisionId)
RequestPersonalData(rankType)
RequestRankerAppearance(worldId, charId)
GetRankDivisions(rankType, divisionId)
GetRankRewardDivisions(rankType)
GetRankSeasonOffDate(rankType)
GetRankSeasonInformation(rankType, preSeason)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2RenewItem
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
IsBaseEquipment(itemSlot)
IsRenewableEquipment(itemSlot)
IsRenewableItem(sourceItemSlot, targetItemSlot)
Renew(sourceItemSlot, targetItemSlot, skillType)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Resident
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
HOUSING_LIST_FILTER_ALL
HOUSING_LIST_FILTER_SELLER_NAME
HOUSING_LIST_FILTER_HOUSE_NAME
HOUSING_LIST_FILTER_WORKTABLE
HOUSING_LIST_FILTER_FARM
HOUSING_LIST_FILTER_UNDERWATER_STRUCTURE
HOUSING_LIST_FILTER_SMALL
HOUSING_LIST_FILTER_MEDIUM
HOUSING_LIST_FILTER_LARGE
HOUSING_LIST_FILTER_FLOATING
HOUSING_LIST_FILTER_MANSION
HOUSING_LIST_FILTER_PUBLIC
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
RequestHousingTradeList(zoneGroupType, filterindex, searchWord)
FilterHousingTradeList(filterindex, searchWord)
GetResidentBoardContent(boardType)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetResidentDesc(zoneGroupType)
RefreshResidentMembers(zoneGroupType, bool, int)
GetResidentMembers(zoneGroupType, bool, int)
GetResidentZoneList(zoneGroupType)
FireNuonsArrow(zoneGroupType)
GetHousingTradeRefreshTime()
GetContributionRankReward(zoneGroupType)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Roster
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
MAX_CONTENT_ROSTER_SIZE
ROSTER_ROLE_MANAGE
ROSTER_ROLE_MAIL
ROSTER_ROLE_MAX
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
DeleteRoster(rosterList)
GetRosterList()
GetRosterMemberList(rosterId)
GetRosterSaveMemberMinSize()
GetGroupMailSendingPolicyInfo()
GetNeedLeadershipPointInfo()
IsRosterEmpty()
IsRosterFull()
IsRosterSaveCooltime()
IsValidLeadershipPoint()
SaveRoster(saveTitle)
SetSendingRoster(rosterId)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Security
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
StartSecondPasswordCreation()
StartSecondPasswordChange()
StartSecondPasswordClear()
StartSecondPasswordWebClear()
CreateSecondPassword(password, confirmPassword)
ChangeSecondPassword(originPassword, newPassword, confirmNewPassword)
ClearSecondPassword(password)
CheckSecondPassword(password)
IsSecondPasswordCreated()
IsSecondPasswordPassed()
IsSecondPasswordLocked()
GetSecondPasswordUnlockTime()
GetSecondPasswordUnlockRemainTime()
GetSecondPasswordFailedCount()
GetSecondPasswordClearReserveTime()
CancelVaildation()
RecommendUsingSecondPassword()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2SiegeWeapon
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetSiegeWeaponSpeed()
GetSiegeWeaponTurnSpeed()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
SetSiegeWeaponName(name)
IsTargetMySiegeWeapon()
GetMountedSiegeWeaponInfo()
GetVehicleInfo()
GetShipInfo()
GetSlaveCustomizingType()
GetSlaveEquipSlotInfo(equipSlot)
GetSlaveEquipSlotUIInfo()
PickEquipSlotOfSlave(equipSlot)
UninstallEquipSlotOfSlave(equipSlot)
CanSlaveEquipPickedItem(equipSlot)
CanExchangeSlaveEquipment()
CanRepairEquipSlot(equipSlot)
IsSlaveShip()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Skill
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
SIK_DESCRIPTION
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetSkillTooltip(skillId, itemType)
Info(skillId)
GetCooldown(skillId, ignoreGlobalCooldown)
GetMateCooldown(skillId, ignoreGlobalCooldown, mateType)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2SkillAlert
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
SKILL_ALERT_POS_INVALID
SKILL_ALERT_POS_BASIC
SKILL_ALERT_POS_FIRST
SKILL_ALERT_POS_SECOND
SKILL_ALERT_POS_OFF
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetAbilitySkillList(abilityIndex)
SaveSkillBlackList(blackList, whiteList)
AddSkillToBlackList(skillIndex)
RemoveSkillFromBlackList(skillIndex)
GetBuffRemainTime(buffId)
GetTooltip(skillIndex)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Sound
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
PlayUISound(soundPackItemName)
IsPlaying(soundId)
StopSound(soundId)
PlayMusic(soundPackItemName)
StopMusic()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
SetSiegePeriod(enable)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Squad
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
SCI_BATTLE_FIELD
SCI_INDUN
MAX_SQUAD_SELECT_COUNT_PER_PAGE
SOT_PUBLIC
SOT_PRIVATE
SOT_DIRECT_MATCHING
SOT_MUST_PUBLIC
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetMySquadInfo()
GetMyRoleInfo()
GetSquadList(instanceType, page)
CreateSquad(selectedField, openType, explanation, partyInvitation, limitLevel, limitGearScore)
DelegateSquadLeader(unitId)
DelegateSquadLeaderByCId(cId)
DisbandSquad()
DisbandSquadInRecruitList()
JoinSquad(squadId, fieldType)
JoinSquadByKey(squadId, fieldType, joinKey)
LeaveSquad()
ReadySquad()
InviteSquad(invitee)
ExpelSquad(unitId)
ExpelSquadByCId(cId)
HasMySquad()
IsLeader()
IsReady()
IsAllReady()
IsSameSquad(unitId)
SetMyRole(role)
ApplySquadMatching()
EnterSquadMatching()
ChangeOpenType(openType)
GetLinkText()
IsInstanceQueuedOrJoined()
IsAvailableDirectMatching(instanceType)
EnableLeaveSquad(enable)
CanLeaveSquad()
IsExpeditionContents(instanceType)
GetSquadMemberListStr(squadId)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Store
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
CURRENCY_GOLD
CURRENCY_HONOR_POINT
CURRENCY_LIVING_POINT
CURRENCY_AA_POINT
CURRENCY_GOLD_WITH_AA_POINT
CURRENCY_CONTRIBUTION_POINT
CURRENCY_ITEM_POINT
SHOP_OPEN_NORMAL
SHOP_OPEN_LIVINGPOINT
SHOP_OPEN_HONORPOINT
SHOP_OPEN_CONTRIBUTION
SHOP_OPEN_BATTLEFIELD
SHOP_OPEN_RANDOM_SHOP
SHOP_OPEN_DIRECT_RANDOM_SHOP
RANDOM_SHOP_REFRESH
MPT_ALLWAYS
MPT_DALIY
MPT_WEEKLY
MPT_MONTHLY
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetSpecialtyRatio()
GetZoneSpecialtyRatio()
GetSpecialtyRatioBetween(fromZoneGroup, toZoneGroup)
GetProductionZoneGroups()
GetSellableZoneGroups(fromZoneGroup)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
SetStoreOpenType(shopToOpen)
GetStoreOpenType()
GetStoreCurrency()
GetStoreNpcItemList()
BuyStoreItemWithStack(goodIndex, stackSize, currencies)
SellStoreItem(items, count, isEquipSlot)
SoldItemList()
AddBuyBackItemList(index)
BuyBackItem()
SplitBagItem(oldSlot, newSlot, count)
StoreAddSellItemToBagSlot(slot)
PlaceItemToStoreBuyCart()
ClearCursorOnStoreClose()
GetSellItemsMaxCount()
GetBackpackSellType()
SellBackPackGoods()
BuyBackPackGoods(itemType)
ListBackPackGoods(categoryType, name)
GetSpecialtyBuyConfirmContent(itemType)
GetSpecialtyBuyRatioRangeTooltip()
GetBackPackGoodCategories()
GetBackPackGoodRecipes(itemType)
GetBackPackSellLabor(backpackType)
GetBackPackBuySkillSpent(backpackType)
GetSpecialtyDebug()
GetSpecialtyInterest(backpackType)
GetSellerShareRatio()
GetPCBangRatio()
GetAccountBuffInfoUsingAuctionConfig()
GetAccountBuffInfoUsingSpecialityConfig()
CheckRandomShopStoreOpen(shopToOpen)
IsRandomShopStore()
IsActiveDirectRandomShop()
CanRandomShopStoreRefresh()
GetRandomShopStoreName()
GetRandomShopStoreRefreshCount()
GetRandomShopStoreRefreshInfo()
RandomShopStoreRefresh()
IsBlockItemSell(itemType)
MakeItemSearchList()
GetSoldHistoryItemList()
ClearBuyBackCartList()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2SurveyForm
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
ESFP_INVALID
ESFP_NONE
ESFP_DONE
ESFP_EXPIERED
ESFP_TODO
SFQK_INVALID
SFQK_RADIO
SFQK_CHECK
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetSurveyFormList()
GetSurveyFormData(surveyFormType)
GetSurveyFormQuestionData(surveyFormType)
SendReply(replyData)
CanSurvey(status)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Team
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
TMROLE_NONE
TMROLE_TANKER
TMROLE_HEALER
TMROLE_DEALER
TMROLE_RANGED_DEALER
TEAM_LOOT_FREE_FOR_ALL
TEAM_LOOT_ROUND_ROBIN
TEAM_LOOT_MASTER_LOOTER
TEAM_JOINT_MENU_CHAT
TEAM_JOINT_MENU_TARGET
TEAM_JOINT_REQUEST
SIEGE_RAID_TEAM_ALL_INFO
SIEGE_RAID_TEAM_INFO_BY_FACTION
RAID_TEAM_RECRUIT_LIST_REQ
RAID_RECRUIT_EXPIRE_DELAY_MINUTE
MAX_COMMUNITY_SUMMON
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetRole(teamIndex, memberIndex)
SetRole(role)
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetMemberIndexByName(charName, inMyTeam)
GetMemberIndex(unit)
GetMyTeamJointOrder()
InviteToTeam(charName, isParty)
InviteArea()
LeaveTeam(teamRoleType)
DismissTeam()
KickTeamMember(memberIndex, teamRoleType)
KickTeamMemberByName(charName, teamRoleType)
MakeTeamOwner(unit)
ConvertToRaidTeam()
CountTeamMembersInParty(teamIndex, party)
CountTeamMembers(teamIndex)
IsPartyTeam()
IsRaidTeam()
IsJointTeam()
IsJointLeader()
IsTeamOwner(teamIndex, memberIndex)
IsHeadMarker(memberIndex)
IsMyTeamOwner(memberIndex)
IsTeamOfficer(memberIndex)
GetTeamPlayerTeam()
GetTeamPlayerParty()
GetTeamPlayerPartyHeadIndex()
GetTeamPlayerSlot()
GetTeamPlayerIndex()
MoveTeamMember(frommemberIndex, tomemberIndex)
MoveTeamMemberToParty(frommemberIndex, toParty)
GetTeamMemberName(teamIndex, memberIndex)
GetTeamDistributorName()
GetOwnerIndex(teamIndex)
JointInfoReq(mode, name)
JointBreakRes(accept)
HasMyTeamRecruit()
ChangeLootingRule(teamLootMethod, distributorName, minGrade, bindOnPickup)
GetLootingRule()
GetMaxMembers()
GetMaxParties()
GetMaxPartyMembers()
SetPartyVisible(teamIndex, party, visible)
GetPartyVisible(teamIndex, party)
SetRefuseAreaInvitation(refuse)
GetRefuseAreaInvitation()
GetCanUseAreaInvitation()
GetCanJointBreakAck()
SetSimpleView(simple)
GetSimpleView()
SetPartyFrameVisible(visible)
GetPartyFrameVisible()
SetRaidFrameVisible(visible)
GetRaidFrameVisible()
IsPossibleLeaveTeam()
SetTeamDiceBidRule(bidRule)
GetTeamDiceBidRule()
GetRaidRecruitTypeList()
GetRaidRecruitSubTypeList(recruitTypeList, recruitSubType, bExceptSiege)
GetRaidRecruitSubType(recruitType, recruitSubType)
GetRaidRecruitLimitLevelList()
GetRaidRecruitLimitGearPointList()
GetRaidRecruitHeadcountList()
GetRaidRecruitExpense(hour, minute)
RaidRecruitAdd(type, subType, headcount, limitLevel, autoJoin, msg, hour, minute, limitGearPoint)
RaidRecruitDel()
RaidRecruitList()
RaidRecruitSeachList(recruitTypeList, recruitSubType)
RaidRecruitOption(autoJoin)
RaidRecruitDetail(ownerId, createTime)
RaidApplicantAdd(ownerId, role, createTime)
RaidApplicantDel(ownerId)
RaidApplicantAccept(charIds)
RaidApplicantAcceptReply(ownerId, join, role)
RaidApplicantReject(charIds)
RaidApplicantList()
GetRaidRecruitHud()
JointOk(leader)
JointCancel(leader, timeout)
GetLinkText()
GetSummonItem()
RequestSummon()
RequestSummonReply(result, name)
RequestSummonNotRecv(use)
IsSiegeRaidTeam()
IsSiegeRaidTeamRecruit()
IsSiegeRaidRecruitType(type, subType)
IsExistSiegeRaidTeam()
GetTeamRoleType()
RequestSiegeRaidMasterRegisterState(zoneGroupType, bRegister)
RequestSiegeRaidRegisterList()
RequestSiegeRaidRegisterInfo(zoneGroupType)
MakeTeamOfficer(unit)
GetSiegeRaidZoneList()
RequestSiegeRaidTeamInfo(timerType)
SiegeRaidRecruitDetail()
RequestAllSiegeRaidTeamInfo(timerType)
ShowSiegeRaidRegisterUI()
FindMyRegisterSiegeZoneGroupType()
CheckCoolTimerByTimerType(timerType)
ResetCoolTimerByTimerType(timerType)
IsPossibleMoveTeamMember(memberIndex)
IsCreateAlreadySiegeRaidTeam()
RequestSiegeRaidRecruitInfo()
CopyRaidMembersToClipboard()
ToggleSecondRaidWindow()
ShowRaidWindowSettings()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Time
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetGameTime()
GetServerTime()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetLocalTime()
GetLocalDate()
CompareTime(l, r)
TimeToDate(timeString)
PeriodTimeToDate(fromTimeString, toTimeString)
PeriodToDate(period)
GetUiMsec()
DateToTimeString(year, month, day, hour, minute, second)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Trade
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
TCR_NORMAL
TCR_OPEND_MONEY_WINDOW
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
RequestTrade()
StartTrade(unitIdStr)
CancelTrade(reason)
LockTrade()
OkTrade()
PutupTradeItem(slot, amount)
TakeDownTradeItemByInventoryIdx(inventoryIdx)
PutupTradeMoneyByStr(moneyStr)
IsTradeLocked()
IsOtherTradeLocked()
GetCurrencyForUserTrade()
CanLock()
GetTradeMoneyLimit()
HasEnoughExchangeFee(money, exchangeFee)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Trial
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
SENTENCE_NOT_GUILTY
SENTENCE_GUILTY_1
SENTENCE_GUILTY_2
SENTENCE_GUILTY_3
SENTENCE_GUILTY_4
SENTENCE_GUILTY_5
TRIAL_FREE
TRIAL_WAITING_CRIME_RECORD
TRIAL_WAITING_JURY
TRIAL_TESTIMONY
TRIAL_FINAL_STATEMENT
TRIAL_SENTENCE
TRIAL_GUILTY_BY_SYSTEM
TRIAL_GUILTY_BY_USER
TRIAL_POST_SENTENCE
TRIAL_POST_SENTENCE
MAX_BAD_USER_RECORDS_PAGE_COUNT
MAX_BAD_USER_RECORD_PER_PAGE_COUNT
MAX_BAD_USER_RECORDS_LIST_COUNT
MAX_REPORT_BAD_USER_DESCRIPTION_SIZE
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
ConfirmCrimeRecords()
ChooseVerdict(idx)
CancelTrial()
GetCrimeRecords()
GetCrimeData()
ReportCrime(msg)
RequestJuryWaitingNumber()
ReloadUI()
GetTrialType()
GetTrialStatus()
GetCrimeRecordsByPage(page)
SetCrimeRecordsCountPerPage(count)
StartReportBadUserUI(charName)
ReportBadUser(name, msg, selected)
GetBadUserRecordsByPage(page)
RequestBadUserList(startIdx, endIdx)
GetReciveBadUserListCount()
GetClientBadUserList(listIdx)
GetDailyReportBadUser()
GetDailyReportBadUserMaxCount()
ReportBadWordUser(charName)
GetTrialVerdictRemainTime()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Tutorial
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
SetDoneTutorial(id)
GetUiAviTable()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Ucc
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetPatterns()
GetUccUserDirectoryPath()
GetFgUserCount()
GetFgUserPath(idx)
UploadColors(r1, g1, b1, r2, g2, b2, r3, g3, b3)
UploadEmblem(doodadId, bgTypeNumber, fgTypeNumber, fgUserIndex)
GetMakeUccConsumeInfo(doodadId, useUserImage)
GetUccCategoryInfo()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Unit
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
MAX_MODE_ACTION_COUNT
GAME_TYPE_NORMAL
GAME_TYPE_BATTLE_FIELD
GAME_TYPE_SEAMLESS
GAME_TYPE_INDUN
GAME_TYPE_SIEGE
GAME_TYPE_CONFLICT_ZONE
BANVOTE_TYPE_CHECK_ENABLE
BANVOTE_TYPE_START_VOTE
BANVOTE_TYPE_VOTE_AGREE
BANVOTE_TYPE_VOTE_CLEAR
BRT_NO_REASON
BRT_NON_PARTICIPATE
BRT_NO_MANNER_CHAT
BRT_CHEATING
BRT_CHILLING_EFFECT
RACE_NONE
RACE_NUIAN
RACE_FAIRY
RACE_DWARF
RACE_ELF
RACE_HARIHARAN
RACE_FERRE
RACE_RETURNED
RACE_WARBORN
RACE_DARU
GENDER_NONE
GENDER_MALE
GENDER_FEMALE
MAX_OVER_HEAD_MARKER
DUEL_TYPE_INVALID
DUEL_TYPE_SOLO
DUEL_TYPE_PARTY
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
GetUnitId(unit)
UnitName(unit)
UnitNameWithWorld(unit)
UnitHealth(unit)
UnitMaxHealth(unit)
UnitHealthInfo(unit)
UnitMana(unit)
UnitMaxMana(unit)
UnitManaInfo(unit)
UnitLevel(unit)
UnitCastingInfo(unit)
UnitDistance(unit)
UnitGearScore(unit, comma)
UnitBuffTooltip(unit, buffIndex)
UnitBuff(unit, buffIndex)
UnitBuffCount(unit)
UnitDeBuff(unit, buffIndex)
UnitDeBuffCount(unit)
UnitDeBuffTooltip(unit, buffIndex)
UnitHiddenBuff(unit, buffIndex)
UnitHiddenBuffCount(unit)
UnitHiddenBuffTooltip(unit, buffIndex)
UnitRemovableDebuffTooltip(unit, buffIndex)
UnitRemovableDebuff(unit, buffIndex)
UnitRemovableDebuffCount(unit)
GetUnitWorldPositionByTarget(unit, isLocal)
GetUnitScreenPosition(unit)
GetTargetAbilityTemplates(target)
GetTargetUnitId()
GetUnitNameById(stringId)
GetUnitInfoById(stringId)
GetCurrentZoneGroup()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
UnitHealthRecovery(unit)
UnitHealthBarSplit(unit)
UnitManaRecovery(unit)
UnitDPSInfo(unit)
UnitCriticalInfo(unit)
UnitDefensivePower(unit)
UnitMagicResistPower(unit)
UnitBreath(unit)
UnitFatigue(unit)
UnitHeirLevel(unit)
HeirLimitLevelByCharLevel()
UnitRace(unit)
UnitGender(unit)
UnitVisualRace(unit)
UnitClass(unit)
UnitIsDead(unit)
UnitIsOffline(unit)
UnitInGroup(unit, groupType)
UnitIsTeamMember(unit)
UnitIsAggressiveHostile(unit)
UnitPortraitPath(unit)
UnitTeamAuthority(unit)
UnitIsForceAttack(unit)
UnitCombatState(unit)
UnitHeirIncreases(unit)
IsMe(unit)
IsReporter(unit)
IsFirstHitByMeOrMyTeam(unit)
ShowHelmet(show)
ChangeCosplayVisual(cosplayVisual)
ShowableEquipInfo(unit)
UnitAttr(unit, str)
UnitInfo(unit)
UnitModifierInfo(unit)
GetScreenPosition(unit)
GetDoodadScreenPosition(id)
GetUnitWorldPosition(stringId)
GetScreenHeight(unit)
GetUnitScreenNameTagOffset(stringId)
GetTopLevelFactionId(target)
GetTopLevelFactionName(target)
GetTopLevelFactionNameById(factionId)
GetFactionName(target)
GetUnitTypeString(target)
GetTargetTypeString()
GetTargetKindType(target)
GetCombatRelationshipStr(target)
GetNpcInfo(target)
GetNpcTypeIndex(target)
TargetUnit(unit)
ReleaseTarget()
GetUnitType(unit)
GetUnitGradeById(stringId)
GetDoodadInfoById(id)
GetUnitMateType(unit)
GetUnitMateTypeById(stringId)
ImpulseUnit(unit, power)
MoveUnit(unit)
Follow(unit)
ChallengeTargetToDuel(duelType)
SetOverHeadMarker(unit, markerIndex)
RemoveAllOverHeadMarker()
GetOverHeadMarker(unit)
GetOverHeadMarkerUnitId(markerIndex)
GetModeActionsCount()
RefreshModeActionBar()
GetShortcutSkillCount()
SetWatchTarget(id)
ReleaseWatchTarget()
BanVoteTarget(id, type, reason)
GetRace()
GetVisualRace()
GetVisualRaceExpiredTimeStr()
IsVisualRaceExpired()
GetRaceStr(race)
GetGenderStr(gender)
TargetFrameOpened()
IsInResurrectPeaceArea()
GetTargetUnitString()
GetBlessUthstinInfo(unit, pageNumber)
GetCombatResourceUnitInfos()
IsLifeAlertEffect(val1, val2)
StopChangeVisualRaceSkill()
RequestChangeVisualRace(race, skill, item)
RequestResetVisualRace()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2UserMusic
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
PrepareToSaveMusicSheet(itemIdStr, title, musicSheet)
TryToSaveMusicSheet()
PlayMusicSheet(musicSheet)
StopMusicSheet()
GetCompositionLimitInfos()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Util
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
NRT_CHARACTER
NRT_SUMMONS
NRT_FACTION
NRT_FAMILY_TITLE
NRT_CHAT_TAB
NRT_PORTAL
NRT_FAMILY
NRT_CUSTOM
NRT_FACTION_ROLE
NRT_ROSTER_TITLE
NRT_MAX
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
XLGAMES()
TENCENT()
GAMEON()
KAKAONA()
MAILRU()
PLAYWITH()
XLGAMES_TH()
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
Random()
Random2(num)
NumberToString(money)
HasEnoughCurrency(currency, value)
GetMyMoneyString()
GetMyBankMoneyString()
GetMyAAPointString()
GetMyBankAAPointString()
StrNumericAdd(a, b)
StrNumericSub(a, b)
StrNumericMul(a, b)
StrNumericComp(a, b)
MakeMoneyString(goldStr, silverStr, copperStr)
MakeAAPointString(goldStr, silverStr, copperStr)
GetCurrencyExchangeFee()
CalcCurrencyExchangeFee(currencyStr)
GetGroupMailExchangeFee()
CalcGroupMailExchangeFee(currencyStr)
MultiplyNumberString(number1, number2)
DivideNumberString(number1, number2)
UTF8StringLength(str)
UTF8StringLimit(str, limit, suffix)
MakeMarkedCiphersStr(text, ciphers)
ParsePipeArgsFromText(text)
ErasePipeArgsFromText(text)
InsertComma(numStr)
ConvertWorldToScreen(x, y, z)
ApplyUIMacroString(input)
ConvertFormatString(strText)
GetRevisionStr()
GetFocusedWidgetId()
GetSeamlessOrigin()
GetCurrentFileTimeStr()
MakeFileTimeStr(timeTable)
DiffTimeStr(endTime, beginTime)
DiffTimeTable(format, endTime, beginTime)
RaiseLuaCallStack(msg)
OpenWeb(webName)
GetGameProvider()
IsValidName(name, nameType)
GetNamePolicyInfo(nameType)
GetVersionInfo()
GetDdcmsTimeOffset()
AND(v1, v2)
OR(v1, v2)
XOR(v1, v2)
GetHpPercent(current, max)
GetConstIconPath(key)
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2Warp
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
PSC_NAME
PSC_ZONE
PSC_WORLD
PSC_ALL
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
IsTeleporterNpc()
SavePortal(memo)
RenamePortal(portalId, name)
GetPortalList(searchName, searchCategory)
GetReturnList(searchName, searchCategory)
OpenPortal(portalTypeStr, portalId, portalName)
DeletePortal(portalType, portalId)
GetBoundPortalId()
EndPortalInteraction()
GetIndunPortalList(searchName)
OpenIndunPortal(zoneKey, itemTypeNumber)
GetFavoritePortalList(searchName, searchCategory)
SetFavoritePortal(portalTypeStr, portalId, isFavorite)
GetFavoritePortalCountInfos()
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
-- X2World
----------------------------------------------------------------------------------------

Global variables
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Allowed functions
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Available/not allowed functions
----------------------------------------------------------------------------------------
GetAuthId()
GetWorldInfo()
GetCurrentWorldInfo()
GetCurrentWorldName()
IsWorld(divisionId)
IsDivision(divisionId)
EnterWorld(worldIndex, zoneId)
LeaveWorld(target)
CancelLeaveWorld()
LevelCount()
LevelName(index)
GetZoneCount()
GetZoneName(index)
GetZoneInfo(index)
GetZoneText()
GetSubZoneText()
GetZoneFaction()
IsPreSelectCharacterPeriod()
IsPreSelectCharacterPeriodForPcbang()
IsPreSelectCharacterPeriodForPremium()
CanPreSelectCharacter()
GetTmpMaxCharSlot()
GetCharactersInfoPerWorld(worldIndex)
GetCharactersCountPerWorld(worldIndex)
GetCharactersCountPerAccount(exceptCurrentWorld)
GetCharactersDefaultLimitPerAccount()
GetCharactersDefaultLimitPerWorld()
GetCharacterExpandableLimit()
RequestWorldListRefresh()
GetExpandedCharacterCount()
GetExpandedCharacterRemainCount()
GetRemainChracterCountPerAccout()
CanExitArchemall()
ExitArchemall()
IsUsingAutoLogin()
ForbidCharCreation()
IsB2PService()
PrivacyPolicyAgree()
GetTermsText(termsType)
GetServerInfoTexts()
CanExitWonderland()
ExitWonderland()
----------------------------------------------------------------------------------------
