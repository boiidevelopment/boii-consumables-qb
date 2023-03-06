----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
local HudEvent = Config.CoreSettings.HudEvent
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

--<!>-- SERVER PRINT --<!>--
AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    print('^5--<^3!^5>-- ^7BOII ^5| ^7DEVELOPMENT ^5--<^3!^5>-- ^7UTLITY: CONSUMABLES V3.0.0 ^5--<^3!^5>--^7')
end)
--<!>-- SERVER PRINT --<!>--

--<!>-- ADD/REMOVE ITEM EVENTS START --<!>--
-- Remove item event; Added due to recent qb-core update.
RegisterServerEvent('boii-consumables:sv:RemoveItem', function(itemremove, amount)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(itemremove, tonumber(amount)) then
        TriggerClientEvent('inventory:client:ItemBox', src, Core.Shared.Items[itemremove], 'remove', tonumber(amount))
    end
end)
-- Add item event; Added due to recent qb-core update.
RegisterServerEvent('boii-consumables:sv:AddItem', function(itemadd, amount)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    if Player.Functions.AddItem(itemadd, tonumber(amount)) then
        TriggerClientEvent('inventory:client:ItemBox', src, Core.Shared.Items[itemadd], 'add', tonumber(amount))
    end
end)
--<!>-- ADD/REMOVE ITEM EVENTS END --<!>--

--<!>-- SET META DATA --<!>--
-- Add meta
RegisterServerEvent('boii-consumables:sv:AddMeta', function(amount, amount2)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    local hunger = Player.PlayerData.metadata['hunger']
    local thirst = Player.PlayerData.metadata['thirst']
    newhunger = hunger + amount
    newthirst = thirst + amount2
    Player.Functions.SetMetaData('hunger', newhunger)
    Player.Functions.SetMetaData('thirst', newthirst)
    TriggerClientEvent(HudEvent, src, newhunger, newthirst)
end)
-- Remove meta
RegisterServerEvent('boii-consumables:sv:RemoveMeta', function(amount, amount2)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    local hunger = Player.PlayerData.metadata['hunger']
    local thirst = Player.PlayerData.metadata['thirst']
    newhunger = hunger - amount
    newthirst = thirst - amount2
    Player.Functions.SetMetaData('hunger', newhunger)
    Player.Functions.SetMetaData('thirst', newthirst)
    TriggerClientEvent(HudEvent, src, newhunger, newthirst)
end)
--<!>-- SET META DATA --<!>--