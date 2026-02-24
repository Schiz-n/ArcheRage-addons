-------------- Original Author: Strawberry --------------
--------------- Extra thanks to Tamaki  -----------------
----------------- Discord: exec_noir --------------------
ADDON:ImportObject(OBJECT_TYPE.TEXT_STYLE)
ADDON:ImportObject(OBJECT_TYPE.WINDOW)
ADDON:ImportObject(OBJECT_TYPE.LABEL)

ADDON:ImportAPI(API_TYPE.CHAT.id)

local channelColors = {
	[-4] = { color = "FFE96DD9", name = "Whisper" },
	[0] = { color = "FFFFFFFF", name = "Say" },
	[1] = { color = "FFF86C96", name = "Shout" },
	[2] = { color = "FF34E7C3", name = "Trade" },
	[3] = { color = "FFBAE876", name = "Party search" },
	[4] = { color = "FF6BEE80", name = "Party" },
	[5] = { color = "FFF28F2F", name = "Raid" },
	[6] = { color = "FF89AA30", name = "Nation" },
	[7] = { color = "FF649DFC", name = "Guild" },
	[9] = { color = "FF1ED556", name = "Family" },
	[18] = { color = "FF35EECA", name = "Global" },
}

local defaultColor = "FFFFFFFF"

function url_encode(str)
	local encoded = ""
	for i = 1, #str do
		local byte = str:byte(i)
		if byte >= 0x80 then
			local char = str:sub(i, i)
			local byte_sequence = {}
			for j = 1, #char do
				byte_sequence[j] = string.format("%%%02X", char:byte(j))
			end
			encoded = encoded .. table.concat(byte_sequence)
		else
			if string.match(string.char(byte), "[^%w %-%_%.~]") then
				encoded = encoded .. string.format("%%%02X", byte)
			else
				encoded = encoded .. string.char(byte)
			end
		end
	end
	return encoded:gsub(" ", "+")
end

function translate(text, target_lang)
	local encoded_text = url_encode(text)
	local url = string.format(
		"https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=%s&dt=t&q=%s",
		target_lang,
		encoded_text
	)
	local output_file = "response.json"
	os.remove(output_file)
	--local command = string.format('cmd /C curl -s "%s" -o %s', url, output_file)
	--local command = string.format('curl -s "%s" -o %s', url, output_file)
	local command = string.format('start /B curl -s "%s" -o %s', url, output_file)

	local handle = io.popen(command)
	local result = handle:read("*a")
	handle:close()

	if result then
		if result == text then
			return "No translation needed"
		end
		local file = io.open(output_file, "r")
		if file then
			local response = file:read("*a")
			file:close()
			local translation = response:match('"(.-)"')
			return translation
		else
			return "Error reading the file."
		end
	else
		return "Error executing curl."
	end
	return "failed everything xd"
end

function GetChannelMessage(channelID, relationID)
	local channelInfo = channelColors[channelID]
	local timestamp = os.date("[%H:%M:%S]")
	local hostilecolor = "FFA9362F"
	if channelID == 0 then
		--X2Chat:DispatchChatMessage(CMF_SYSTEM, tostring(relationID))
		if relationID == 1 then
			return string.format("|c%s%s |c%s->[", channelInfo.color, timestamp, hostilecolor)
		else
			return string.format("|c%s%s ->[", channelInfo.color, timestamp)
		end
	else
		if channelInfo then
			return string.format("|c%s%s ->[%s: ", channelInfo.color, timestamp, channelInfo.name)
		else
			return string.format("|c%s%s ->", defaultColor, timestamp)
		end
	end
end

--chat listener
local chatAggroEventListenerEvents = {
	CHAT_MESSAGE = function(channel, relation, name, message, info)
		local target_language = "en"
		for i = 1, 3 do
			translated_text = translate(message, target_language)
			if not translated_text:match("Error: HTTP") then
				break
			end
		end
		local saySpace = ""
		if channel == 0 then
			saySpace = " "
		end
		--this doe snot seem to work
		if not translated_text:match("No translation needed") then
			X2Chat:DispatchChatMessage(
				CMF_SYSTEM,
				GetChannelMessage(channel, relation) .. name .. "]" .. saySpace .. ": " .. translated_text
			)
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
