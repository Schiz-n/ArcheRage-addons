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

local logFilePath = "../Documents/Addon/translate/ChatTranslationInput_1.log"
local logFile = io.open(logFilePath, "a")
local lastDeleteTime = os.time()
local deleteInterval = 6000

if not logFile then
	X2Chat:DispatchChatMessage(CMF_SYSTEM, "Failed to open log file: " .. logFilePath)
end

local function closeLogFile()
	if logFile then
		logFile:close()
		logFile = nil
	end
end

local function reOpenLogFile()
	logFile = io.open(logFilePath, "a")
end

local function resetLogFile()
	closeLogFile()
	local file = io.open(logFilePath, "w")
	if file then
		file:write("\239\187\191") -- UTF-8 BOM
		file:close()
	end
end

closeLogFile()

local saySpace = ""
--chat listener
local chatAggroEventListenerEvents = {
	CHAT_MESSAGE = function(channel, relation, name, message, info)
		--X2Chat:DispatchChatMessage(CMF_SYSTEM, "Message: " .. tostring(channel) .. "-" .. tostring(message) .. tostring(info["isUserChat"]))
		if os.time() - lastDeleteTime >= deleteInterval then
			os.remove(logFilePath)
			resetLogFile()
			lastDeleteTime = os.time()
		end
		if info["isUserChat"] == true and channel ~= -4 then -- false for npc chat
			local logMessage =
				table.concat({ tostring(channel), tostring(relation), tostring(name), tostring(message) }, ";")
			--X2Chat:DispatchChatMessage(CMF_SYSTEM, "printing " .. logMessage)-- .. " to " .. logFilePath)
			reOpenLogFile()
			logFile:write(logMessage .. "\n")
			closeLogFile()
		end
	end,
}

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
