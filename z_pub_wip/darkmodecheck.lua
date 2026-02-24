--chat import
ADDON:ImportAPI(8)

function isUserDarkMode()
	local isDarkMode = false
	local commonFilePath = "../Documents/Addon/ui/common/default.g"
	local commonFile = io.open(commonFilePath, "r")
	--no file = standard UI
	if not commonFile then
		return isDarkMode
	end

	--skip to line 6
	local line
	for i = 1, 6 do
		line = commonFile:read("*l")
		if not line then
			break
		end
	end
	commonFile:close()

	if line then
		--X2Chat:DispatchChatMessage(CMF_SYSTEM, line)
		if line:find("bg_01%s*%(%s*15,%s*22,%s*29,%s*255%s*%)") then
			isDarkMode = true
		end
	end
	return isDarkMode
end

X2Chat:DispatchChatMessage(CMF_SYSTEM, "Dark mode use: " .. tostring(isUserDarkMode()))
