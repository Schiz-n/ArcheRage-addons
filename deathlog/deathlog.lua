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
for i = 1, 100 do
	ADDON:ImportObject(i)
	ADDON:ImportAPI(i)
end
for i = 1, 100 do
	local someFrame = ADDON:GetContent(i)
	X2Chat:DispatchChatMessage(CMF_SYSTEM, dump(BagFrame))
end
--todo: the word DAMAGE might be different on RU client

local selfName = X2Unit:UnitName("player")

--combat log table
local combatLog = {}
local function addToCombatLog(entry)
	table.insert(combatLog, entry)
	if #combatLog > 10 then
		table.remove(combatLog, 1)
	end
end

--notice upon death
local function YouDiedNotice(info1, info2, info3, info4)
	if selfName == info1 then -- you died
		for i, entry in ipairs(combatLog) do
			X2Chat:DispatchChatMessage(CMF_SYSTEM, entry)
		end
		combatLog = {}
	end
end
UIParent:SetEventHandler(UIEVENT_TYPE.UNIT_DEAD_NOTICE, YouDiedNotice)

--combat log (last 5 atks > 1000? last 10?)
local function onShotEvent(
	unitId,
	eventType,
	sourceName,
	targetName,
	abilityId,
	abilityName,
	damageType,
	effectType,
	isActive,
	more
)
	if targetName == selfName then
		local damageNumber = 0
		local abilityDamagedMe = "Unknown"
		if string.find(eventType, "ENVIRONMENTAL_DAMAGE") then
			damageNumber = damageType
			abilityDamagedMe = abilityId
		elseif string.find(eventType, "SPELL_DAMAGE") then
			damageNumber = math.abs(effectType)
			abilityDamagedMe = abilityName
		end
		if damageNumber ~= 0 and tonumber(damageNumber) > 1000 then
			local dmgString = sourceName .. " - " .. tostring(abilityDamagedMe) .. ":" .. damageNumber
			addToCombatLog(dmgString)
		end
	end
end

UIParent:SetEventHandler(UIEVENT_TYPE.COMBAT_MSG, onShotEvent)

X2Chat:DispatchChatMessage(CMF_SYSTEM, dump(UIC_BAG))
local BagFrame = ADDON:GetContent(UIC_BAG)
X2Chat:DispatchChatMessage(CMF_SYSTEM, dump(BagFrame))
local BagFrame2 = ADDON:ShowContent(UIC_BAG, true)
X2Chat:DispatchChatMessage(CMF_SYSTEM, dump(BagFrame2))
local BagFrame3 = ADDON:ToggleContent(UIC_BAG)
X2Chat:DispatchChatMessage(CMF_SYSTEM, dump(BagFrame2))

X2Chat:DispatchChatMessage(CMF_SYSTEM, "Ayo")
