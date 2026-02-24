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
API_TYPE_OPTION = 31
ADDON:ImportAPI(API_TYPE_OPTION)

local function EnteredWorld()
	UIParent:SetUIScale(0.8, true)
end
UIParent:SetEventHandler("ENTERED_WORLD", EnteredWorld)
