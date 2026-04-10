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
ADDON:ImportObject(OBJECT_TYPE.STATUS_BAR)
ADDON:ImportObject(OBJECT_TYPE.EFFECT_DRAWABLE)

ADDON:ImportAPI(API_TYPE.CHAT.id)
ADDON:ImportAPI(API_TYPE.UNIT.id)

local shared = TargetDebuffTrackerShared
local hudTexture = "ui/common/hud.dds"

local castbarFrame = CreateEmptyWindow("extendedPlatesCastbar", "UIParent")
castbarFrame:SetExtent(120, 18)
castbarFrame:AddAnchor("TOPLEFT", "UIParent", 5000, 5000)
castbarFrame:Show(false)
castbarFrame.unit = "target"
castbarFrame.spellName = nil
castbarFrame.castingUseable = nil
castbarFrame.startAnim_condition = false
castbarFrame.endAnim_condition = false
castbarFrame.prev_curtime = nil
castbarFrame.anim_direction = nil

local bg = castbarFrame:CreateDrawable(hudTexture, "casting_bar_bg", "background")
bg:AddAnchor("TOPLEFT", castbarFrame, 0, 0)
bg:AddAnchor("BOTTOMRIGHT", castbarFrame, 0, 0)
castbarFrame.bg = bg

local statusBar = UIParent:CreateWidget("statusbar", "extendedPlatesCastbarStatusBar", castbarFrame)
statusBar:AddAnchor("TOPLEFT", castbarFrame, 4, 1)
statusBar:AddAnchor("BOTTOMRIGHT", castbarFrame, -5, -2)
statusBar:SetBarTexture(hudTexture, "background")
statusBar:SetBarTextureByKey("casting_status_bar")
statusBar:SetOrientation("HORIZONTAL")
statusBar:Show(true)
castbarFrame.statusBar = statusBar

local lightDeco = statusBar:CreateEffectDrawableByKey(hudTexture, "casting_bar_light_deco", "background")
lightDeco:SetRepeatCount(1)
castbarFrame.lightDeco = lightDeco
statusBar:AddAnchorChildToBar(lightDeco, "TOPLEFT", "TOPRIGHT", -15, -2)

local flashDeco = statusBar:CreateEffectDrawableByKey(hudTexture, "casting_status_bar_fish_deco", "artwork")
flashDeco:SetTextureColor("clear")
flashDeco:AddAnchor("TOPLEFT", statusBar, 0, 0)
flashDeco:AddAnchor("BOTTOMRIGHT", statusBar, 0, 0)
flashDeco:SetRepeatCount(1)
castbarFrame.flashDeco = flashDeco

local function createTextLabel(name, align)
	local label = castbarFrame:CreateChildWidget("label", name, 0, true)
	label:Show(false)
	label:EnablePick(false)
	label.style:SetColor(1, 1, 1, 1)
	label.style:SetOutline(true)
	label.style:SetAlign(align)
	return label
end

castbarFrame.spellLabel = createTextLabel("spellLabel", ALIGN_LEFT)
castbarFrame.spellLabel:AddAnchor("TOPLEFT", castbarFrame, 0, 20)
castbarFrame.spellLabel:SetExtent(160, 18)

castbarFrame.timeLabel = createTextLabel("timeLabel", ALIGN_RIGHT)
castbarFrame.timeLabel:AddAnchor("TOPRIGHT", castbarFrame, -6, 20)
castbarFrame.timeLabel:SetExtent(72, 18)

local function formatTime(milliseconds)
	local value = tonumber(milliseconds)
	if value == nil then
		return "0.0"
	end

	if value < 0 then
		value = 0
	end

	return string.format("%.1f", value / 1000)
end

local function shortenSpellName(name)
	local text = tostring(name or "")
	if string.len(text) > 5 then
		return string.sub(text, 1, 5) .. ".."
	end

	return text
end

local function updateLayout()
	local settings = shared.GetCastbarSettings()
	castbarFrame:SetExtent(settings.width, settings.height)
	castbarFrame.spellLabel:SetExtent(settings.width, 18)
	castbarFrame.timeLabel:SetExtent(72, 18)
end

function castbarFrame:StartAnmation(time)
	self.lightDeco:SetEffectPriority(1, "alpha", time, time)
	self.lightDeco:SetEffectPriority(1, "alpha", 0.7, 0.5)
	self.lightDeco:SetEffectInitialColor(1, 1, 1, 1, 0)
	self.lightDeco:SetEffectFinalColor(1, 1, 1, 1, 1)
	self.lightDeco:SetStartEffect(true)
end

function castbarFrame:EndAnmation(time)
	self.lightDeco:SetEffectPriority(1, "alpha", time, time)
	self.lightDeco:SetEffectInitialColor(1, 1, 1, 1, 1)
	self.lightDeco:SetEffectFinalColor(1, 1, 1, 1, 0)
	self.lightDeco:SetStartEffect(true)
end

function castbarFrame:flashAnmation()
	self.flashDeco:SetEffectPriority(1, "alpha", 0.5, 0.3)
	self.flashDeco:SetEffectInitialColor(1, 1, 1, 1, 0)
	self.flashDeco:SetEffectFinalColor(1, 1, 1, 1, 1)
	self.flashDeco:SetEffectPriority(2, "alpha", 0.5, 0.3)
	self.flashDeco:SetEffectInitialColor(2, 1, 1, 1, 1)
	self.flashDeco:SetEffectFinalColor(2, 1, 1, 1, 0)
	self.flashDeco:SetStartEffect(true)
end

function castbarFrame:ChangeBarTexture(castingUseable)
	if self.castingUseable == castingUseable then
		return
	end

	if castingUseable then
		self.statusBar:AddAnchor("TOPLEFT", self, 6, 2)
		self.statusBar:SetBarTextureByKey("charge_bar")
		self.lightDeco:SetTextureInfo("charge_bar_light")
	else
		self.statusBar:AddAnchor("TOPLEFT", self, 4, 1)
		self.statusBar:SetBarTextureByKey("casting_status_bar")
		self.lightDeco:SetTextureInfo("casting_bar_light_deco")
	end

	self.castingUseable = castingUseable
end

function castbarFrame:ShowAll()
	self.statusBar:Show(true)
	self.spellLabel:Show(true)
	self.timeLabel:Show(true)
	self:Show(true)
end

function castbarFrame:HideAll(force, isSucceed)
	local fadeOutTime = 200
	if force == true then
		fadeOutTime = 0
	end
	if isSucceed then
		fadeOutTime = 600
	end

	self.statusBar:Show(false, fadeOutTime)
	self.spellLabel:Show(false, fadeOutTime)
	self.timeLabel:Show(false, fadeOutTime)
	self:Show(false, fadeOutTime)
	self.startAnim_condition = false
	self.endAnim_condition = false
	self.prev_curtime = nil
end

local function refreshAnchor()
	local settings = shared.GetCastbarSettings()
	local screenX, screenY, screenZ = X2Unit:GetUnitScreenPosition("target")
	if screenX == nil or screenY == nil or screenZ == nil or screenZ <= 0 then
		castbarFrame:AddAnchor("TOPLEFT", "UIParent", 5000, 5000)
		return false
	end

	local x = math.floor(0.5 + screenX)
	local y = math.floor(0.5 + screenY)
	castbarFrame:RemoveAllAnchors()
	castbarFrame:AddAnchor("TOPLEFT", "UIParent", x + settings.x, y + settings.y)
	return true
end

function castbarFrame:OnUpdate()
	updateLayout()

	local uiState = shared.GetUiState()
	if uiState.showCastbar ~= true then
		self:HideAll(true)
		refreshAnchor()
		return
	end

	if not refreshAnchor() then
		self:HideAll(true)
		return
	end

	local info = X2Unit:UnitCastingInfo(self.unit)
	if info == nil or info.showTargetCastingTime ~= true or info.spellName == nil then
		self.spellName = nil
		self:HideAll(true)
		return
	end

	self:ShowAll()
	self.spellName = info.spellName
	self.spellLabel:SetText(shortenSpellName(info.spellName))
	self.timeLabel:SetText(string.format("%s / %s", formatTime(info.currCastingTime), formatTime(info.castingTime)))
	self:ChangeBarTexture(info.castingUseable)
	self.statusBar:SetMinMaxValues(0, info.castingTime)
	self.statusBar:SetValue(info.currCastingTime)

	if self.prev_curtime == nil then
		self.prev_curtime = info.currCastingTime
	end

	if not self.startAnim_condition then
		if self.prev_curtime > info.currCastingTime and info.currCastingTime <= info.castingTime * 0.99 then
			self.startAnim_condition = true
			self.anim_direction = "down"
			self:StartAnmation(info.castingTime * 0.99 / 1000)
		elseif self.prev_curtime < info.currCastingTime and info.currCastingTime >= info.castingTime * 0.01 then
			self.startAnim_condition = true
			self.anim_direction = "up"
			self:StartAnmation((info.currCastingTime - info.castingTime * 0.01) / 1000)
		end
	end

	if self.startAnim_condition and not self.endAnim_condition then
		if self.prev_curtime > info.currCastingTime and info.currCastingTime <= info.castingTime * 0.08 then
			self.endAnim_condition = true
			self:EndAnmation(info.currCastingTime - info.castingTime * 0.08 / 1000)
		elseif self.prev_curtime < info.currCastingTime and info.currCastingTime >= info.castingTime * 0.9 then
			self.endAnim_condition = true
			self:EndAnmation((info.castingTime - info.castingTime * 0.9) / 1000)
		end
	end

	self.prev_curtime = info.currCastingTime
end

castbarFrame:RegisterEvent("SPELLCAST_START")
castbarFrame:RegisterEvent("SPELLCAST_STOP")
castbarFrame:RegisterEvent("SPELLCAST_SUCCEEDED")

castbarFrame:SetHandler("OnEvent", function(_, event, ...)
	local uiState = shared.GetUiState()
	if uiState.showCastbar ~= true then
		castbarFrame:HideAll(true)
		return
	end

	if event == "SPELLCAST_START" then
		local spellName, _, caster, castingUseable = ...
		if caster ~= castbarFrame.unit then
			return
		end
		castbarFrame.spellName = spellName
		castbarFrame.spellLabel:SetText(shortenSpellName(spellName))
		castbarFrame.timeLabel:SetText("")
		castbarFrame:ChangeBarTexture(castingUseable)
		castbarFrame:ShowAll()
	elseif event == "SPELLCAST_STOP" then
		local caster = ...
		if caster ~= castbarFrame.unit then
			return
		end
		castbarFrame:HideAll()
	elseif event == "SPELLCAST_SUCCEEDED" then
		local caster = ...
		if caster ~= castbarFrame.unit then
			return
		end
		castbarFrame.statusBar:SetMinMaxValues(0, 1)
		castbarFrame.statusBar:SetValue(1)
		if castbarFrame.anim_direction ~= "down" then
			castbarFrame:flashAnmation()
			castbarFrame:HideAll(false, true)
		else
			castbarFrame:HideAll()
		end
	end
end)

castbarFrame:SetHandler("OnUpdate", castbarFrame.OnUpdate)
