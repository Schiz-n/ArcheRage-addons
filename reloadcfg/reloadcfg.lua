-------------- Original Author: Strawberry --------------
----------------- Discord: exec_noir --------------------
if API_TYPE == nil then
    ADDON:ImportAPI(8)
    X2Chat:DispatchChatMessage(CMF_SYSTEM, "Globals folder not found. Please install it at https://github.com/Schiz-n/ArcheRage-addons/tree/master/globals")
    return
end
API_TYPE_OPTION = 31
ADDON:ImportAPI(API_TYPE_OPTION)
ADDON:ImportAPI(API_TYPE.CHAT.id)

function applySystemConfig(filePath)
    local file = io.open(filePath, "r")

    for line in file:lines() do
        -- ignore comment
        if not line:match("^%s*%-%-") then
            local variable, value = line:match("([%w_]+)%s*=%s*(.+)")
            if variable and value then
            	--X2Chat:DispatchChatMessage(CMF_SYSTEM, "Setting " .. tostring(variable) .. " to " .. tostring(value))
                if variable ~= "r_driver" and variable ~= "next_r_Driver" then
                    X2Option:SetConsoleVariable(variable, value)
                end
            end
        end
    end
    file:close()
    X2Chat:DispatchChatMessage(CMF_SYSTEM, "Succesfully re-applied system.cfg")
end

local function EnteredWorld()
	applySystemConfig("../Documents/system.cfg")
end
UIParent:SetEventHandler("ENTERED_WORLD", EnteredWorld)
