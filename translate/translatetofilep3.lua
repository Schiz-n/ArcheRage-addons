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
ADDON:ImportObject(OBJECT_TYPE.TEXT_STYLE)
ADDON:ImportObject(OBJECT_TYPE.WINDOW)
ADDON:ImportObject(OBJECT_TYPE.LABEL)

ADDON:ImportAPI(API_TYPE.CHAT.id)
ADDON:ImportAPI(API_TYPE.LOCALE.id)

local locale = X2Locale:GetLocale() -- zh_cn, ru or else

local option = {
	specifyName = nil,
	isOtherWorldMessage = false,
	isUserChat = true,
	messageLocale = LOCALE_INVALID,
	npcBubbleChat = false,
}

local channelName = {
	[-3] = CMF_WHISPER,
	[0] = CMF_SAY,
	[1] = CMF_ZONE,
	[2] = CMF_TRADE,
	[3] = CMF_FIND_PARTY,
	[4] = CMF_PARTY,
	[5] = CMF_RAID,
	[6] = CMF_FACTION,
	[7] = CMF_EXPEDITION,
	[9] = CMF_FAMILY,
	[10] = CMF_RAID_COMMAND,
	[11] = CMF_TRIAL,
	[17] = CMF_SQUAD,
	[18] = CMF_ALL_SERVER,
}
--channel;relation;name;message

-- create an empty window that forces continuous updates
local refreshForcer = CreateEmptyWindow("refreshForcer", "UIParent")
refreshForcer:Show(true)
------------------------ Function called perpetually ------------------------
local path = "../Documents/Addon/translate/ChatTranslationOutput_1.log"
local lastPrintedLine = nil
local lastDeleteTime = os.time()
local deleteInterval = 6000

--dummy option thanks Sparkle
local option = {
	specifyName = nil,
	isOtherWorldMessage = false,
	isUserChat = true,
	messageLocale = LOCALE_INVALID,
	npcBubbleChat = false,
}
local hostileColor = "|cFFA9362F"
--local relation = 3 -- invalid/hostile/neutral/friendly 0/1/2/3
local channelNames = {
	global = { zh_cn = "跨服", ru = "Общий чат", default = "Global" },
	nation = { zh_cn = "势力", ru = "Союз", default = "Nation" },
	commander = { zh_cn = "指挥", ru = "Глава отряда", default = "Commander" },
}

local function resetLogFile()
	local file = io.open(path, "w")
	if file then
		file:write("\239\187\191") -- UTF-8 BOM
		file:close()
	end
end
function rageCustomChannels(cmfInput)
	local translations = channelNames[cmfInput]
	if translations then
		return translations[locale] or translations.default
	end

	return ""
end

local channelTranslatedNames = {
	[CMF_SAY] = X2Locale:LocalizeUiText(CHAT_FILTERING, "chat_normal_group1_common"),
	[CMF_ZONE] = X2Locale:LocalizeUiText(CHAT_FILTERING, "chat_normal_group1_shout"), --has 1. in front?
	[CMF_WHISPER] = X2Locale:LocalizeUiText(CHAT_FILTERING, "chat_normal_group1_whisper"),
	[CMF_TRADE] = X2Locale:LocalizeUiText(CHAT_FILTERING, "chat_normal_group1_trade"),
	[CMF_PARTY] = X2Locale:LocalizeUiText(CHAT_FILTERING, "chat_normal_group1_party"),
	[CMF_FIND_PARTY] = X2Locale:LocalizeUiText(CHAT_FILTERING, "chat_normal_group1_search_party"),
	[CMF_RAID] = X2Locale:LocalizeUiText(CHAT_FILTERING, "chat_normal_group1_raid"),
	[CMF_EXPEDITION] = X2Locale:LocalizeUiText(CHAT_FILTERING, "chat_normal_group1_expedition"),
	[CMF_FAMILY] = X2Locale:LocalizeUiText(COMMON_TEXT, "family"),
	[CMF_TRIAL] = X2Locale:LocalizeUiText(CHAT_FILTERING, "chat_normal_group1_trial"),
	[CMF_FACTION] = rageCustomChannels("nation"),
	[CMF_RACE] = X2Locale:LocalizeUiText(CHAT_FILTERING, "chat_normal_group1_alliance"),
	[CMF_SQUAD] = X2Locale:LocalizeUiText(CHAT_FILTERING, "chat_normal_group1_squad"),
	[CMF_ALL_SERVER] = rageCustomChannels("global"),
	[CMF_RAID_COMMAND] = rageCustomChannels("commander"),
}

--X2Chat:DispatchChatMessage(CMF_SYSTEM, dump(channelTranslatedNames))

--basically just constantly refresh and act like tail functionality on linux
function refreshForcer:OnUpdate(dt)
	if os.time() - lastDeleteTime >= deleteInterval then
		os.remove(path)
		resetLogFile()
		lastDeleteTime = os.time()
	end

	local file = io.open(path, "r")
	if not file then
		return
	end
	local lastLine
	for line in file:lines() do
		lastLine = line
	end
	file:close()

	if lastLine and lastLine ~= lastPrintedLine then
		local outputLine = lastLine
		local channel, relation, name, message = outputLine:match("([^;]+);([^;]+);([^;]+);(.+)")
		cmf = tonumber(channel)
		if channel == "0" then -- say
			if relation == "1" then --hostile speech
				X2Chat:DispatchChatMessage(
					channelName[cmf],
					hostileColor .. "-> [" .. name .. "] : |o;" .. message,
					option
				)
			else
				X2Chat:DispatchChatMessage(channelName[cmf], "-> [" .. name .. "] : |o;" .. message, option)
			end
		else
			if
				message ~= nil
				and channelName[cmf] ~= nil
				and channelTranslatedNames[channelName[cmf]] ~= nil
				and name ~= nil
			then
				X2Chat:DispatchChatMessage(
					channelName[cmf],
					"-> [" .. channelTranslatedNames[channelName[cmf]] .. ": " .. name .. "] : |o;" .. message,
					option
				)
			end
		end
		lastPrintedLine = lastLine
	end
end

refreshForcer:SetHandler("OnUpdate", refreshForcer.OnUpdate)
