----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

--<!>-- FOOD --<!>--
Core.Functions.CreateUseableItem('eggsandwich', function(source, item)
    TriggerClientEvent('boii-consumables:cl:EatFood', source, item.name)
end)

Core.Functions.CreateUseableItem('tunasandwich', function(source, item)
    TriggerClientEvent('boii-consumables:cl:EatFood', source, item.name)
end)

Core.Functions.CreateUseableItem('hamsandwich', function(source, item)
    TriggerClientEvent('boii-consumables:cl:EatFood', source, item.name)
end)

Core.Functions.CreateUseableItem('meteorite', function(source, item)
    TriggerClientEvent('boii-consumables:cl:EatFood', source, item.name)
end)

Core.Functions.CreateUseableItem('egochaser', function(source, item)
    TriggerClientEvent('boii-consumables:cl:EatFood', source, item.name)
end)

Core.Functions.CreateUseableItem('psnqs', function(source, item)
    TriggerClientEvent('boii-consumables:cl:EatFood', source, item.name)
end)
--<!>-- FOOD --<!>--

--<!>-- DRINKS --<!>--
Core.Functions.CreateUseableItem('water', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Drink', source, item.name)
end)

Core.Functions.CreateUseableItem('ecola', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Drink', source, item.name)
end)

Core.Functions.CreateUseableItem('sprunk', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Drink', source, item.name)
end)

Core.Functions.CreateUseableItem('orangotang', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Drink', source, item.name)
end)

Core.Functions.CreateUseableItem('dirtywater', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Drink', source, item.name)
end)
--<!>-- DRINKS --<!>--

--<!>-- ALCOHOL --<!>--
Core.Functions.CreateUseableItem('beer_am', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('beer_logger', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('beer_piss', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('beer_dusche', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('beer_patriot', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('beer_stz', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('beer_pride', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('beer_jakey', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('beer_bar', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('beer_blr', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('vodka', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('whiskey_mount', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('whiskey_macbeth', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('whiskey_richards', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('brandy_cardi', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('brandy_cognac', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('rum', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('tequila', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('wine_red', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('wine_rose', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)

Core.Functions.CreateUseableItem('wine_white', function(source, item)
    TriggerClientEvent('boii-consumables:cl:Alcohol', source, item.name)
end)
--<!>-- ALCOHOL --<!>--