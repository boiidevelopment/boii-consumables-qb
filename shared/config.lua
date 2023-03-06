----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

Config = {}
-- Core settings; you can ignore these if you have not replaces any core info
Config.CoreSettings = {
    Core = 'QBCore', -- The name of your core. Default; QBCore
    CoreFolder = 'qb-core', -- The name of your core folder. Default; qb-core
    HudEvent = 'hud:client:UpdateNeeds', -- The name of your hud event. Default; 'hud:client:UpdateNeeds'
    AddStressEvent = 'hud:server:GainStress', -- Event to remove stress from player. Default; 'hud:server:GainStress'
    RemoveStressEvent = 'hud:server:RelieveStress', -- Event to remove stress from player. Default; 'hud:server:RelieveStress'
    EvidenceEvent = 'evidence:client:SetStatus', -- Event to set drunk evidence status for police. Default; 'evidence:client:SetStatus'
}

-- Consumables settings
Config.Consumables = {
    Alcohol = {
        ['beer_am'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(25,40), -- Amount of thirst to receive
            stress = math.random(3,6), -- Amount of stress to remove
            bartext = 'Drinking A.M..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beer_amopen', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['beer_logger'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(6,12), -- Chance to be sick if risky = true
            removehealth = math.random(4, 10), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(21,36), -- Amount of thirst to receive
            stress = math.random(4,8), -- Amount of stress to remove
            bartext = 'Drinking Logger..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beer_logger', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['beer_piss'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(8,14), -- Chance to be sick if risky = true
            removehealth = math.random(5, 10), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(28,43), -- Amount of thirst to receive
            stress = math.random(5,11), -- Amount of stress to remove
            bartext = 'Drinking Pisshwasser..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beer_pissh', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['beer_dusche'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(4,10), -- Chance to be sick if risky = true
            removehealth = math.random(2,12), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(22,40), -- Amount of thirst to receive
            stress = math.random(6,8), -- Amount of stress to remove
            bartext = 'Drinking Dusche..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beerdusche', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['beer_patriot'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(25,40), -- Amount of thirst to receive
            stress = math.random(3,6), -- Amount of stress to remove
            bartext = 'Drinking Patriot..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beer_patriot', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['beer_stz'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(8,14), -- Chance to be sick if risky = true
            removehealth = math.random(5, 10), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(28,43), -- Amount of thirst to receive
            stress = math.random(5,11), -- Amount of stress to remove
            bartext = 'Drinking Stronzo..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beer_stz', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['beer_pride'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(4,10), -- Chance to be sick if risky = true
            removehealth = math.random(2,12), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(22,40), -- Amount of thirst to receive
            stress = math.random(6,8), -- Amount of stress to remove
            bartext = 'Drinking Pride..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beer_pride', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['beer_jakey'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(25,40), -- Amount of thirst to receive
            stress = math.random(3,6), -- Amount of stress to remove
            bartext = 'Drinking Jakeys..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beer_jakey', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['beer_bar'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(6,12), -- Chance to be sick if risky = true
            removehealth = math.random(4, 10), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(21,36), -- Amount of thirst to receive
            stress = math.random(4,8), -- Amount of stress to remove
            bartext = 'Drinking Barracho..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beer_bar', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['beer_blr'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(4,10), -- Chance to be sick if risky = true
            removehealth = math.random(2,12), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(22,40), -- Amount of thirst to receive
            stress = math.random(6,8), -- Amount of stress to remove
            bartext = 'Drinking Blarneys..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beer_blr', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['whiskey_mount'] = {
            alcoholcount = 4, -- Amount to increase alcohol count
            sickchance = math.random(30,55), -- Chance to be sick if risky = true
            removehealth = math.random(9,14), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(35,49), -- Amount of thirst to receive
            stress = math.random(6,8), -- Amount of stress to remove
            bartext = 'Drinking Mount Whiskey..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_whiskey_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['whiskey_macbeth'] = {
            alcoholcount = 3, -- Amount to increase alcohol count
            sickchance = math.random(23,45), -- Chance to be sick if risky = true
            removehealth = math.random(5,11), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(35,49), -- Amount of thirst to receive
            stress = math.random(6,8), -- Amount of stress to remove
            bartext = 'Drinking Macbeth Whiskey..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_bottle_macbeth', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['whiskey_richards'] = {
            alcoholcount = 4, -- Amount to increase alcohol count
            sickchance = math.random(30,55), -- Chance to be sick if risky = true
            removehealth = math.random(9,14), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(35,49), -- Amount of thirst to receive
            stress = math.random(6,8), -- Amount of stress to remove
            bartext = 'Drinking Richards Whiskey..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_bottle_richard', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['brandy_cardi'] = {
            alcoholcount = 3, -- Amount to increase alcohol count
            sickchance = math.random(20,45), -- Chance to be sick if risky = true
            removehealth = math.random(8,12), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(29,46), -- Amount of thirst to receive
            stress = math.random(7,11), -- Amount of stress to remove
            bartext = 'Drinking Cardiaque Brandy..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_bottle_brandy', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['brandy_cognac'] = {
            alcoholcount = 3, -- Amount to increase alcohol count
            sickchance = math.random(20,45), -- Chance to be sick if risky = true
            removehealth = math.random(8,12), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(29,46), -- Amount of thirst to receive
            stress = math.random(7,11), -- Amount of stress to remove
            bartext = 'Drinking Cognac Brandy..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_bottle_cognac', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['vodka'] = {
            alcoholcount = 4, -- Amount to increase alcohol count
            sickchance = math.random(40,65), -- Chance to be sick if risky = true
            removehealth = math.random(11,19), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(40,61), -- Amount of thirst to receive
            stress = math.random(6,8), -- Amount of stress to remove
            bartext = 'Drinking Vodka..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_vodka_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['rum'] = {
            alcoholcount = 3, -- Amount to increase alcohol count
            sickchance = math.random(15,35), -- Chance to be sick if risky = true
            removehealth = math.random(5,8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(31,58), -- Amount of thirst to receive
            stress = math.random(6,12), -- Amount of stress to remove
            bartext = 'Drinking Ragga Rum..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_rum_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['tequila'] = {
            alcoholcount = 3, -- Amount to increase alcohol count
            sickchance = math.random(15,35), -- Chance to be sick if risky = true
            removehealth = math.random(5,8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(31,58), -- Amount of thirst to receive
            stress = math.random(6,12), -- Amount of stress to remove
            bartext = 'Drinking Tequilya..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_tequila_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['wine_red'] = {
            alcoholcount = 5, -- Amount to increase alcohol count
            sickchance = math.random(25,45), -- Chance to be sick if risky = true
            removehealth = math.random(5,8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(50,69), -- Amount of thirst to receive
            stress = math.random(6,12), -- Amount of stress to remove
            bartext = 'Drinking Red Wine..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_wine_bot_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['wine_rose'] = {
            alcoholcount = 5, -- Amount to increase alcohol count
            sickchance = math.random(25,45), -- Chance to be sick if risky = true
            removehealth = math.random(5,8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(50,69), -- Amount of thirst to receive
            stress = math.random(6,12), -- Amount of stress to remove
            bartext = 'Drinking Rose Wine..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_wine_rose', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['wine_white'] = {
            alcoholcount = 5, -- Amount to increase alcohol count
            sickchance = math.random(25,45), -- Chance to be sick if risky = true
            removehealth = math.random(5,8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(50,69), -- Amount of thirst to receive
            stress = math.random(6,12), -- Amount of stress to remove
            bartext = 'Drinking White Wine..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_wine_bot_02', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
    },
    Drinks = {
        ['water'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(28,45), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drinking Water..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_plastic_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'ba_prop_club_water_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['ecola'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(30,48), -- Amount of thirst to receive
            stress = math.random(6,11), -- Amount of stress to remove
            bartext = 'Drinking E-Cola..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_ecola_can', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['sprunk'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(30,48), -- Amount of thirst to receive
            stress = math.random(6,11), -- Amount of stress to remove
            bartext = 'Drinking Sprunk..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_ld_can_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['orangotang'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(30,48), -- Amount of thirst to receive
            stress = math.random(6,11), -- Amount of stress to remove
            bartext = 'Drinking Orang-O-Tang..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_orang_can_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['dirtywater'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(15,40), -- Chance to be sick if risky = true
            removehealth = math.random(5,10), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(28,45), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drinking Dirty Water..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_plastic_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'ba_prop_club_water_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['coffee'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(28,45), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drinking Coffee..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_fib_coffee', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['tea'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(28,45), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drinking Tea..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'p_amb_coffeecup_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
    },
    Food = {
        ['eggsandwich'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(28,45), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Eating Egg Sandwich..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_sandwich_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['tunasandwich'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(28,45), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Eating Tuna Sandwich..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_sandwich_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['hamsandwich'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(28,45), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Eating Ham Sandwich..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_sandwich_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['meteorite'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = math.random(28,45), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Eating Meteorite..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'wrapper', -- Item to return if returns = true       
            dict = 'mp_player_inteat@pnq', -- Animation dictionary
            animation = 'loop', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_choc_meto', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['egochaser'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = math.random(28,45), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Eating Egochaser..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'wrapper', -- Item to return if returns = true       
            dict = 'mp_player_inteat@pnq', -- Animation dictionary
            animation = 'loop', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_choc_ego', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['psnqs'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = math.random(28,45), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Eating Ps & Qs..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@pnq', -- Animation dictionary
            animation = 'loop', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_candy_pqs', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        }
    }
}