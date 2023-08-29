----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

local foodItems = {
    'eggsandwich',
    'tunasandwich',
    'hamsandwich',
    'meteorite',
    'egochaser',
    'psnqs'
}

local drinkItems = {
    'water',
    'ecola',
    'sprunk',
    'orangotang',
    'dirtywater'
}

local alcoholItems = {
    'beer_am',
    'beer_logger',
    'beer_piss',
    'beer_dusche',
    'beer_patriot',
    'beer_stz',
    'beer_pride',
    'beer_jakey',
    'beer_bar',
    'beer_blr',
    'vodka',
    'whiskey_mount',
    'whiskey_macbeth',
    'whiskey_richards',
    'brandy_cardi',
    'brandy_cognac',
    'rum',
    'tequila',
    'wine_red',
    'wine_rose',
    'wine_white'
}

for index, item in ipairs(foodItems) do
    Core.Functions.CreateUseableItem(item, function(source, itemdata)
        TriggerClientEvent('boii-consumables:cl:EatFood', source, itemdata.name)
    end)
end

for index, item in ipairs(drinkItems) do
    Core.Functions.CreateUseableItem(item, function(source, itemdata)
        TriggerClientEvent('boii-consumables:cl:Drink', source, itemdata.name)
    end)
end

for index, item in ipairs(alcoholItems) do
    Core.Functions.CreateUseableItem(item, function(source, itemdata)
        TriggerClientEvent('boii-consumables:cl:Alcohol', source, itemdata.name)
    end)
end