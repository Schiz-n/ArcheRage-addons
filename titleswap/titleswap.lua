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
------------- Thanks to Pinkl and Raikiri ---------------
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
ADDON:ImportAPI(API_TYPE.PLAYER.id)

-- actual title box
local titles = {}
local titlesFile = "titles.lua"

local titleListWindow = CreateEmptyWindow("titleListWindow", "UIParent")
titleListWindow:SetExtent(0, 0)
--titleListWindow:AddAnchor("RIGHT", "UIParent", -100, -200)
titleListWindow:EnableDrag(true)
titleListWindow:Show(true)
local function GetUIScaleFactor()
	return UIParent:GetUIScale() or 1.0
end

local titleWidgets = {}

local filePath = "TitleWindowPos.txt"
local function SaveWindowPosition(x, y)
	local uiScale = GetUIScaleFactor()
	x = math.floor(x / uiScale)
	y = math.floor(y / uiScale)
	local file = io.open(filePath, "w")
	file:write(string.format("%d,%d", x, y))
	file:close()
end
local function LoadSavedPosition()
	local file = io.open(filePath, "r")
	if not file then
		return 0, 0
	end
	local line = file:read("*line")
	file:close()
	local x, y = line:match("(%d+),(%d+)")
	if x and y then
		return x, y
	else
		return 0, 0
	end
end

local savedWindowX, savedWindowY = LoadSavedPosition()
--X2Chat:DispatchChatMessage(CMF_SYSTEM, "Putting window at: " .. tostring(savedWindowX) .. tostring(savedWindowY))
titleListWindow:AddAnchor("TOPLEFT", "UIParent", tonumber(savedWindowX), tonumber(savedWindowY))

local background = titleListWindow:CreateColorDrawable(0, 0, 0, 0.5, "background")
background:AddAnchor("TOPLEFT", titleListWindow, 0, 0)
background:AddAnchor("BOTTOMRIGHT", titleListWindow, 0, 0)

local function initializeTitles()
	local file = io.open(titlesFile, "r")
	if file then
		titles = {}
		for line in file:lines() do
			local id, name, path = line:match('%["(%d+)"%]%s*=%s*{name%s*=%s*"(.-)",%s*icon%s*=%s*"(.-)"}')
			if id and name and path then
				titles[id] = { name = name, icon = path }
			end
		end
		file:close()
	else
		X2Chat:DispatchChatMessage(CMF_SYSTEM, "Title file not found, initializing empty list.")
	end
end

--these handle title setting from buttons:
local function setTitle(titleId)
	local currentTitle = X2Player:GetShowingAppellation()
	local currentTitleId = currentTitle[1]
	X2Player:ChangeAppellation(currentTitleId, tonumber(titleId))
	--local currentTitle = X2Player:GetEffectAppellation()
	--local currentTitleId = tostring(currentTitle[1])
	--X2Chat:DispatchChatMessage(CMF_SYSTEM, "Changing to title failed:" .. titleId .. currentTitleId)
	--if titleId ~= currentTitleId then
	--    X2Chat:DispatchChatMessage(CMF_SYSTEM, "Changing to title failed.")
	--    return false
	--end
	return true
end
local function createTitleList()
	-- clear existing buttons
	for _, widget in ipairs(titleWidgets) do
		widget:SetText("")
		widget:AddAnchor("TOPLEFT", titleListWindow, 9999, 9999) -- don't think about this too much :)
	end
	titleWidgets = {}

	local yOffset = 10
	local buttonSpacing = 25
	-- button size settings
	local xSize = 80
	local ySize = 30
	local currentTitle = X2Player:GetEffectAppellation()
	local currentTitleId = tostring(currentTitle[1])

	local totalTitles = 0
	for id, data in pairs(titles) do
		totalTitles = totalTitles + 1

		local titleButton = titleListWindow:CreateChildWidget("button", "titleButton_" .. id, tonumber(id), true)
		titleButton:AddAnchor("TOPLEFT", titleListWindow, 10, yOffset)
		titleButton:SetText(data.name)

		if id == currentTitleId then
			titleButton:SetStyle("text_default") --ApplyButtonSkin(titleButton, buttonskin_selected)
			SetButtonFontOneColor(titleButton, { 0.348, 0.609, 0.370, 1 })
		else
			titleButton:SetStyle("text_default") --ApplyButtonSkin(titleButton, buttonskin)
			SetButtonFontOneColor(titleButton, { 0.2, 0.2, 0.2, 1 })
		end

		titleButton:SetExtent(xSize, ySize)
		titleButton:SetHandler("OnClick", function()
			local titleCheck = setTitle(id)
			if titleCheck == true then
				-- set to green and others to normal
				titleButton:SetStyle("text_default") --ApplyButtonSkin(titleButton, buttonskin_selected)
				SetButtonFontOneColor(titleButton, { 0.348, 0.609, 0.370, 1 })
				titleButton:SetExtent(xSize, ySize)
				for _, otherButton in ipairs(titleWidgets) do
					if otherButton ~= titleButton then
						otherButton:SetStyle("text_default") --ApplyButtonSkin(otherButton, buttonskin)
						SetButtonFontOneColor(otherButton, { 0.2, 0.2, 0.2, 1 })
						otherButton:SetExtent(xSize, ySize)
					end
				end
			end
		end)

		table.insert(titleWidgets, titleButton)
		yOffset = yOffset + buttonSpacing
	end

	local windowWidth = 100
	local windowHeight = totalTitles * buttonSpacing + 25
	titleListWindow:SetExtent(windowWidth, windowHeight)
end

local function saveTitles()
	local file = io.open(titlesFile, "w")
	if not file then
		X2Chat:DispatchChatMessage(CMF_SYSTEM, "Failed to open title file for writing.")
		return
	end
	file:write("titles = {\n")
	for id, data in pairs(titles) do
		file:write(string.format('    ["%s"] = {name = "%s", icon = "%s"},\n', id, data.name, data.icon))
	end
	file:write("}\n")
	file:close()
	createTitleList()
end

local function saveTitle(titleId, titleName, titleIconPath)
	titles[titleId] = { name = titleName, icon = titleIconPath }
	saveTitles()
	--X2Chat:DispatchChatMessage(CMF_SYSTEM, "Saved title: " .. titleName)
end

local function deleteTitle(titleId, name)
	local titleFound = false
	for id, data in pairs(titles) do
		if data.name == name then
			titleFound = true
			titleId = id
			break
		end
	end

	if titleFound then
		titles[titleId] = nil
		saveTitles()
		--X2Chat:DispatchChatMessage(CMF_SYSTEM, "Deleted title: " .. name)
	else
		X2Chat:DispatchChatMessage(CMF_SYSTEM, "Title not found: " .. name)
	end
end

-- Handle chat events
local chatAggroEventListenerEvents = {
	CHAT_MESSAGE = function(channel, relation, name, message, info)
		--X2Chat:DispatchChatMessage(CMF_SYSTEM, "x2name: " .. X2Unit:UnitName("player") .. " name: ".. name) --.. " fchar: "..string.sub(message, 1, 1) )
		if name == X2Unit:UnitName("player") then --and string.sub(message, 1, 1) == "/" then
			local firstWord = string.match(message, "/%w+")
			local secondWord = string.match(message, "/%w+%s+(%w+)")
			if firstWord == "/addtitle" then
				local currentTitle = X2Player:GetEffectAppellation()
				local titleId = tostring(currentTitle[1])
				local titleName = currentTitle[2]
				if secondWord ~= nil then
					titleName = secondWord
				end
				local titleIconPath = currentTitle[6]["path"]
				--X2Chat:DispatchChatMessage(CMF_SYSTEM, "Adding title." .. titleId .. titleName .. titleIconPath)
				saveTitle(titleId, titleName, titleIconPath)
			elseif firstWord == "/removetitle" then
				local currentTitle = X2Player:GetEffectAppellation()
				local titleId = tostring(currentTitle[1])
				local titleName = currentTitle[2]
				if secondWord ~= nil then
					titleName = secondWord
				end
				--X2Chat:DispatchChatMessage(CMF_SYSTEM, "Removing title." .. titleId .. titleName)
				deleteTitle(titleId, titleName)
				--            elseif firstWord == "/movewindow" then
				--                titleListWindow:EnableDrag(true)
			end
		end
	end,
}

--make chat listener
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

--make draggable
function titleListWindow:OnDragStart()
	self:StartMoving()
	self.moving = true
end
titleListWindow:SetHandler("OnDragStart", titleListWindow.OnDragStart)

function titleListWindow:OnDragStop()
	self:StopMovingOrSizing()
	self.moving = false
	local offsetX, offsetY = self:GetOffset()
	local uiScale = UIParent:GetUIScale() or 1.0
	local normalizedX = offsetX * uiScale
	local normalizedY = offsetY * uiScale
	SaveWindowPosition(normalizedX, normalizedY)
end
titleListWindow:SetHandler("OnDragStop", titleListWindow.OnDragStop)

X2Chat:DispatchChatMessage(CMF_SYSTEM, "Initializing Titleswap.")
initializeTitles()
createTitleList()
X2Chat:DispatchChatMessage(CMF_SYSTEM, "Titleswap loaded successfully.")
