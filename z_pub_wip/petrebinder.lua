ADDON:ImportAPI(API_TYPE.CHAT.id)
ADDON:ImportAPI(API_TYPE.HOTKEY.id)

--note: causes slight frame drops on mount summon
--also will keep buttons pressed down
--for example if you spawn a mount while walking forward
--you will keep walking forward on key release, you have to keydown and up again to return to normal

X2Hotkey:BindingToOption()
function SpawnPet(info1, info2, info3, info4, info5, info6)
    if (info1 == 1) then
        aaprint(X2Unit:UnitName("playerpet1"))
        if X2Unit:UnitName("playerpet1") == "Strawberrykirin" then
            X2Hotkey:SetOptionBindingWithIndex("ride_pet_action_bar_button","CTRL-b", 1, 1)
        elseif X2Unit:UnitName("playerpet1") == "Strawberrydeer" then
            X2Hotkey:SetOptionBindingWithIndex("ride_pet_action_bar_button","CTRL-b", 1, 2)
        elseif X2Unit:UnitName("playerpet1") == "Strawberryleo" then
            X2Hotkey:SetOptionBindingWithIndex("ride_pet_action_bar_button","CTRL-b", 1, 2)
        elseif X2Unit:UnitName("playerpet1") == "Strawberrysteel" then
            X2Hotkey:SetOptionBindingWithIndex("ride_pet_action_bar_button","CTRL-b", 1, 1)
        elseif X2Unit:UnitName("playerpet1") == "Strawberrytaurus" then
            X2Hotkey:SetOptionBindingWithIndex("ride_pet_action_bar_button","CTRL-b", 1, 1)
        else
            X2Hotkey:SetOptionBindingWithIndex("ride_pet_action_bar_button","CTRL-b", 1, 1)
        end
        X2Hotkey:SaveHotKey()
    end
    
end

UIParent:SetEventHandler(UIEVENT_TYPE.SPAWN_PET, SpawnPet)
