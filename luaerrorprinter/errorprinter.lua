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
ADDON:ImportObject(OBJECT_TYPE.BUTTON)
ADDON:ImportObject(OBJECT_TYPE.DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.NINE_PART_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.COLOR_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.WINDOW)
ADDON:ImportObject(OBJECT_TYPE.LABEL)
ADDON:ImportObject(OBJECT_TYPE.ICON_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.IMAGE_DRAWABLE)

ADDON:ImportAPI(API_TYPE.OPTION.id)
ADDON:ImportAPI(API_TYPE.CHAT.id)
ADDON:ImportAPI(API_TYPE.ACHIEVEMENT.id)
ADDON:ImportAPI(API_TYPE.UNIT.id)
ADDON:ImportAPI(API_TYPE.LOCALE.id)

-- create an empty window that forces continuous updates
local refreshForcer = CreateEmptyWindow("refreshForcer", "UIParent")
refreshForcer:Show(true)
------------------------ Function called perpetually ------------------------.
local logpaths = {
	"../Documents/archerage.log",
	"../Documents/ArcheRage.log",
}

local function find_existing_file(paths)
	for _, path in ipairs(paths) do
		local f = io.open(path, "r")
		if f then
			f:close()
			return path
		end
	end
	return nil
end
local path = find_existing_file(logpaths)
local lastPrintedLine = nil
local lastDeleteTime = os.time()
local deleteInterval = 600 -- 10 minutes in seconds

--read it the first time to get all errors printed
local file1 = io.open(path, "r")
for line in file1:lines() do
	if
		line:lower():find("lua")
		and not line:find("localized ui text for 92")
		and not line:find("locale/zh_cn.alb")
		and not line:find("ui/tower_defense/")
		and not line:find("teamIndex:1; invalid")
	then
		X2Chat:DispatchChatMessage(CMF_SYSTEM, line)
	end
end
file1:close()

--basically just constantly refresh and act like tail functionality on linux
function refreshForcer:OnUpdate(dt)
	local currentTime = os.time()
	--empty out archerage.log regularly to prevent frame issues from reading big files
	if currentTime - lastDeleteTime >= deleteInterval then
		local f = io.open(path, "w")
		if f then
			f:close()
			--X2Chat:DispatchChatMessage(CMF_SYSTEM, "Log file cleared:" .. path)
		else
			X2Chat:DispatchChatMessage(
				CMF_SYSTEM,
				"Failed to open log file for clearing:"
					.. path
					.. ", seeing this error often could lead to frame drops."
			)
		end
		lastDeleteTime = currentTime
	end

	-- read the last line of the file
	local file = io.open(path, "r")
	if not file then
		return
	end
	local lastLine
	for line in file:lines() do
		lastLine = line
	end
	file:close()

	-- check if last line is lua and not duplicate
	if
		lastLine
		and lastLine:lower():find("lua")
		and lastLine ~= lastPrintedLine
		and not lastLine:find("localized ui text for 92")
		and not lastLine:find("locale/zh_cn.alb")
		and not lastLine:find("ui/tower_defense/")
		and not lastLine:find("teamIndex:1; invalid")
	then
		X2Chat:DispatchChatMessage(CMF_SYSTEM, lastLine)
		lastPrintedLine = lastLine
	end
end
--force continuous updates
refreshForcer:SetHandler("OnUpdate", refreshForcer.OnUpdate)
X2Chat:DispatchChatMessage(CMF_SYSTEM, string.format("lua logging"))
