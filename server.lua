RegisterServerEvent('mh-antiafk:kickPlayer')
AddEventHandler('mh-antiafk:kickPlayer', function()
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    
    if not xPlayer then return end
    
    for _, group in ipairs(Config.WhitelistedGroups) do
        if xPlayer.getGroup() == group then
            return 
        end
    end
    
    DropPlayer(source, 'mh-antiafk')
end)
