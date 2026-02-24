-------------- Original Author: Strawberry --------------
----------------- Discord: exec_noir --------------------
local function onShotEvent(
	unitId,
	eventType,
	sourceName,
	targetName,
	abilityId,
	abilityName,
	damageType,
	effectType,
	isActive
)
	if eventType == "SPELL_AURA_APPLIED" or "SPELL_AURA_REMOVED" then
		local message = os.date("[%H:%M:%S]") .. " COMBAT_MSG: " .. eventType
		X2Chat:DispatchChatMessage(CMF_SYSTEM, message)

		local unitIdName = X2Unit:UnitName(unitId) or "Unknown"
		local sourceNameName = X2Unit:UnitName(sourceName) or "Unknown"
		local targetNameName = X2Unit:UnitName(targetName) or "Unknown"

		local args = {
			{ "Unit ID", unitId, unitIdName },
			{ "Event Type", eventType },
			{ "Source Name", sourceName, sourceNameName },
			{ "Target Name", targetName, targetNameName },
			{ "Ability ID", abilityId },
			{ "Ability Name", abilityName },
			{ "Damage Type", damageType },
			{ "Effect Type", effectType },
			{ "Is Active", isActive },
		}

		for i, arg in ipairs(args) do
			local argValue = tostring(arg[2])
			local argType = type(arg[2])
			local argMessage = arg[1] .. " (" .. argType .. "): " .. argValue
			if arg[3] then
				argMessage = argMessage .. " (Name: " .. arg[3] .. ")"
			end
			X2Chat:DispatchChatMessage(CMF_SYSTEM, argMessage)
		end
	end
end

--UIParent:SetEventHandler(UIEVENT_TYPE.COMBAT_MSG, onShotEvent)
