local lastPosition = nil
local afkTimer = 0
local afkThreshold = 1 * 60 

CreateThread(function()
    while true do
        Wait(1000) 
        
        local playerPed = PlayerPedId()
        local currentPos = GetEntityCoords(playerPed)
        
        if not lastPosition then
            lastPosition = currentPos
            goto continue
        end
        
        if #(lastPosition - currentPos) < 0.1 then
            afkTimer = afkTimer + 1
            
            if afkTimer >= afkThreshold then
                TriggerServerEvent('mh-antiafk:kickPlayer')
            end
        else
            afkTimer = 0
        end
        
        lastPosition = currentPos
        
        ::continue::
    end
end)
