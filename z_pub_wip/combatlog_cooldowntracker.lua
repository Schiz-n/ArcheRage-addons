-------------- Original Author: Strawberry --------------
----------------- Discord: exec_noir --------------------
-- Timer state for abilities
local activeTimers = {
	-- Format: [abilityId] = { [targetName] = {end_time = <timestamp>} }
}

-- Create Buff Anchor Window
local buffAnchor = CreateEmptyWindow("buffAnchor", "UIParent")
buffAnchor:Show(true)
buffAnchor:AddAnchor("TOPLEFT", "UIParent", 10, -100)

local lblCapReached2 = buffAnchor:CreateChildWidget("label", "lblCapReached2", 10, true)
lblCapReached2:Show(true)
lblCapReached2:EnablePick(false)
lblCapReached2.style:SetColor(1, 0, 0, 1.0)
lblCapReached2.style:SetFontSize(20)
lblCapReached2.style:SetOutline(true)
lblCapReached2.style:SetAlign(ALIGN_LEFT)
lblCapReached2:AddAnchor("LEFT", buffAnchor, (UIParent:GetScreenWidth() / 2) - 115, (UIParent:GetScreenHeight() / 3))

-- Combat Log Event Handler
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
	if eventType == "SPELL_CAST_SUCCESS" then
		X2Chat:DispatchChatMessage(CMF_SYSTEM, sourceName .. " used " .. tostring(abilityId) .. tostring(abilityName))
		if abilityId == 33602 or abilityId == 14976 then
			X2Chat:DispatchChatMessage(CMF_SYSTEM, sourceName .. " used (important) " .. tostring(abilityId))
			-- Initialize nested table for the ability if it doesn't exist
			if not activeTimers[abilityId] then
				activeTimers[abilityId] = {}
			end
			-- Start or update the timer for this target
			local timerDuration = (abilityId == 14976) and 120 or 45
			activeTimers[abilityId][targetName] = { end_time = os.time() + timerDuration }
		end
	else
		X2Chat:DispatchChatMessage(
			CMF_SYSTEM,
			sourceName .. " used " .. tostring(abilityId) .. tostring(abilityName) .. tostring(eventType)
		)
	end
end

--UIParent:SetEventHandler(UIEVENT_TYPE.COMBAT_MSG, onShotEvent)

-- Update Loop for Buff Anchor
function buffAnchor:OnUpdate(dt)
	local current_time = os.time()
	local displayText = ""
	local currentTargetName = X2Unit:UnitName("target")
	--X2Chat:DispatchChatMessage(CMF_SYSTEM, "Your target is " .. (currentTargetName or "Unknown"))

	-- Iterate through active timers
	for abilityId, targets in pairs(activeTimers) do
		for targetName, timerData in pairs(targets) do
			if timerData and timerData.end_time then
				local remaining_time = timerData.end_time - current_time
				if remaining_time > 0 then
					-- Display timer only if the current target matches the targetName
					if targetName == currentTargetName then
						local abilityName_fake = (abilityId == 33602) and "Honor Nodachi" or "Mistsong Nodachi"
						displayText = displayText
							.. string.format(" %s (%s): %d\n", abilityName_fake, targetName, remaining_time)
					end
				else
					-- Timer expired, reset it
					activeTimers[abilityId][targetName] = nil
				end
			end
		end
	end

	-- Update the label with the countdown text
	lblCapReached2:SetText(displayText)
end

--buffAnchor:SetHandler("OnUpdate", buffAnchor.OnUpdate)
