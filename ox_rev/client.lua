RegisterNetEvent('ox_rev:revivePlayer')
AddEventHandler('ox_rev:revivePlayer', function()
    local playerPed = PlayerPedId()

    SetEntityHealth(playerPed, GetEntityMaxHealth(playerPed))
    ClearPedBloodDamage(playerPed)
    ResetPedVisibleDamage(playerPed)
    ClearPedLastWeaponDamage(playerPed)
    SetPedCanPlayGestureAnims(playerPed, true)
    SetPedCanRagdoll(playerPed, true)
    TriggerEvent('playerSpawned', true)
end)

RegisterNetEvent('ox_rev:reviveAllPlayers')
AddEventHandler('ox_rev:reviveAllPlayers', function()
    for _, player in ipairs(GetActivePlayers()) do
        TriggerEvent('ox_rev:revivePlayer', player)
    end
end)

RegisterNetEvent('ox_rev:notify')
AddEventHandler('ox_rev:notify', function(message)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(message)
    DrawNotification(true, false)
end)
