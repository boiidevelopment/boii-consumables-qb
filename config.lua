----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

Config = {}
-- Core settings; you can ignore these if you have not replaces any core info
Config.CoreSettings = {
    Core = 'QBCore', -- The name of your core. Default; QBCore
    CoreFolder = 'qb-core', -- The name of your core folder. Default; qb-core
    TargetName = 'qb-target', -- The name of your third eye targeting. Default; qb-target
    MenuName = 'qb-menu', -- The name of your menu. Default; qb-menu
    ItemCheckEvent = 'QBCore:HasItem', -- The name of your item check event. Default; 'QBCore:HasItem'
    RemoveItemEvent = 'QBCore:Server:RemoveItem', -- The name of your item check event. Default; 'QBCore:Server:AddItem'
    AddItemEvent = 'QBCore:Server:AddItem', -- The name of your item check event. Default; 'QBCore:Server:AddItem'
    MetaDataEvent = 'QBCore:Server:SetMetaData', -- The name of your set metadata event. Default; 'QBCore:Server:SetMetaData'
    AddStressEvent = 'hud:server:GainStress', -- Event to remove stress from player. Default; 'hud:server:GainStress'
    RemoveStressEvent = 'hud:server:RelieveStress', -- Event to remove stress from player. Default; 'hud:server:RelieveStress'
    EvidenceEvent = 'evidence:client:SetStatus', -- Event to set drunk evidence status for police. Default; 'evidence:client:SetStatus'
}
-- Consumables list; edit these to match your server items if you do not want to use our items provided
Config.Consumables = {
    RiskyFood = {
        SickChance = 100, -- Chance in % of getting sick from risky food items
        Items = {
            -- Store items
            ['eggsandwich'] = math.random(25,40),
            ['tunasandwich'] = math.random(25,40),
            ['hamsandwich'] = math.random(25,40),
            -- Player owned businesses
        },
    },
    Food = {
        Items = {
            -- Store food
            ['hersheysbar'] = math.random(15,25),
            ['mandms'] = math.random(15,25),
            ['peanutmandms'] = math.random(15,25),
            ['chips'] = math.random(15,25),
            ['donut'] = math.random(15,25),
            -- Player owned businesses
        },
    },
    RiskyDrink = {
        SickChance = 100, -- Chance in % of getting sick from risky drink items
        Items = {
            -- Found items
            ['dirtywater'] = math.random(15,25),
            ['yellowliquid'] = math.random(15,25),
            -- Store items
            
            -- Player owned businesses
        },
    },
    Drink = {
        Items = {
            -- Store items
            ['cocacola'] = math.random(15,25),
            ['pepsi'] = math.random(15,25),
            ['drpepper'] = math.random(15,25),
            ['mountaindew'] = math.random(15,25),
            ['water'] = math.random(15,25),
            ['coffee'] = math.random(15,25),
            ['tea'] = math.random(15,25),
            ['hotchocolate'] = math.random(15,25),
        },
    },
    Alcohol = {
        SickChance = 10, -- Chance in % of getting sick from alcohol items
        Items = {
            ['corona'] = math.random(20,32),
            ['budweiser'] = math.random(20,32),
            ['vodka'] = math.random(20,32),
            ['whiskey'] = math.random(20,32),
        },
    }, 
}
