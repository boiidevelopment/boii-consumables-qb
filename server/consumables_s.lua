----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

-- TriggerClientEvent('boii-consumables:client:EatRiskyFood', source, 1, item.name)
-- TriggerClientEvent('event', source, args, item.name)
-- Remember to match the args to client side :) 
-- None of the items listed below are qb-core standard you will have to edit the names/replace with your own items just copy what is done below and follow the notes!

--<!>-- ADD/REMOVE ITEM EVENTS START --<!>--
-- Remove item event; Added due to recent qb-core update.
RegisterServerEvent('boii-consumables:server:RemoveItem', function(itemremove, amount)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(itemremove, tonumber(amount)) then
        TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[itemremove], 'remove')
    end
end)
-- Add item event; Added due to recent qb-core update.
RegisterServerEvent('boii-consumables:server:AddItem', function(itemadd, amount)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    if Player.Functions.AddItem(itemadd, tonumber(amount)) then
        TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[itemadd], 'add')
    end
end)
--<!>-- ADD/REMOVE ITEM EVENTS END --<!>--

--<!>-- RISKY FOOD ITEMS  START--<!>--
-- Store items
Core.Functions.CreateUseableItem('eggsandwich', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:EatRiskyFood', source, 1, item.name)
end)
Core.Functions.CreateUseableItem('tunasandwich', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:EatRiskyFood', source, 2, item.name)
end)
Core.Functions.CreateUseableItem('hamsandwich', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:EatRiskyFood', source, 3, item.name)
end)
--<!>-- RISKY FOOD ITEMS END --<!>--

--<!>-- FOOD ITEMS START --<!>-- 
Core.Functions.CreateUseableItem('hersheysbar', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:EatFood', source, 1, item.name)
end)
Core.Functions.CreateUseableItem('mandms', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:EatFood', source, 2, item.name)
end)
Core.Functions.CreateUseableItem('peanutmandms', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:EatFood', source, 3, item.name)
end)
--<!>-- RISKY FOOD ITEMS END --<!>--

--<!>-- DRINKS START --<!>--
Core.Functions.CreateUseableItem('cocacola', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:Drink', source, 1, item.name)
end)
Core.Functions.CreateUseableItem('pepsi', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:Drink', source, 2, item.name)
end)
Core.Functions.CreateUseableItem('drpepper', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:Drink', source, 3, item.name)
end)
Core.Functions.CreateUseableItem('mountaindew', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:Drink', source, 4, item.name)
end)
Core.Functions.CreateUseableItem('water', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:Drink', source, 5, item.name)
end)
Core.Functions.CreateUseableItem('coffee', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:Drink', source, 6, item.name)
end)
Core.Functions.CreateUseableItem('tea', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:Drink', source, 7, item.name)
end)
Core.Functions.CreateUseableItem('hotchocolate', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:Drink', source, 8, item.name)
end)
--<!>-- DRINKS END --<!>--

--<!>-- RISKY DRINKS START --<!>--
Core.Functions.CreateUseableItem('yellowliquid', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:RiskyDrink', source, 1, item.name)
end)
Core.Functions.CreateUseableItem('dirtywater', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:RiskyDrink', source, 2, item.name)
end)
--<!>-- RISKY DRINKS END --<!>--

--<!>-- ALCOHOL START --<!>--
Core.Functions.CreateUseableItem('corona', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:Alcohol', source, 1, item.name)
end)
Core.Functions.CreateUseableItem('corona6pack', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:Open6Pack', source, 1)
end)
Core.Functions.CreateUseableItem('budweiser', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:Alcohol', source, 2, item.name)
end)
Core.Functions.CreateUseableItem('budweiser6pack', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:Open6Pack', source, 2)
end)
Core.Functions.CreateUseableItem('vodka', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:Alcohol', source, 3, item.name)
end)
Core.Functions.CreateUseableItem('whiskey', function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent('boii-consumables:client:Alcohol', source, 4, item.name)
end)
--<!>-- ALCOHOL END --<!>--
