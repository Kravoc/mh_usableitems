RegisterNetEvent('mhusableitems:bandage')
AddEventHandler('mhusableitems:bandage', function(source)
    PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
    local Health = GetAttributeCoreValue(PlayerPedId(), 0)
    print("health: " .. Health)
    if Health <= 100 then
        local newHealth = Health + 20
        if newHealth > 100 then newHealth = 100 end
        Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(), 0, newHealth) 
        print ("new health " .. newHealth)
    end
end)

RegisterNetEvent('mhusableitems:medKit')
AddEventHandler('mhusableitems:medKit', function(source)
    PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
    print("Med kit used")
    Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(), 0, 100) 
    end
end)