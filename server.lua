local data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

RegisterServerEvent("RegisterUsableItem:bandage")
AddEventHandler("RegisterUsableItem:bandage", function(source)
    data.delItem(source,"bandage",1)
    TriggerClientEvent('mhusableitems:bandage', source)
end)

RegisterServerEvent("RegisterUsableItem:medKit")
AddEventHandler("RegisterUsableItem:medKit", function(source)
    data.delItem(source,"medKit",1)
    TriggerClientEvent('mhusableitems:medKit', source)
end)