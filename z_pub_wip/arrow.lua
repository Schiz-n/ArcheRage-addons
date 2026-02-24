-------------- Original Author: Strawberry --------------
----------------- Discord: exec_noir --------------------
-- proof of concept for drawing an arrow pointing at   --
-- something on the screen, please reconsider drawing  --
-- the arrow every frame, it could be taxing idk       --
---------------------------------------------------------
if API_TYPE == nil then
	ADDON:ImportAPI(8)
	X2Chat:DispatchChatMessage(
		CMF_SYSTEM,
		"Globals folder not found. Please install it at https://github.com/Schiz-n/ArcheRage-addons/tree/master/globals"
	)
	return
end
ADDON:ImportObject(OBJECT_TYPE.WINDOW)
ADDON:ImportObject(OBJECT_TYPE.EFFECT_DRAWABLE)
ADDON:ImportAPI(API_TYPE.CHAT.id)
ADDON:ImportAPI(API_TYPE.UNIT.id)

local yOffset = 100
local frame = CreateEmptyWindow("refreshForcer", "UIParent")
frame:SetExtent(50, 50)
frame:Show(true)
frame:AddAnchor("CENTER", "UIParent", 0, -yOffset)

local arrow = frame:CreateEffectDrawableByKey("ui/quest/quest_notifier.dds", "direction", "overlay")
arrow:SetVisible(true)
arrow:SetExtent(25, 25)
arrow:AddAnchor("CENTER", frame, 0, 0)
arrow:SetEffectPriority(1, "alpha", 0.5, 0.0)
arrow:SetEffectInitialColor(1, 1, 1, 1, 1)
arrow:SetEffectFinalColor(1, 1, 1, 1, 1)
arrow:SetMoveEffectType(1, "circle", 0, 0, 0, 0)
arrow:SetMoveEffectCircle(1, 0, 360)
arrow:SetStartEffect(true)

local prevAngle = 0
local centerX = UIParent:GetScreenWidth() / 2
local centerY = (UIParent:GetScreenHeight() / 2) - yOffset

--359<>1 degrees causes jitter, this prevents it
local function ShortestArc(from, to)
	local diff = (to - from + 540) % 360 - 180
	return from + diff
end

--doing this every frame is probably bad
--idk just a proof of concept anyway
frame:SetHandler("OnUpdate", function()
	local nScrX_Tar, nScrY_Tar, nScrZ_Tar = X2Unit:GetUnitScreenPosition("target")
	if nScrX_Tar ~= nil and nScrY_Tar ~= nil and nScrZ_Tar ~= nil then
		X2Chat:DispatchChatMessage(
			CMF_SYSTEM,
			"Z: " .. tostring(nScrZ_Tar) .. " X: " .. tostring(nScrX_Tar) .. " Y: " .. tostring(nScrY_Tar)
		)
		local dx = nScrX_Tar - centerX
		local dy = nScrY_Tar - centerY
		local angle = math.atan2(dy, dx)
		local deg = math.deg(angle) + 90
		if deg < 0 then
			deg = deg + 360
		end
		--invert pointer when Zneg
		--(target is >180° behind you)
		if nScrZ_Tar <= 0 then
			deg = (deg + 180) % 360
		end
		local corrected = ShortestArc(prevAngle, deg)
		arrow:SetMoveEffectCircle(1, prevAngle, corrected)
		arrow:SetStartEffect(true)
		prevAngle = corrected % 360
	end
end)
