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
--- Extra thanks to Tamaki, Nidoran, Ingram & 우와앙  ---
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

-- Create a basic invisible window to attach icons to
local buffAnchor = CreateEmptyWindow("buffAnchor", "UIParent")
buffAnchor:Show(true)

local target_debuffs = {}
local target_buffs = {}
local target_buffDebugMessages = false
local target_debuffDebugMessages = false
local showAllBuffs = false
local showAllDebuffs = false

local buffAllString = ""
local lastBuffString = ""
local debuffAllString = ""
local lastdeBuffString = ""

local drawableNmyIcons = {} -- Table to store drawn icons, must be global
local drawableNmyLabels = {} -- Table to store drawn counters, must be global

local drawableNmyLabels_stacks = {} -- stacks
-- helper function for array dumping --
local function dump(o)
	if type(o) == "table" then
		local s = "{ "
		for k, v in pairs(o) do
			if type(k) ~= "number" then
				k = '"' .. k .. '"'
			end
			s = s .. "[" .. k .. "] = " .. dump(v) .. ","
		end
		return s .. "} "
	else
		return tostring(o)
	end
end

------------------------ Icon drawing function ------------------------
local function drawIcon(w, iconPath, id, xOffset, yOffset, duration, stacks)
	stacks = (stacks == "1") and "" or stacks
	-- If the icon already exists, don't redraw it, instead update it
	if drawableNmyIcons[id] ~= nil then
		if not drawableNmyIcons[id]:IsVisible() then
			drawableNmyIcons[id]:SetVisible(true)
			drawableNmyLabels[id]:Show(true)
			drawableNmyLabels_stacks[id]:Show(true)
		end
		drawableNmyIcons[id]:AddAnchor("LEFT", w, xOffset, yOffset)
		drawableNmyLabels[id]:AddAnchor("LEFT", w, xOffset, yOffset)
		drawableNmyLabels[id]:SetText(duration)
		drawableNmyLabels_stacks[id]:AddAnchor("LEFT", w, xOffset + 5, yOffset - 10)
		drawableNmyLabels_stacks[id]:SetText(stacks)
		return
	end
	-- Create an icon using iconPath
	local drawableIcon = w:CreateIconDrawable("artwork")
	drawableIcon:SetExtent(25, 25) -- Width, height
	drawableIcon:ClearAllTextures() -- Every other usage of AddTexture called this first 🤷
	drawableIcon:AddTexture(iconPath) -- path to dds texture to load
	drawableIcon:SetVisible(true)
	-- add timer label
	local lblDuration = w:CreateChildWidget("label", "lblDuration", 0, true)
	lblDuration:Show(true)
	lblDuration:EnablePick(false)
	lblDuration.style:SetColor(1, 1, 1, 1.0)
	lblDuration.style:SetOutline(true)
	lblDuration.style:SetAlign(ALIGN_LEFT)
	lblDuration:SetText(duration)
	-- add stacks label
	local lblStacks = w:CreateChildWidget("label", "lblStacks", 0, true)
	lblStacks:Show(true)
	lblStacks:EnablePick(false)
	lblStacks.style:SetColor(0, 1, 1, 1.0)
	lblStacks.style:SetOutline(true)
	lblStacks.style:SetAlign(ALIGN_RIGHT)
	lblStacks:SetText(stacks)
	-- Save the drawn icon to the global object array
	drawableNmyLabels[id] = lblDuration
	drawableNmyLabels_stacks[id] = lblStacks
	drawableNmyIcons[id] = drawableIcon
end

------------------------ Function called perpetually ------------------------
function buffAnchor:OnUpdate(dt)
	-- Find coordinates of nameplate
	local nScrX_Tar, nScrY_Tar, nScrZ_Tar = X2Unit:GetUnitScreenPosition("watchtarget")
	if nScrX_Tar == nil or nScrY_Tar == nil or nScrZ_Tar == nil then
		buffAnchor:AddAnchor("TOPLEFT", "UIParent", 5000, 5000)
	elseif nScrZ_Tar > 0 then
		local x = math.floor(0.5 + nScrX_Tar)
		local y = math.floor(0.5 + nScrY_Tar)
		buffAnchor:Show(true)
		buffAnchor:Enable(true)
		buffAnchor:AddAnchor("TOPLEFT", "UIParent", x - 50, y - 40)

		-- Handle buffs
		buffAllString = ""
		debuffAllString = ""
		local UBuffCount = X2Unit:UnitBuffCount("watchtarget")
		local buffCounter = 0
		local currentBuffs = {}
		for i = 1, UBuffCount do
			local buff = X2Unit:UnitBuffTooltip("watchtarget", i)
			local buffExtra = X2Unit:UnitBuff("watchtarget", i)
			strBuffId = tostring(buffExtra["buff_id"])
			if target_buffs[strBuffId] ~= nil or showAllBuffs then
				currentBuffs[buff["name"]] = true
				--local iconPath = target_buffs[buff["name"]]
				iconPath = buffExtra["path"]
				local duration = buff["timeLeft"] and tostring(math.floor(buff["timeLeft"] / 1000)) or ""
				local stacks = tostring(buff["stack"] or "")
				drawIcon(buffAnchor, iconPath, buff["name"], 30 * buffCounter, 0, duration, stacks)
				buffCounter = buffCounter + 1
			end
			buffAllString = buffAllString .. buff["name"] .. " - " .. strBuffId .. "\n"
		end

		-- Handle debuffs
		local UDebuffCount = X2Unit:UnitDeBuffCount("watchtarget")
		local debuffCounter = 0
		for i = 1, UDebuffCount do
			local debuff = X2Unit:UnitDeBuffTooltip("watchtarget", i)
			local debuffExtra = X2Unit:UnitDeBuff("watchtarget", i)
			strdeBuffId = tostring(debuffExtra["buff_id"])
			if target_debuffs[strdeBuffId] ~= nil or showAllDebuffs then
				currentBuffs[debuff["name"]] = true
				iconPath = debuffExtra["path"]
				local duration = debuff["timeLeft"] and tostring(math.floor(debuff["timeLeft"] / 1000)) or ""
				local stacks = tostring(debuff["stack"] or "")
				drawIcon(buffAnchor, iconPath, debuff["name"], 30 * debuffCounter, 35, duration, stacks)
				debuffCounter = debuffCounter + 1
			end
			debuffAllString = debuffAllString .. debuff["name"] .. " - " .. strdeBuffId .. "\n"
		end
		if target_buffDebugMessages and (buffAllString ~= lastbuffString) then
			X2Chat:DispatchChatMessage(CMF_SYSTEM, "----- Target buffs: -----" .. "\n" .. buffAllString)
			lastbuffString = buffAllString
		end
		if target_debuffDebugMessages and (debuffAllString ~= lastdebuffString) then
			X2Chat:DispatchChatMessage(CMF_SYSTEM, "----- Target debuffs: -----" .. "\n" .. debuffAllString)
			lastdebuffString = debuffAllString
		end
		-- Disable icons no longer current
		for id, icon in pairs(drawableNmyIcons) do
			if not currentBuffs[id] and icon:IsVisible() then
				drawableNmyLabels[id]:Show(false)
				drawableNmyLabels_stacks[id]:Show(false)
				icon:SetVisible(false)
			end
		end
	end
end
buffAnchor:SetHandler("OnUpdate", buffAnchor.OnUpdate)

---------------------- Settings handler --------------------------------
local languageSetting = "English"
--language strings
local BUFFADDGUIDE = " showall/list/add/remove [buffid] [comment(optional)]"
local INVALIDCOMMAND =
	"Invalid command. !debuff / !buff / !showids / !import / !export \n Self commands: !sdebuff / !sbuff / !sshowids / !simport / !sexport"
local BUFFLOADSUCCESS = "Buffs loaded successfully."
local TABLE_EMPTY = "buffs.lua not found. Starting with an empty buffs table."
local FILENOTFOUND = "buffs.lua not found. An empty buffs table will be created."
local FAILTOOPENLUAFILE = "Failed to open buffs.lua for writing."
local ADDING_BUFF = "Adding buff #"
local REMOVINGBUFF = "Removing buff #"
local BUFFNOTFOUND = "Buff not found #"
local EXPORTEDTO = "Exported to: "
local IMPORTTO = "Please import to: "
local DISPLAYING_ALLBUFFS = "Displaying all buffs and debuffs of target."
local HIDING_ALLBUFFS = "Hiding all buffs and debuffs of target"
local SHOWING_ALL = "Toggling showing all "
local LOADSUCCESS = "Succesfully loaded debuff plugin. Author: Strawberry"

languageSetting = X2Locale:GetLocale()

if languageSetting == "zh_cn" then
	BUFFADDGUIDE = " showall/list/add/remove [buffid] [备注（可选]"
	INVALIDCOMMAND =
		"无效的指令。  !debuff / !buff / !showids / !import / !export \n 自身指令: !sdebuff / !sbuff / !sshowids / !simport / !sexport"
	BUFFLOADSUCCESS = "增益效果加载成功。"
	TABLE_EMPTY = "未找到 buffs.lua。将从空的增益效果表开始。"
	FILENOTFOUND = "未找到 buffs.lua。将创建一个空的增益效果表。"
	FAILTOOPENLUAFILE = "打开 buffs.lua 以进行写入失败。"
	ADDING_BUFF = "添加增益效果 #"
	REMOVINGBUFF = "移除 增益效果 #"
	BUFFNOTFOUND = "未找到增益效果 #"
	EXPORTEDTO = "导出到: "
	IMPORTTO = "请导入到: "
	DISPLAYING_ALLBUFFS = "显示目标的所有增益和减益效果。"
	HIDING_ALLBUFFS = "隐藏目标的所有增益和减益效果。"
	SHOWING_ALL = "切换显示所有 "
	LOADSUCCESS = "成功加载了 debuff 插件。作者: Strawberry"
elseif languageSetting == "ru" then
	BUFFADDGUIDE = " showall/list/add/remove [buffid] [комментарий (необязательно)]"
	INVALIDCOMMAND =
		"Неверная команда.  !debuff / !buff / !showids / !import / !export \n Команды для себя: !sdebuff / !sbuff / !sshowids / !simport / !sexport"
	BUFFLOADSUCCESS = "Бафы успешно загружены."
	TABLE_EMPTY = "Файл buffs.lua не найден. Начинаем с пустой таблицы бафов."
	FILENOTFOUND =
		"Файл buffs.lua не найден. Будет создана пустая таблица бафов."
	FAILTOOPENLUAFILE = "Не удалось открыть buffs.lua для записи."
	ADDING_BUFF = "Добавление бафа #"
	REMOVINGBUFF = "Удаление бафа #"
	BUFFNOTFOUND = "Баф не найден #"
	EXPORTEDTO = "Экспортировано в: "
	IMPORTTO = "Пожалуйста, импортируйте в: "
	DISPLAYING_ALLBUFFS = "Отображение всех баффов и дебаффов цели."
	HIDING_ALLBUFFS = "Скрытие всех баффов и дебаффов цели."
	SHOWING_ALL = "Переключение отображения всех "
	LOADSUCCESS = "Плагин дебаффов успешно загружен. Автор: Strawberry"
end

--X2Chat:DispatchChatMessage(CMF_SYSTEM, languageSetting)
-- Common function to load buffs or debuffs
--local effects = {}
local function loadEffects(effectType)
	local filename = effectType .. ".lua"
	local file = io.open(filename, "r")

	if file then
		if effectType == "buff" then
			target_buffs = {} -- Reset the table for a clean load
		elseif effectType == "debuff" then
			target_debuffs = {} -- Reset the table for a clean load
		end

		for line in file:lines() do
			local id, name = line:match('%["(%d+)"%]%s*=%s*"(.-)"')
			if id and name then
				if effectType == "buff" then
					target_buffs[id] = name
				elseif effectType == "debuff" then
					target_debuffs[id] = name
				end
			end
		end
		file:close()
	else
		X2Chat:DispatchChatMessage(CMF_SYSTEM, FILENOTFOUND)
	end
end

local function saveEffects(effectType)
	local filename = effectType .. ".lua"
	local file = io.open(filename, "w")
	if not file then
		X2Chat:DispatchChatMessage(CMF_SYSTEM, FAILTOOPENLUAFILE)
		return
	end

	local effectsToSave = effectType == "buff" and target_buffs or target_debuffs
	file:write("target_" .. effectType .. " = {\n")
	for id, name in pairs(effectsToSave) do
		file:write(string.format('    ["%s"] = "%s",\n', id, name))
	end
	file:write("}\n")
	file:close()
end

local function addEffect(effectType, effectId, comment)
	comment = comment or ""
	if effectType == "buff" then
		target_buffs[effectId] = comment
	elseif effectType == "debuff" then
		target_debuffs[effectId] = comment
	end
	saveEffects(effectType)
	X2Chat:DispatchChatMessage(
		CMF_SYSTEM,
		"Adding "
			.. effectType:sub(1, 1):upper()
			.. effectType:sub(2)
			.. " "
			.. effectId
			.. ":"
			.. (comment and comment or "")
	)
end

local function removeEffect(effectType, effectId)
	if effectType == "buff" then
		if target_buffs[effectId] then
			target_buffs[effectId] = nil
			saveEffects(effectType)
			X2Chat:DispatchChatMessage(CMF_SYSTEM, REMOVINGBUFF .. effectId)
		else
			X2Chat:DispatchChatMessage(CMF_SYSTEM, BUFFNOTFOUND .. effectId)
		end
	elseif effectType == "debuff" then
		if target_debuffs[effectId] then
			target_debuffs[effectId] = nil
			saveEffects(effectType)
			X2Chat:DispatchChatMessage(CMF_SYSTEM, REMOVINGBUFF .. effectId)
		else
			X2Chat:DispatchChatMessage(CMF_SYSTEM, BUFFNOTFOUND .. effectId)
		end
	end
end

local function listEffects(effectType)
	if effectType == "buff" then
		X2Chat:DispatchChatMessage(CMF_SYSTEM, dump(target_buffs))
	elseif effectType == "debuff" then
		X2Chat:DispatchChatMessage(CMF_SYSTEM, dump(target_debuffs))
	end
end

-- Initial load of both buffs and debuffs
loadEffects("buff")
loadEffects("debuff")
X2Chat:DispatchChatMessage(CMF_SYSTEM, LOADSUCCESS)
