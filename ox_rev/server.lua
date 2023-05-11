RegisterCommand('rev', function(source, args, rawCommand)
    local playerId = tonumber(args[1])

    if not playerId then
        TriggerClientEvent('ox_rev:notify', source, 'Hatalı komut kullanımı. Örnek: /rev [id]')
        return
    end

    local player = GetPlayerIdentifier(playerId)

    if not player then
        TriggerClientEvent('ox_rev:notify', source, 'Hatalı oyuncu IDsi')
        return
    end

    TriggerClientEvent('ox_rev:revivePlayer', playerId)
    TriggerClientEvent('ox_rev:notify', source, 'Oyuncu başarıyla canlandırıldı')
end, false)

RegisterCommand('reviveall', function(source, args, rawCommand)
    TriggerClientEvent('ox_rev:reviveAllPlayers', -1)
    TriggerClientEvent('ox_rev:notify', source, 'Tüm oyuncular başarıyla canlandırıldı')
end, false)
