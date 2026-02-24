local hudTexture = "ui/common/hud.dds"

local SetViewOfCastingBar = function(id, parent, name)
	local frame = CreateEmptyWindow("frame", "UIParent")
	frame:SetExtent(500, 30)
	frame:AddAnchor("CENTER", "UIParent", 0, 5000)
	local bg = frame:CreateDrawable(hudTexture, "casting_bar_bg", "background")
	bg:AddAnchor("TOPLEFT", frame, 0, 0)
	bg:AddAnchor("BOTTOMRIGHT", frame, 0, 0)
	--frame.bg = bg
	local statusBar = UIParent:CreateWidget("statusbar", name, frame)
	statusBar:AddAnchor("TOPLEFT", frame, 4, 1)
	statusBar:AddAnchor("BOTTOMRIGHT", frame, -5, -2)

	statusBar:SetBarTexture("ui/hud/siege_gauge.dds", "artwork")
	statusBar:SetBarTextureByKey("siege_gauge")

	statusBar:SetBarColor(1, 1, 0, 1)
	statusBar:SetOrientation("HORIZONTAL")
	statusBar:Show(true)
	frame.statusBar = statusBar

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

function CreateCastingBar(id, parent, unit, xCoord, yCoord, sizeX, sizeY)
	local frame = SetViewOfCastingBar(id, parent, unit)
	frame.unit = unit
	frame.spellName = nil
	frame.eventProc = nil
	frame.castingUseable = nil
	--X2Chat:DispatchChatMessage(CMF_SYSTEM, xCoord)
	frame:AddAnchor("TOPLEFT", "UIParent", xCoord, yCoord)
	frame:SetExtent(sizeX, sizeY)
	function frame:SetColor(r, g, b, o)
		frame.statusBar:SetBarColor(r, g, b, o)
	end
	function frame:ShowAll()
		frame.statusBar:Show(true)
		frame.text:Show(true)
		frame:Show(true)
	end
	function frame:HideAll(force, isSucceed)
		frame.statusBar:Show(false, 0)
		frame.text:Show(false, 0)
		frame:Show(false, 0)
	end
	return frame
end
