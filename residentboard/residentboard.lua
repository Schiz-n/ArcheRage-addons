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
ADDON:ImportObject(OBJECT_TYPE.LABEL)
ADDON:ImportObject(OBJECT_TYPE.ICON_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.IMAGE_DRAWABLE)

ADDON:ImportAPI(API_TYPE.CHAT.id)
ADDON:ImportAPI(API_TYPE.UNIT.id)
ADDON:ImportAPI(API_TYPE.RESIDENT.id)

local residentBoardButton = CreateSimpleButton("Board", 700, -180)

local function checkBoard(index)
	local contentA = X2Resident:GetResidentBoardContent(index)
	local contents = ""
	for i = 1, #contentA.contents do
		if contents == "" then
			contents = contentA.contents[i]
		else
			contents = contents .. "\n" .. contentA.contents[i] -- Add newline between entries
		end
	end
	return contents
end

function residentBoardButton:OnClick()
	local materials =
		{ "Fabric", "Leather", "Lumber", "Iron Ingots", "Prince's Items", "Queen's Items", "Ancestor's Items" }
	local boardLocator = X2Resident:GetResidentBoardContent(1)
	local whereami = ""
	local startIndex = 1
	local endIndex = 7
	if checkBoard(3) ~= "" and checkBoard(4) ~= "" then
		whereami = "mainland"
		startIndex = 1
		endIndex = 4
	elseif checkBoard(5) ~= "" or checkBoard(6) ~= "" then
		whereami = "auroria"
		startIndex = 5
		endIndex = 7
	else
		whereami = "unknown"
	end
	if whereami ~= "unknown" then
		X2Chat:DispatchChatMessage(CMF_SYSTEM, "----- Bonds for: " .. boardLocator.faction .. " -----")
		for index = startIndex, endIndex do
			local contents = checkBoard(index)
			X2Chat:DispatchChatMessage(CMF_SYSTEM, "-- " .. materials[index] .. " --\n")
			X2Chat:DispatchChatMessage(CMF_SYSTEM, contents .. "\n")
		end
		X2Chat:DispatchChatMessage(CMF_SYSTEM, "-------------------------------")
	else
		X2Chat:DispatchChatMessage(CMF_SYSTEM, "This location has no bonds.")
	end
end
residentBoardButton:SetHandler("OnClick", residentBoardButton.OnClick)
