ADDON:ImportAPI(API_TYPE.CHAT.id)
ADDON:ImportAPI(API_TYPE.HOTKEY.id)
--this causes frame drops due to how keybinds are saved
--hence it cannot be used
--⠀⠀⠀⠀⢠⣤⣤⣤⢠⣤⣤⣤⣤⣄⢀⣠⣤⣤⣄⠀⠀⠀⢀⣠⣤⣤⣄⠀⣤⣤⠀⠀⣠⣤⣤⣤⣤⣤⡄⢠⣤⣤⣤⣄⠀⠀
--⠀⠀⠀⠀⠈⢹⣿⠉⠈⠉⣿⣿⠉⠉⢾⣿⣉⣉⠙⠀⠀⢀⣾⡟⠉⠉⣿⣧⢸⣿⡄⢠⣿⠏⣿⣿⣉⣉⡁⢸⣿⡏⢉⣿⡷⠀
--⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⣿⣿⠀⠀⠈⠿⠿⣿⣿⡀⠀⠸⣿⡇⠀⠀⣾⣿⠀⢿⣿⣸⡿⠀⣿⣿⠿⠿⠇⢸⣿⣿⣿⣿⠀⠀
--⠀⠀⠀⠀⢠⣼⣿⣤⠀⠀⣿⣿⠀⠀⢷⣦⣤⣼⡿⠁⠀⠀⠹⣿⣤⣴⡿⠋⠀⠘⣿⣿⠃⠀⣿⣿⣤⣤⡄⢸⣿⡇⠙⢿⣦⡀
--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⠀⠀⠀⠀⢀⣰⣶⣶⣶⣿⣿⣿⣿⣷⣶⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⠿⠛⠛⠻⢿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⠀⢀⢾⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠈⠉⠉⠉⠻⢿⢿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⢠⠏⢸⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠿⢻⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⢀⠇⠀⠈⠿⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⢀⡞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⡸⠀⠀⠀⠀⠀⠀⠀⠀⡼⠛⠳⣄⡀⠀⠐⢿⣦⡀⠀⠀⠀⢠⠃⠀⣸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⢠⠇⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠉⣳⠟⠒⠻⣿⣦⡀⠀⡘⠀⢰⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⢀⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠃⢠⣄⡀⠈⠙⢿⡌⠁⠀⡞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠳⣄⣈⢻⡿⠃⢰⠟⠲⣼⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⡰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⡶⢴⠋⠀⠀⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⡴⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠞⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡴⢟⠒⠀⠀⠀⠀⢰⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠏⠀⠀⠈⠉⣿⠇⠀⢀⡎⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠠⣤⣤⣀⢰⠏⠉⠙⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣠⠴⠢⠦⠽⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⣿⣿⣿⣷⡄⣀⡀⠈⠉⠋⢹⠋⠁⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠿⠿⠿⠿⠿⠦⠈⠀⠀⠀⠸⠀⠀⠀⠀
--what a shame⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

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
