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
ADDON:ImportObject(OBJECT_TYPE.ICON_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.IMAGE_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.STATUS_BAR)
ADDON:ImportObject(OBJECT_TYPE.EFFECT_DRAWABLE)
ADDON:ImportObject(OBJECT_TYPE.TEXTBOX)

ADDON:ImportAPI(API_TYPE.CHAT.id)
ADDON:ImportAPI(API_TYPE.UNIT.id)
--ADDON:ImportAPI(API_TYPE.UI.id)

local castDuration = 0
local newCast = false
local startTime = 0
local iStoppedCasting = true
local currentSpellName = ""
local endingcast = false

local statueBuffIds = {
	["30768"] = true,
	["30766"] = true,
	["30767"] = true,
	["30771"] = true,
	["30773"] = true,
	["30760"] = true,
	["30764"] = true,
	["30765"] = true,
	["30770"] = true,
	["30772"] = true,
}
local statueBuffPos = 1
local hudTexture = "ui/common/hud.dds"
local waitingForStatueBuff = false

W_BAR = {}
local SetViewOfCastingBar = function(id, parent)
	local frame = CreateEmptyWindow("frame", "UIParent")
	frame:SetExtent(500, 30)
	frame:AddAnchor("CENTER", "UIParent", 0, 5000)
	local bg = frame:CreateDrawable(hudTexture, "casting_bar_bg", "background")
	bg:AddAnchor("TOPLEFT", frame, 0, 0)
	bg:AddAnchor("BOTTOMRIGHT", frame, 0, 0)
	frame.bg = bg
	local statusBar = UIParent:CreateWidget("statusbar", "statusBar", frame)
	statusBar:AddAnchor("TOPLEFT", frame, 4, 1)
	statusBar:AddAnchor("BOTTOMRIGHT", frame, -5, -2)
	statusBar:SetBarTexture(hudTexture, "background")
	statusBar:SetBarTextureByKey("casting_status_bar")
	statusBar:SetOrientation("HORIZONTAL")
	statusBar:Show(true)
	frame.statusBar = statusBar
	local lightDeco = statusBar:CreateEffectDrawableByKey(hudTexture, "casting_bar_light_deco", "background")
	lightDeco:SetRepeatCount(1)
	frame.lightDeco = lightDeco
	statusBar:AddAnchorChildToBar(lightDeco, "TOPLEFT", "TOPRIGHT", -15, -2)
	frame.startAnim_condition = false
	frame.endAnim_condition = false
	function frame:StartAnmation(time)
		self.lightDeco:SetEffectPriority(1, "alpha", time, time)
		self.lightDeco:SetEffectPriority(1, "alpha", 0.7, 0.5)
		self.lightDeco:SetEffectInitialColor(1, 1, 1, 1, 0)
		self.lightDeco:SetEffectFinalColor(1, 1, 1, 1, 1)
		self.lightDeco:SetStartEffect(true)
		self.progress_startAnim = true
	end
	function frame:EndAnmation(time)
		self.lightDeco:SetEffectPriority(1, "alpha", time, time)
		self.lightDeco:SetEffectInitialColor(1, 1, 1, 1, 1)
		self.lightDeco:SetEffectFinalColor(1, 1, 1, 1, 0)
		self.lightDeco:SetStartEffect(true)
		self.progress_endAnim = true
	end
	frame.prev_curtime = nil
	local flashDeco = statusBar:CreateEffectDrawableByKey(hudTexture, "casting_status_bar_fish_deco", "artwork")
	flashDeco:SetTextureColor("clear")
	flashDeco:AddAnchor("TOPLEFT", statusBar, 0, 0)
	flashDeco:AddAnchor("BOTTOMRIGHT", statusBar, 0, 0)
	flashDeco:SetRepeatCount(1)
	frame.flashDeco = flashDeco
	frame.flash_startAnim = false
	frame.anim_direction = nil
	function frame:flashAnmation()
		self.flashDeco:SetEffectPriority(1, "alpha", 0.5, 0.3)
		self.flashDeco:SetEffectInitialColor(1, 1, 1, 1, 0)
		self.flashDeco:SetEffectFinalColor(1, 1, 1, 1, 1)
		self.flashDeco:SetEffectPriority(2, "alpha", 0.5, 0.3)
		self.flashDeco:SetEffectInitialColor(2, 1, 1, 1, 1)
		self.flashDeco:SetEffectFinalColor(2, 1, 1, 1, 0)
		self.flashDeco:SetStartEffect(true)
		self.flash_startAnim = true
	end
	local text = frame:CreateChildWidget("textbox", "text", 0, true)
	text:Raise()
	text.style:SetShadow(true)
	text.style:SetFontSize(15)
	text:AddAnchor("TOPLEFT", statusBar, "BOTTOMLEFT", 0, 5)
	text:AddAnchor("TOPRIGHT", statusBar, "BOTTOMRIGHT", 0, 5)
	function text:SetCastingText(str)
		text:SetText(str)
		text:SetHeight(text:GetTextHeight())
	end
	return frame
end
function W_BAR.CreateCastingBar(id, parent, unit)
	local frame = SetViewOfCastingBar(id, parent, unit)
	frame.unit = unit
	frame.spellName = nil
	frame.eventProc = nil
	frame.castingUseable = nil
	function frame:ShowAll()
		frame.statusBar:Show(true)
		frame.text:Show(true)
		frame:Show(true)
	end
	function frame:HideAll(force, isSucceed)
		local fadeOutTime = 200
		if force == true then
			fadeOutTime = 0
		end
		if isSucceed then
			fadeOutTime = 2000
		end
		frame.statusBar:Show(false, fadeOutTime)
		frame.text:Show(false, fadeOutTime)
		frame:Show(false, fadeOutTime)
		frame.startAnim_condition = false
		frame.endAnim_condition = false
		frame.prev_curtime = nil
	end
	function frame:OnUpdate()
		if iStoppedCasting then
			frame.text:SetCastingText("")
			frame.statusBar:Show(false)
			frame:AddAnchor("CENTER", "UIParent", 0, 5000)
			return
		else
			frame.statusBar:Show(true)
			frame:AddAnchor("CENTER", "UIParent", 0, 300)
		end
		local UBuffCounter = X2Unit:UnitBuffCount("player")
		if UBuffCounter < statueBuffPos then
			statueBuffPos = 1
			return
		end
		local buffCurrent = X2Unit:UnitBuffTooltip("player", statueBuffPos)
		if buffCurrent["timeLeft"] == nil then
			local UBuffCount = X2Unit:UnitBuffCount("player")
			for i = 1, UBuffCount do
				local buffExtra = X2Unit:UnitBuff("player", i)
				strBuffId = tostring(buffExtra["buff_id"])
				if statueBuffIds[strBuffId] then
					statueBuffPos = i
					waitingForStatueBuff = false
				end
				if statueBuffPos ~= i and i == UBuffCount then
					if waitingForStatueBuff == false then
						X2Chat:DispatchChatMessage(CMF_SYSTEM, "Statue buff not found, big cast bars won't work.")
						waitingForStatueBuff = true
					end
				end
			end
			return
		end
		if newCast == true then
			frame.statusBar:SetMinMaxValues(0, castDuration)
			local buff = X2Unit:UnitBuffTooltip("player", statueBuffPos)
			startTime = buff["timeLeft"]
			newCast = false
			endingcast = false
		end

		------------------------------------------------------------
		frame.statusBar:SetValue(startTime - buffCurrent["timeLeft"])
		frame:StartAnmation(1)
		roundedCastingTime = string.format("%.1f", ((startTime - buffCurrent["timeLeft"]) / 1000))
		roundedTotalCastingTime = string.format("%.1f", (castDuration / 1000))
		frame.text:SetCastingText(
			string.format("%s %s / %s", currentSpellName, roundedCastingTime, roundedTotalCastingTime)
		)
		if (castDuration * 0.9) < (startTime - buffCurrent["timeLeft"]) and endingcast ~= true then
			frame:EndAnmation(1)
			endingcast = true
		end
	end
	function frame:Refresh()
		if frame.unit == "none" then
			return
		end
		frame.text:SetCastingText("test cast")
		frame:ShowAll()
	end
	function frame:ChangeBarTexture(castingUseable)
		if self.castingUseable == castingUseable then
			return
		end
		if castingUseable then
			frame.statusBar:AddAnchor("TOPLEFT", frame, 6, 2)
			frame.statusBar:SetBarTextureByKey("charge_bar")
			frame.lightDeco:SetTextureInfo("charge_bar_light")
		else
			frame.statusBar:AddAnchor("TOPLEFT", frame, 4, 1)
			frame.statusBar:SetBarTextureByKey("casting_status_bar")
			frame.lightDeco:SetTextureInfo("casting_bar_light_deco")
		end
		self.castingUseable = castingUseable
	end
	local castingBarEvents = {
		SPELLCAST_START = function(spellName, castTime, caster, castingUseable)
			-- X2Chat:DispatchChatMessage(CMF_SYSTEM, "SPELLCAST_START: " ..
			--         tostring(spellName) .. ", " ..
			--         tostring(castingTime) .. ", " ..
			--         tostring(caster) .. ", " ..
			--         tostring(castingUseable)
			--     )
			if caster == "player" then
				currentSpellName = spellName
				newCast = true
				castDuration = castTime
				iStoppedCasting = false
			end
			if caster ~= frame.unit then
				return
			end
			if frame.spellName ~= nil then
				frame.spellName = ""
			end
			--frame:ChangeBarTexture(castingUseable)
			frame.spellName = spellName
			frame.text:SetCastingText(string.format("%s %s", spellName, castTime))
			frame.ShowAll()
		end,
		SPELLCAST_STOP = function(caster)
			if caster == "player" then
				iStoppedCasting = true
			end
			if caster ~= frame.unit then
				return
			end
			if frame.spellName == nil then
				frame.spellName = ""
			end
			frame.text:SetCastingText(string.format("%s %s", frame.spellName, locale.castingBar.stop))
			frame.HideAll()
		end,
		SPELLCAST_SUCCEEDED = function(caster)
			if caster == "player" then
				iStoppedCasting = true
			end
			if caster ~= frame.unit then
				return
			end
			frame.statusBar:SetMinMaxValues(0, 1)
			frame.statusBar:SetValue(1)
			frame.spellName = nil
			if frame.anim_direction ~= "down" then
				frame:flashAnmation()
				frame:HideAll(false, true)
			else
				frame.HideAll()
			end
		end,
	}
	frame:RegisterEvent("SPELLCAST_START")
	frame:RegisterEvent("SPELLCAST_STOP")
	frame:RegisterEvent("SPELLCAST_SUCCEEDED")

	function frame:SetEventProc(handler)
		frame.eventProc = handler
	end
	function frame:SetVisibleCastingBar(visible)
		if frame == nil then
			return
		end
		if visible then
			frame:SetHandler("OnEvent", function(this, event, ...)
				if castingBarEvents[event] ~= nil then
					castingBarEvents[event](...)
				end
				if self.eventProc ~= nil and self.eventProc[event] ~= nil then
					self.eventProc[event](...)
				end
			end)
			frame:SetHandler("OnUpdate", frame.OnUpdate)
		else
			frame:ReleaseHandler("OnEvent")
			frame:ReleaseHandler("OnUpdate")
			frame.HideAll()
		end
	end
	--X2Chat:DispatchChatMessage(CMF_SYSTEM, "Showing cast bar.")
	frame:SetVisibleCastingBar(true)
	return frame
end
function W_BAR.CreateDoubleGauge(id, parent)
	local widget = UIParent:CreateWidget("emptywidget", id, parent)
	local bg = widget:CreateDrawable("ui/common/default.dds", "type_05", "background")
	widget.bg = bg
	local defaultGage = widget:CreateDrawable(hudTexture, "default_guage", "background")
	defaultGage:SetTextureColor("default")
	defaultGage:AddAnchor("TOPLEFT", widget, 0, 0)
	defaultGage:AddAnchor("BOTTOMRIGHT", widget, 0, 0)
	widget.defaultGage = defaultGage
	local gauge = widget:CreateChildWidget("statusBar", "gauge", 0, true)
	gauge:AddAnchor("TOPLEFT", widget, 0, 0)
	gauge:AddAnchor("BOTTOMRIGHT", widget, 0, 0)
	gauge:SetBarTexture(hudTexture, "artwork")
	gauge:SetBarTextureByKey("default_guage")
	gauge:SetBarColorByKey("double")
	gauge:SetOrientation("HORIZONTAL")
	gauge:SetMinMaxValues(0, 1000)
	gauge:SetValue(500)
	local marking = gauge:CreateDrawable("ui/battlefield/scoreboard.dds", "mark", "overlay")
	marking:AddAnchor("BOTTOM", widget, 0, 0)
	function widget:SetLayout(style)
		if style == "big" then
			self.bg:SetTexture("ui/common/default.dds")
			self.bg:SetTextureInfo("double_guage_bg_big", "black")
			self.bg:SetHeight(15)
			self.bg:AddAnchor("LEFT", self, -20, 1)
			self.bg:AddAnchor("RIGHT", self, 20, 1)
		elseif style == "small" then
			self.bg:SetTexture(hudTexture)
			self.bg:SetTextureInfo("double_guage_bg_small", "black")
			self.bg:AddAnchor("TOPLEFT", self, -1, -1)
			self.bg:AddAnchor("BOTTOMRIGHT", self, 1, 1)
			self.gauge:SetBarTextureByKey("default_guage_small")
			self.defaultGage:SetTextureInfo("default_guage_small")
		end
	end
	function widget:UpdateScore(scoreTeam1, scoreTeam2)
		if scoreTeam1 == 0 and scoreTeam2 == 0 or scoreTeam1 == scoreTeam2 then
			self.gauge:SetMinMaxValues(0, 2)
			self.gauge:SetValue(1)
			return
		end
		self.gauge:SetMinMaxValues(0, scoreTeam1 + scoreTeam2)
		self.gauge:SetValue(scoreTeam2)
	end
	return widget
end

local castBar = W_BAR:CreateCastingBar("frame", "UIParent", "")
castBar:ShowAll()
