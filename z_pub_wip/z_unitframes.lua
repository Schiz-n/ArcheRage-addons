---- this does NOT work thanks archerage  -------------------
--function readFrame(UICNumber)
--    local newFrame = ADDON:GetContent(UICNumber)
--    if newFrame == nil then
--        X2Chat:DispatchChatMessage(CMF_SYSTEM, "frame pullup failed" .. tostring(UICNumber))
--    end
--end
--readFrame(UIC_PLAYER_UNITFRAME)
--readFrame(UIC_TARGET_UNITFRAME)
--local playerframe = FrameLabels["player"]
--playerframe.hpBar:SetHeight(25)
for UICNumber = 1, 100000 do
	local newFrame = ADDON:GetContent(UICNumber)
	if newFrame == nil then
		--X2Chat:DispatchChatMessage(CMF_SYSTEM, "frame pullup failed: " .. tostring(UICNumber))
	else
		X2Chat:DispatchChatMessage(CMF_SYSTEM, "frame found: " .. tostring(UICNumber))
	end
end

-----------------------------------
