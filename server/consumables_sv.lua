----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

--<!>-- ADD/REMOVE ITEM EVENTS START --<!>--
-- Remove item event; Added due to recent qb-core update.
RegisterServerEvent('boii-consumables:sv:RemoveItem', function(itemremove, amount)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(itemremove, tonumber(amount)) then
        TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[itemremove], 'remove')
    end
end)
-- Add item event; Added due to recent qb-core update.
RegisterServerEvent('boii-consumables:sv:AddItem', function(itemadd, amount)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    if Player.Functions.AddItem(itemadd, tonumber(amount)) then
        TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[itemadd], 'add')
    end
end)
--<!>-- ADD/REMOVE ITEM EVENTS END --<!>--

--<!>-- EXAMPLE ITEMS START --<!>--
-- Drinks
Core.Functions.CreateUseableItem('water', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Consumables', source, item.name, 'emptybottle', 'thirst', math.random(10,40), math.random(5,10), 'Drinking Water..', math.random(3,5), 'mp_player_intdrink', 'loop_bottle', 49, 'ba_prop_club_water_bottle', 60309, vector3(0.0, 0.0, 0.05), vector3(0.0, 0.0, 0.0))
end)
Core.Functions.CreateUseableItem('cocacola', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Consumables', source, item.name, 'emptycan', 'thirst', math.random(10,40), math.random(5,10), 'Drinking CocaCola..', math.random(3,5), 'mp_player_intdrink', 'loop_bottle', 49, 'prop_ecola_can', 60309, vector3(0.0, 0.0, 0.05), vector3(0.0, 0.0, 0.0))
end)
Core.Functions.CreateUseableItem('pepsi', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Consumables', source, item.name, 'emptycan', 'thirst', math.random(10,40), math.random(5,10), 'Drinking Pepsi..', math.random(3,5), 'mp_player_intdrink', 'loop_bottle', 49, 'prop_ld_can_01', 60309, vector3(0.0, 0.0, 0.05), vector3(0.0, 0.0, 0.0))
end)
Core.Functions.CreateUseableItem('drpepper', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Consumables', source, item.name, 'emptycan', 'thirst', math.random(10,40), math.random(5,10), 'Drinking Dr Pepper..', math.random(3,5), 'mp_player_intdrink', 'loop_bottle', 49, 'prop_ld_can_01b', 60309, vector3(0.0, 0.0, 0.05), vector3(0.0, 0.0, 0.0))
end)
Core.Functions.CreateUseableItem('mountaindew', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Consumables', source, item.name, 'emptycan', 'thirst', math.random(10,40), math.random(5,10), 'Drinking Mtn Dew..', math.random(3,5), 'mp_player_intdrink', 'loop_bottle', 49, 'prop_orang_can_01', 60309, vector3(0.0, 0.0, 0.05), vector3(0.0, 0.0, 0.0))
end)
Core.Functions.CreateUseableItem('lemonade', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Consumables', source, item.name, 'emptycan', 'thirst', math.random(10,40), math.random(5,10), 'Drinking Lemonade..', math.random(3,5), 'mp_player_intdrink', 'loop_bottle', 49, 'v_res_tt_can03', 60309, vector3(0.0, 0.0, 0.05), vector3(0.0, 0.0, 0.0))
end)
Core.Functions.CreateUseableItem('coffee', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Consumables', source, item.name, 'emptypapercup', 'thirst', math.random(10,40), math.random(5,10), 'Drinking Coffee..', math.random(3,5), 'mp_player_intdrink', 'loop_bottle', 49, 'prop_fib_coffee', 60309, vector3(0.0, 0.0, 0.05), vector3(0.0, 0.0, 0.0))
end)
Core.Functions.CreateUseableItem('tea', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Consumables', source, item.name, 'emptypapercup', 'thirst', math.random(10,40), math.random(5,10), 'Drinking Tea..', math.random(3,5), 'mp_player_intdrink', 'loop_bottle', 49, 'p_ing_coffeecup_01', 60309, vector3(0.0, 0.0, 0.05), vector3(0.0, 0.0, 0.0))
end)
Core.Functions.CreateUseableItem('hotchocolate', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Consumables', source, item.name, 'emptypapercup', 'thirst', math.random(10,40), math.random(5,10), 'Drinking Hot Chocolate..', math.random(3,5), 'mp_player_intdrink', 'loop_bottle', 49, 'p_amb_coffeecup_01', 60309, vector3(0.0, 0.0, 0.05), vector3(0.0, 0.0, 0.0))
end)

-- Risky drinks
Core.Functions.CreateUseableItem('dirtywater', function(source, item)
    TriggerClientEvent('boii-consumables:cl:ConsumablesSickness', source, item.name, 'emptybottle', 'thirst', math.random(10,40), math.random(5,10), 50, 'Drinking Dirty Water..', math.random(3,5), 'mp_player_intdrink', 'loop_bottle', 49, 'ba_prop_club_water_bottle', 60309, vector3(0.0, 0.0, 0.05), vector3(0.0, 0.0, 0.0))
end)
Core.Functions.CreateUseableItem('yellowliquid', function(source, item)
    TriggerClientEvent('boii-consumables:cl:ConsumablesSickness', source, item.name, 'emptybottle', 'thirst', math.random(10,40), math.random(5,10), 50, 'Drinking Yellow Liquid..', math.random(3,5), 'mp_player_intdrink', 'loop_bottle', 49, 'ba_prop_club_tonic_bottle', 60309, vector3(0.0, 0.0, 0.05), vector3(0.0, 0.0, 0.0))
end)

-- Food
Core.Functions.CreateUseableItem('hersheysbar', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Consumables', source, item.name, 'usedwrapper', 'hunger', math.random(10,40), math.random(5,10), 'Eating A Hersheys Bar..', math.random(3,5), 'mp_player_inteat@pnq', 'loop', 49, 'prop_choc_ego', 60309, vector3(-0.005, 0.00, -0.01), vector3(175.0, 160.0, 0.0))
end)
Core.Functions.CreateUseableItem('mandms', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Consumables', source, item.name, 'cardboard', 'hunger', math.random(10,40), math.random(5,10), 'Eating M&Ms..', math.random(3,5), 'mp_player_inteat@pnq', 'loop', 49, 'prop_choc_pq', 60309, vector3(-0.005, 0.00, -0.01), vector3(175.0, 160.0, 0.0))
end)
Core.Functions.CreateUseableItem('peanutmandms', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Consumables', source, item.name, 'cardboard', 'hunger', math.random(10,40), math.random(5,10), 'Eating Peanut M&Ms..', math.random(3,5), 'mp_player_inteat@pnq', 'loop', 49, 'prop_candy_pqs', 60309, vector3(-0.005, 0.00, -0.01), vector3(175.0, 160.0, 0.0))
end)

-- Risky food
Core.Functions.CreateUseableItem('eggsandwhich', function(source, item)
    TriggerClientEvent('boii-consumables:cl:ConsumablesSickness', source, item.name, 'cardboard', 'hunger', math.random(10,40), math.random(5,10), 80, 'Eating Egg Sandwhich..', math.random(3,5), 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 49, 'prop_sandwich_01', 60309, vector3(-0.005, 0.00, -0.01), vector3(175.0, 160.0, 0.0))
end)
Core.Functions.CreateUseableItem('tunasandwhich', function(source, item)
    TriggerClientEvent('boii-consumables:cl:ConsumablesSickness', source, item.name, 'cardboard', 'hunger', math.random(10,40), math.random(5,10), 50, 'Eating Egg Sandwhich..', math.random(3,5), 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 49, 'prop_sandwich_01', 60309, vector3(-0.005, 0.00, -0.01), vector3(175.0, 160.0, 0.0))
end)
Core.Functions.CreateUseableItem('hamsandwhich', function(source, item)
    TriggerClientEvent('boii-consumables:cl:ConsumablesSickness', source, item.name, 'cardboard', 'hunger', math.random(10,40), math.random(5,10), 20, 'Eating Egg Sandwhich..', math.random(3,5), 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 49, 'prop_sandwich_01', 60309, vector3(-0.005, 0.00, -0.01), vector3(175.0, 160.0, 0.0))
end)

-- Alcohol
Core.Functions.CreateUseableItem('corona', function(source, item)
    TriggerClientEvent('boii-consumables:cl:ConsumablesAlcohol', source, item.name, 'emptyglassbottle', 'thirst', math.random(10,40), math.random(5,10), 10, 'Drinking Corona..', math.random(3,5), 'mp_player_intdrink', 'loop_bottle', 49, 'prop_beer_amopen', 60309, vector3(-0.005, 0.00, -0.09), vector3(0.0, 0.0, 0.0))
end)
Core.Functions.CreateUseableItem('budweiser', function(source, item)
    TriggerClientEvent('boii-consumables:cl:ConsumablesAlcohol', source, item.name, 'emptyglassbottle', 'thirst', math.random(10,40), math.random(5,10), 10, 'Drinking Budweiser..', math.random(3,5), 'mp_player_intdrink', 'loop_bottle', 49, 'prop_beer_logopen', 60309, vector3(-0.005, 0.00, -0.09), vector3(0.0, 0.0, 0.0))
end)
Core.Functions.CreateUseableItem('vodka', function(source, item)
    TriggerClientEvent('boii-consumables:cl:ConsumablesAlcohol', source, item.name, 'emptyglassbottle', 'thirst', math.random(10,40), math.random(5,10), 10, 'Drinking Vodka..', math.random(3,5), 'mp_player_intdrink', 'loop_bottle', 49, 'prop_vodka_bottle', 60309, vector3(-0.005, 0.00, -0.09), vector3(0.0, 0.0, 0.0))
end)
Core.Functions.CreateUseableItem('whiskey', function(source, item)
    TriggerClientEvent('boii-consumables:cl:ConsumablesAlcohol', source, item.name, 'emptyglassbottle', 'thirst', math.random(10,40), math.random(5,10), 10, 'Drinking Whiskey..', math.random(3,5), 'mp_player_intdrink', 'loop_bottle', 49, 'prop_whiskey_bottle', 60309, vector3(-0.005, 0.00, -0.09), vector3(0.0, 0.0, 0.0))
end)

-- 6 packs
Core.Functions.CreateUseableItem('corona6pack', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Open6Pack', source, item.name, 'corona', 'You opened a 6 pack of Corona!')
end)
Core.Functions.CreateUseableItem('budweiser6pack', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Open6Pack', source, item.name, 'budweiser', 'You opened a 6 pack of Budweiser!')
end)
--<!>-- EXAMPLE ITEMS END --<!>--
