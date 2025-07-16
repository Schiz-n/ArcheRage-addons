
-------------- Original Author: Strawberry --------------
----------------- Discord: exec_noir --------------------
if API_TYPE == nil then
    ADDON:ImportAPI(8)
    X2Chat:DispatchChatMessage(CMF_SYSTEM, "Globals folder not found. Please install it at https://github.com/Schiz-n/ArcheRage-addons/tree/master/globals")
    return
end
--------------- Thanks to Koala and Zilus ---------------
ADDON:ImportObject(OBJECT_TYPE.TEXT_STYLE)
ADDON:ImportObject(OBJECT_TYPE.BUTTON)
ADDON:ImportObject(OBJECT_TYPE.DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.NINE_PART_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.COLOR_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.WINDOW)
ADDON:ImportObject(OBJECT_TYPE.LABEL)
ADDON:ImportObject(OBJECT_TYPE.ICON_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.IMAGE_DRAWABLE)

ADDON:ImportAPI(API_TYPE.CHAT.id)
ADDON:ImportAPI(API_TYPE.TIME.id)
ADDON:ImportAPI(API_TYPE.MAP.id)
ADDON:ImportAPI(API_TYPE.LOCALE.id) --add to localization

--window length saved
local countFilePath = "TimeUntilWindowCount.txt"

local function SaveTimerCount(count)
    local file = io.open(countFilePath, "w")
    file:write(tostring(count))
    file:close()
end

local function LoadTimerCount()
    local file = io.open(countFilePath, "r")
    if not file then return 10 end
    local line = file:read("*line")
    file:close()
    local num = tonumber(line)
    if num then return num else return 10 end
end

---

local timerAnchor = CreateEmptyWindow("timerAnchor", "UIParent")
timerAnchor:Show(true)
timerAnchor:AddAnchor("TOPLEFT", "UIParent", 100, 100)
timerAnchor:SetExtent(150, 50)
timerAnchor:EnableDrag(true)
local background = timerAnchor:CreateColorDrawable(0, 0, 0, 0.5, "background")
background:AddAnchor("TOPLEFT", timerAnchor, 0, 0)
background:AddAnchor("BOTTOMRIGHT", timerAnchor, 0, 0)
local amountOfTimers =  LoadTimerCount()
local eventLabels = {}
local timerLabels = {}
function updateTimers()
    for i, lbl in ipairs(eventLabels) do lbl:Show(false) end
    for i, lbl in ipairs(timerLabels) do lbl:Show(false) end
    eventLabels = {}
    timerLabels = {}
    timerAnchor:SetExtent(150, amountOfTimers * 25)

    for i = 1, amountOfTimers do
        --names
        local lblEventName = timerAnchor:CreateChildWidget("label", "timerLabelEvent" .. i, 0, false)
        lblEventName:SetHeight(20)
        lblEventName.style:SetFontSize(16)
        lblEventName:AddAnchor("TOPLEFT", timerAnchor, 0, (i - 1) * 25)
        lblEventName.style:SetAlign(ALIGN_LEFT)
        lblEventName.style:SetColor(255, 255, 255, 255)
        lblEventName:SetText("")
        eventLabels[i] = lblEventName

        --timers
        local lblTimer = timerAnchor:CreateChildWidget("label", "timerLabelTime" .. i, 0, false)
        lblTimer:SetHeight(20)
        lblTimer.style:SetFontSize(16)
        lblTimer:AddAnchor("TOPRIGHT", timerAnchor, 0, (i - 1) * 25)
        lblTimer.style:SetAlign(ALIGN_RIGHT)
        lblTimer.style:SetColor(255, 255, 255, 255)
        lblTimer:SetText("")
        timerLabels[i] = lblTimer
    end
end
updateTimers()
local moreEntries = timerAnchor:CreateChildWidget("button", "moreEntries", 0, true)
moreEntries:AddAnchor("TOPLEFT", timerAnchor, -5, -25)
moreEntries:SetStyle("text_default")
--ApplyButtonSkin(moreEntries, buttonskin)
moreEntries:SetExtent(35,25)
--moreEntries:SetWidth(25)
moreEntries:SetText("+")

moreEntries:SetWidth(25)
function moreEntries:OnClick(arg) 
    amountOfTimers = amountOfTimers + 1 
    updateTimers() 
    SaveTimerCount(amountOfTimers)
end
moreEntries:SetHandler("OnClick", moreEntries.OnClick)
local lessEntries = timerAnchor:CreateChildWidget("button", "lessEntries", 0, true)
lessEntries:AddAnchor("TOPLEFT", timerAnchor, 20, -25)
lessEntries:SetStyle("text_default")
--ApplyButtonSkin(lessEntries, buttonskin)
lessEntries:SetExtent(35,25)
lessEntries:SetText("-")
lessEntries:SetWidth(25)
function lessEntries:OnClick(arg) 
    if amountOfTimers > 1 then
        amountOfTimers = amountOfTimers - 1 
        updateTimers() 
        SaveTimerCount(amountOfTimers)
    end
end
lessEntries:SetHandler("OnClick", lessEntries.OnClick)

----- save draggable window ----------
local filePath = "TimeUntilWindowPos.txt"
local function GetUIScaleFactor()
    return UIParent:GetUIScale() or 1.0
end
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
    if not file then return 0, 0 end
    local line = file:read("*line") 
    file:close()
    local x,y = line:match("(%d+),(%d+)")
    if x and y then return x,y else return 0,0 end
end
function timerAnchor:OnDragStart() self:StartMoving() self.moving = true end
timerAnchor:SetHandler("OnDragStart", timerAnchor.OnDragStart)
function timerAnchor:OnDragStop()
    self:StopMovingOrSizing()
    self.moving = false
    local offsetX, offsetY = self:GetOffset()
    local uiScale = UIParent:GetUIScale() or 1.0
    local normalizedX = offsetX * uiScale
    local normalizedY = offsetY * uiScale
    SaveWindowPosition(normalizedX, normalizedY)
end
timerAnchor:SetHandler("OnDragStop", timerAnchor.OnDragStop)
local savedWindowX, savedWindowY = LoadSavedPosition()
timerAnchor:AddAnchor("TOPLEFT", "UIParent", tonumber(savedWindowX), tonumber(savedWindowY))



local whaleConflict = false
local aegConflict = true
local dynamicEvents = {}

--Localization section

local locale = X2Locale:GetLocale()

if locale~="en_us" and locale~="ru" and locale~="zh_cn" then
    locale = "en_us"
end

local eventsName = {
	["ru"] = {
				GR = "Призрачка",
				CR = "Кровь",
				Hiram = "Рамианский",
				SG_CR = "Анталон",--rename other event name
				JMG = "АГЛ",
				Lusca = "Спруты",
				BD = "Ксанатос",
				Kraken = "Кракен",
				Leviathan = "Левиафан",
				Charybdis = "Калидис",
				Anthalon_G = "Анталон(Сады)",
				Halcy = "Даскшир",
				RD = "Гартарейн",
				Abyssal_Atk = "Спруты",
				Hasla = "Зомби",
				Akasch = "Ифнир",
				Prairie = "Луг",
				Wonderland = "Чудесариум"
			},
	["en_us"] = {
				GR = "GR",
				CR = "CR",
				Hiram = "Hiram T6",
				SG_CR = "SG CR",
				JMG = "JMG",
				Lusca = "Lusca",
				BD = "BD",
				Kraken = "Kraken",
				Leviathan = "Leviathan",
				Charybdis = "Charybdis",
				Anthalon_G = "Anthalon(G)",
				Halcy = "Halcyona",
				RD = "RD",
				Abyssal_Atk = "Abyssal Atk",
				Hasla = "Hasla",
				Akasch = "Akasch",
				Prairie = "Prairie",
				Wonderland = "Wonderland"
			},
	["zh_cn"] = {
				GR = "迷雾",
				CR = "征兆",
				Hiram = "Hiram T6",
		                aegis = "烛台",
				SG_CR = "安塔伦",
		                whalesong = "鲸鱼",
				JMG = "JMG",
				Lusca = "阿肯",
				BD = "黑龙",
				Halcy = "黄金",
				RD = "红龙",
				Abyssal_Atk = "深渊",
				Hasla = "翡翠谷征兆",
				Akasch = "守山",
				Prairie = "大草原",
		                Kraken = "克拉肯",
				Leviathan = "利维坦",
				Charybdis = "卡里迪斯",
				Anthalon_G = "庭院安塔伦",
				Wonderland = "仙境"
			}				
}

local dynamicEventsName = {
	["ru"] = {
			aegis = "Эфен",
			whalesong = "Бухта"
		},
	["en_us"] = {
			aegis = "Aegis",
			whalesong = "Whalesong"
		},
	["zh_cn"] = {
			aegis = "烛台",
			whalesong = "鲸鱼"
		}
}
--end Localization section

local serverEvents = {
    [eventsName[locale].GR] = {
       { times = {
            {hour = 2, minute = 20, duration = 20},
            {hour = 6, minute = 20, duration = 20},
            {hour = 10, minute = 20, duration = 20},
            {hour = 14, minute = 20, duration = 20},
            {hour = 18, minute = 20, duration = 20},
            {hour = 22, minute = 20, duration = 20}
        },
        days = {1, 2, 3, 4, 5, 6, 7}
    }},
    [eventsName[locale].CR] = {
       { times = {
            {hour = 0, minute = 20, duration = 10},
            {hour = 4, minute = 20, duration = 10},
            {hour = 8, minute = 20, duration = 10},
            {hour = 12, minute = 20, duration = 10},
            {hour = 16, minute = 20, duration = 10},
            {hour = 20, minute = 20, duration = 10}
        },
        days = {1, 2, 3, 4, 5, 6, 7}
    } },
    [eventsName[locale].Hiram] = {
       { times = {
            {hour = 1, minute = 50, duration = 40},
            {hour = 5, minute = 50, duration = 40},
            {hour = 9, minute = 50, duration = 40},
            {hour = 13, minute = 50, duration = 40},
            {hour = 17, minute = 50, duration = 40},
            {hour = 21, minute = 50, duration = 40}
        },
        days = {1, 2, 3, 4, 5, 6, 7}
    } },
    [eventsName[locale].SG_CR] = {
    {    times = {
            {hour = 1, minute = 20, duration = 10},
            {hour = 5, minute = 20, duration = 10},
            {hour = 9, minute = 20, duration = 10},
            {hour = 13, minute = 20, duration = 10},
            {hour = 17, minute = 20, duration = 10},
            {hour = 21, minute = 20, duration = 10}
        },
        days = {1, 2, 3, 4, 5, 6, 7}
    } },
    [eventsName[locale].JMG] = {
       { times = {
            {hour = 3, minute = 20, duration = 15},
            {hour = 7, minute = 20, duration = 15},
            {hour = 11, minute = 20, duration = 15},
            {hour = 15, minute = 20, duration = 15},
            {hour = 19, minute = 20, duration = 15},
            {hour = 23, minute = 20, duration = 15}
        },
        days = {1, 2, 3, 4, 5, 6, 7}
    } },
    [eventsName[locale].Lusca] = { times = {{hour = 12, minute = 20, duration = 30}}, days = {1, 2, 3, 4, 5, 6, 7} },
    [eventsName[locale].BD] = {
        { times = {{hour = 21, minute = 30, duration = 60}}, days = {3, 5} },
        { times = {{hour = 18, minute = 30, duration = 60}}, days = {7} }
    },
    [eventsName[locale].Kraken] = {
        { times = {{hour = 22, minute = 30, duration = 60}}, days = {3, 5} },
        { times = {{hour = 19, minute = 30, duration = 60}}, days = {7} }
    },
    [eventsName[locale].Leviathan] = {
        { times = {{hour = 20, minute = 05, duration = 60}}, days = {3, 5} },
        { times = {{hour = 17, minute = 05, duration = 60}}, days = {7} }
    },
    [eventsName[locale].Charybdis] = {
        { times = {{hour = 21, minute = 30, duration = 60}}, days = {1, 5} }
    },
    --["Small Titan"] = {
    --    { times = {
    --        {hour = 4, minute = 00, duration = 15},
    --        {hour = 7, minute = 00, duration = 15},
    --        {hour = 10, minute = 00, duration = 15},
    --        {hour = 13, minute = 00, duration = 15},
    --        {hour = 16, minute = 00, duration = 15},
    --        {hour = 19, minute = 00, duration = 15},
    --        {hour = 22, minute = 00, duration = 15}
    --    }, 
    --    days = {3, 6} }
    --},
    --["Big Titan"] = {
    --    { times = {
    --    	{hour = 14, minute = 00, duration = 15}, 
    --    	{hour = 21, minute = 00, duration = 15}
    --    }, 
    --    days = {4, 7} }
    --},
    [eventsName[locale].Anthalon_G] = {
        { times = {{hour = 21, minute = 30, duration = 45}}, days = {1, 2, 6} }
    },
    [eventsName[locale].Halcy] = {
        { times = {{hour = 1, minute = 30, duration = 30}, {hour = 11, minute = 00, duration = 10}, {hour = 20, minute = 30, duration = 10}}, days = {1, 2, 3, 4, 5, 6, 7} }
    },
    [eventsName[locale].RD] = {
        { times = {{hour = 2, minute = 00, duration = 15}, {hour = 10, minute = 30, duration = 15}, {hour = 20, minute = 00, duration = 15}}, days = {1, 2, 4, 6} }
    },
    [eventsName[locale].Abyssal_Atk] = {
        { times = {{hour = 12, minute = 00, duration = 30}, {hour = 22, minute = 30, duration = 30}}, days = {3, 5, 7} }
    },
    [eventsName[locale].Hasla] = {
        { times = {{hour = 18, minute = 49, duration = 15}, {hour = 20, minute = 49, duration = 15}}, days = {1, 2, 3, 4} }
    },
    [eventsName[locale].Akasch] = {
        { times = {{hour = 15, minute = 00, duration = 20}, {hour = 18, minute = 30, duration = 20}, {hour = 21, minute = 30, duration = 20}}, days = {7} },
        { times = {{hour = 15, minute = 00, duration = 20}, {hour = 18, minute = 30, duration = 20}, {hour = 22, minute = 00, duration = 20}}, days = {6} }
    },
    [eventsName[locale].Prairie] = {
        { times = {{hour = 9, minute = 00, duration = 20}, {hour = 22, minute = 00, duration = 20}}, days = {6, 7} }
    },
    [eventsName[locale].Wonderland] = {
       { times = {
            {hour = 11, minute = 00, duration = 5},
            {hour = 19, minute = 00, duration = 5}
        },
        days = {1, 2, 3, 4, 5, 6, 7}
    } }
}

local function calculateDayOfWeek(year, month, day)
    if month < 3 then
        month = month + 12
        year = year - 1
    end
    local k = year % 100
    local j = math.floor(year / 100)
    local dayOfWeek = (day + math.floor((13 * (month + 1)) / 5) + k + math.floor(k / 4) + math.floor(j / 4) + 5 * j) % 7
    return (dayOfWeek + 6) % 7 + 1
end

local function serverMinutesSinceMidnight(serverTimeTable)
    if not serverTimeTable then return nil end
    return (serverTimeTable.hour * 60) + serverTimeTable.minute
end

local function getServerEventMinutes(eventTimes, eventDays, currentServerMinutes, currentDayOfWeek)
    local eventMinutesList = {}

    for _, time in ipairs(eventTimes) do
        local eventMinutes = (time.hour * 60) + time.minute
        local dayOffset = nil

        for _, eventDay in ipairs(eventDays) do
            local daysAway = eventDay - currentDayOfWeek
            if daysAway < 0 then
                daysAway = daysAway + 7
            end
            if dayOffset == nil or daysAway < dayOffset then
                dayOffset = daysAway
            end
        end

        local minutesAway = eventMinutes - currentServerMinutes + (dayOffset * 1440)
        if minutesAway < 0 then
            --minutesAway = minutesAway + 1440
        end

        table.insert(eventMinutesList, minutesAway)
    end

    return eventMinutesList 
end



local timer = 0
function timerAnchor:OnUpdate(dt)
    timer = timer + dt
    if timer > 1000 then
        timer = 0
        local isAM, currentHour, currentMinute = X2Time:GetGameTime()
        local serverTimeTable = UIParent:GetServerTimeTable()
        local currentServerMinutes = serverMinutesSinceMidnight(serverTimeTable)
        local dayOfWeek = calculateDayOfWeek(serverTimeTable.year, serverTimeTable.month, serverTimeTable.day)
        local sortedEvents = {}
        for name, eventList in pairs(serverEvents) do
            for _, eventData in ipairs(eventList) do
                local minutesList = getServerEventMinutes(eventData.times, eventData.days, currentServerMinutes, dayOfWeek)
                for i, minutesAway in ipairs(minutesList) do
                    if minutesAway then
                        --X2Chat:DispatchChatMessage(CMF_SYSTEM, tostring(minutesAway) .. " - " .. eventData.times[i].duration)
                        --X2Chat:DispatchChatMessage(CMF_SYSTEM, tostring(eventDuration) .. " times: " .. eventData.times[i] .. " duration: " .. eventData.times[i].duration)
                        local eventDuration = eventData.times[i] and eventData.times[i].duration or 0
                        table.insert(sortedEvents, {
                            name = name,
                            minutes = minutesAway,
                            duration = eventDuration, 
                            isServerEvent = true
                        })
                    end
                end
            end
        end

        for i = #dynamicEvents, 1, -1 do
            local ev = dynamicEvents[i]
            local minutesLeftUntilStart = ev.endTime - currentServerMinutes - ev.duration
            if currentServerMinutes > ev.endTime then
                table.remove(dynamicEvents, i)
            else
                local remainingDuration = ev.endTime - currentServerMinutes
                local showMinutes = (minutesLeftUntilStart > 0) and minutesLeftUntilStart or 0
                table.insert(sortedEvents, {
                    name = ev.name,
                    minutes = showMinutes,
                    duration = remainingDuration,
                    isServerEvent = false
                })
            end
        end

        table.sort(sortedEvents, function(a, b) return a.minutes < b.minutes end)
        local skipCounter = 0
        for i, event in ipairs(sortedEvents) do
            --X2Chat:DispatchChatMessage(CMF_SYSTEM, tostring(event.minutes))
            if (event.minutes + event.duration) > 0 then
                local iWithSkip = i - skipCounter
                if eventLabels[iWithSkip] then
                    eventLabels[iWithSkip]:SetText(event.name)
                    local hours = math.floor(event.minutes / 60)
                    local minutes = event.minutes % 60
                    if event.minutes <= 0 then
                        eventLabels[iWithSkip].style:SetColor(255, 0, 0, 255)
                        timerLabels[iWithSkip].style:SetColor(255, 0, 0, 255)
                        local timeEventIsActive = event.duration + event.minutes
                        timerLabels[iWithSkip]:SetText(string.format("Ends %02d", timeEventIsActive))
                    else
                        eventLabels[iWithSkip].style:SetColor(255, 255, 255, 255)
                        timerLabels[iWithSkip].style:SetColor(255, 255, 255, 255)
                        if event.name == "Big Titan" or event.name == "Small Titan" then
                            eventLabels[iWithSkip].style:SetColor(0.3, 0.7, 1, 255)
                            timerLabels[iWithSkip].style:SetColor(0.3, 0.7, 1, 255)
                        end
                        if event.name == dynamicEventsName[locale].whalesong or event.name == dynamicEventsName[locale].aegis then
                            eventLabels[iWithSkip].style:SetColor(1, 0.6, 0.1, 255)
                            timerLabels[iWithSkip].style:SetColor(1, 0.6, 0.1, 255)
                        end
                        if hours == 0 then
                            timerLabels[iWithSkip]:SetText(string.format("%02d", minutes))
                        else
                            timerLabels[iWithSkip]:SetText(string.format("%02d:%02d", hours, minutes))
                        end
                    end
                end
            else
                skipCounter = skipCounter + 1
            end
        end
    end
end
timerAnchor:SetHandler("OnUpdate", timerAnchor.OnUpdate)

local events = { "HPW_ZONE_STATE_CHANGE" }
local function GenericEventHandler(eventName)
    return function(info1)
        if info1 == 102 or info1 == 103 then
            local zoneInfo = X2Map:GetZoneStateInfoByZoneId(info1)
            if zoneInfo.conflictState == 5 then
                local serverTime = UIParent:GetServerTimeTable()
                local now = serverMinutesSinceMidnight(serverTime)
                local name = (info1 == 102) and dynamicEventsName[locale].aegis or dynamicEventsName[locale].whalesong
                local startIn = 15
                local duration = 15
                local endTime = now + startIn + duration
                for _, e in ipairs(dynamicEvents) do
                    if e.name == name and now < e.endTime then return end
                end
                table.insert(dynamicEvents, {
                    name = name,
                    minutes = startIn,
                    duration = duration,
                    isServerEvent = false,
                    endTime = endTime
                })
            end
        end
    end
end
for _, event in ipairs(events) do
    UIParent:SetEventHandler(UIEVENT_TYPE[event], GenericEventHandler(event))
end

--moreEntries:SetWidth(25)
