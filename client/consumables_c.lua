----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
local ItemCheckEvent = Config.CoreSettings.ItemCheckEvent
local RemoveItemEvent = Config.CoreSettings.RemoveItemEvent
local AddItemEvent = Config.CoreSettings.AddItemEvent
local AddStress = Config.CoreSettings.AddStressEvent
local RemoveStress = Config.CoreSettings.RemoveStressEvent
local MetaDataEvent = Config.CoreSettings.MetaDataEvent
local EvidenceEvent = Config.CoreSettings.EvidenceEvent
local AlcoholCount = 0
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

--<!>-- NOTIFICATIONS START --<!>--
RegisterNetEvent('boii-consumables:notifications')
AddEventHandler('boii-consumables:notifications', function(msg, type)
    Core.Functions.Notify(msg,type)
end)
--<!>-- NOTIFICATIONS END --<!>--

--<!>-- NOTES --<!>--

-- Animations; https://wiki.gtanet.work/index.php?title=Animations
-- Props; https://forge.plebmasters.de/objects
-- Bones; https://wiki.gtanet.work/index.php?title=Bones

-- None of the items listed below are qb-core standard you will have to edit these to suit your server! 

--<!>-- EAT FOOD START --<!>--
RegisterNetEvent('boii-consumables:client:EatFood', function(args, itemName)
    local player = PlayerPedId()
    name = '' -- Progress bar name
    lang = '' -- Progress bar text
    timer = '' -- Progress bar timer
    animatdict = '' -- Animation dictionary
    animation = '' -- Animation
    prop = '' -- Prop
    bones = '' -- Bone index
    coord = '' -- Prop coords
    rotat = '' -- Prop rotation
    amount = '' -- Amount to award
    meta = '' -- Meta data
    consumable = '' -- Consumable type
    stress = '' -- Stress to remove
    if args == 1 then
        name = 'eatfood_1'
        lang = 'Eating A Hersheys Bar..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_inteat@burger'
        animation = 'mp_player_int_eat_burger_fp'
        prop = 'prop_choc_ego' 
        bones = 60309
        coord = vector3(-0.005, 0.00, -0.01)
        rotat = vector3(0.0, 0.0, 0.0)
        amount = 1
        meta = 'hunger'
        consumable = Config.Consumables.Food.Items
        removestress = math.random(8,15)
    elseif args == 2 then
        name = 'eatfood_2'
        lang = 'Eating M&Ms..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_inteat@pnq'
        animation = 'loop'
        prop = 'prop_choc_pq' 
        bones = 60309
        coord = vector3(-0.005, 0.00, -0.01)
        rotat = vector3(175.0, 160.0, 0.0)
        amount = 1
        meta = 'hunger'
        consumable = Config.Consumables.Food.Items
        removestress = math.random(8,15)
    elseif args == 3 then
        name = 'eatfood_3'
        lang = 'Eating Peanut M&Ms..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_inteat@pnq'
        animation = 'loop'
        prop = 'prop_candy_pqs' 
        bones = 60309
        coord = vector3(-0.005, 0.00, -0.01)
        rotat = vector3(275.0, 275.0, 0.0)
        amount = 1
        meta = 'hunger'
        consumable = Config.Consumables.Food.Items
        removestress = math.random(8,15)
    end
    Core.Functions.Progressbar(name, lang, timer, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = animatdict,
        anim = animation,
        flags = 49,
    }, {
        model = prop,
        bone = bones,
        coords = coord,
        rotation = rotat,
    }, {}, function()
	TriggerServerEvent('boii-consumables:server:RemoveItem', itemName, amount)
        TriggerServerEvent(MetaDataEvent, meta, Core.Functions.GetPlayerData().metadata[meta] + consumable[itemName])
        TriggerServerEvent(RemoveStress, removestress)
        ClearPedTasks(player)
    end)
end)
--<!>-- EAT FOOD END --<!>--

--<!>-- EAT RISKY FOOD START --<!>--
RegisterNetEvent('boii-consumables:client:EatRiskyFood', function(args, itemName)
    local player = PlayerPedId()
    name = '' -- Progress bar name
    lang = '' -- Progress bar text
    timer = '' -- Progress bar timer
    animatdict = '' -- Animation dictionary
    animation = '' -- Animation
    prop = '' -- Prop
    bones = '' -- Bone index
    coord = '' -- Prop coords
    rotat = '' -- Prop rotation
    amount = '' -- Amount to award
    meta = '' -- Meta data
    consumable = '' -- Consumable type
    hpremove = '' -- HP to remove
    removestress = '' -- Stress to remove
    if args == 1 then
        name = 'eatriskyfood_1'
        lang = 'Eating A Egg Sandwich..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_inteat@burger'
        animation = 'mp_player_int_eat_burger_fp'
        prop = 'prop_sandwich_01' 
        bones = 60309
        coord = vector3(-0.005, 0.00, -0.01)
        rotat = vector3(175.0, 160.0, 0.0)
        amount = 1
        meta = 'hunger'
        consumable = Config.Consumables.RiskyFood.Items
        chance = Config.Consumables.RiskyFood.SickChance
        removestress = math.random(8,15)
    elseif args == 2 then
        name = 'eatriskyfood_2'
        lang = 'Eating A Tuna Sandwich..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_inteat@burger'
        animation = 'mp_player_int_eat_burger_fp'
        prop = 'prop_sandwich_01' 
        bones = 60309
        coord = vector3(-0.005, 0.00, -0.01)
        rotat = vector3(175.0, 160.0, 0.0)
        amount = 1
        meta = 'hunger'
        consumable = Config.Consumables.RiskyFood.Items
        chance = Config.Consumables.RiskyFood.SickChance
        removestress = math.random(8,15)
    elseif args == 3 then
        name = 'eatfood_3'
        lang = 'Eating A Ham Sandwich..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_inteat@burger'
        animation = 'mp_player_int_eat_burger_fp'
        prop = 'prop_sandwich_01' 
        bones = 60309
        coord = vector3(-0.005, 0.00, -0.01)
        rotat = vector3(175.0, 160.0, 0.0)
        amount = 1
        meta = 'hunger'
        consumable = Config.Consumables.RiskyFood.Items
        chance = Config.Consumables.RiskyFood.SickChance
        removestress = math.random(8,15)
    end
    Core.Functions.Progressbar(name, lang, timer, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = animatdict,
        anim = animation,
        flags = 49,
    }, {
        model = prop,
        bone = bones,
        coords = coord,
        rotation = rotat,
    }, {}, function()
        TriggerServerEvent('boii-consumables:server:RemoveItem', itemName, amount)
        TriggerServerEvent(MetaDataEvent, meta, Core.Functions.GetPlayerData().metadata[meta] + consumable[itemName])
        if (chance >= math.random(1, 100)) then
            FeelSick()
        else
            TriggerServerEvent(RemoveStress, removestress)
            ClearPedTasks(player)
        end
    end)
end)
--<!>-- EAT RISKY FOOD END --<!>--

--<!>-- DRINKS START --<!>--
RegisterNetEvent('boii-consumables:client:Drink', function(args, itemName)
    local player = PlayerPedId()
    name = '' -- Progress bar name
    lang = '' -- Progress bar text
    timer = '' -- Progress bar timer
    animatdict = '' -- Animation dictionary
    animation = '' -- Animation
    prop = '' -- Prop
    bones = '' -- Bone index
    coord = '' -- Prop coords
    rotat = '' -- Prop rotation
    amount = '' -- Amount to remove on consume
    meta = '' -- Meta data hunger/thirst
    consumable = '' -- Consumable group in config
    stress = '' -- Stress to remove on consume
    if args == 1 then
        name = 'drink_1'
        lang = 'Drinking A CocaCola..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_intdrink'
        animation = 'loop_bottle'
        prop = 'prop_ecola_can' 
        bones = 60309
        coord = vector3(0.0, 0.0, 0.05)
        rotat = vector3(0.0, 0.0, 0.0)
        amount = 1
        meta = 'thirst'
        consumable = Config.Consumables.Drink.Items
        removestress = math.random(8,15)
    elseif args == 2 then
        name = 'drink_2'
        lang = 'Drinking A Pepsi..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_intdrink'
        animation = 'loop_bottle'
        prop = 'prop_ld_can_01' 
        bones = 60309
        coord = vector3(0.0, 0.0, 0.05)
        rotat = vector3(0.0, 0.0, 0.0)
        amount = 1
        meta = 'thirst'
        consumable = Config.Consumables.Drink.Items
        removestress = math.random(8,15)
    elseif args == 3 then
        name = 'drink_3'
        lang = 'Drinking A Dr Pepper..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_intdrink'
        animation = 'loop_bottle'
        prop = 'prop_ld_can_01b' 
        bones = 60309
        coord = vector3(0.0, 0.0, 0.05)
        rotat = vector3(0.0, 0.0, 0.0)
        amount = 1
        meta = 'thirst'
        consumable = Config.Consumables.Drink.Items
        removestress = math.random(8,15)
    elseif args == 4 then
        name = 'drink_4'
        lang = 'Drinking A Mtn Dew..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_intdrink'
        animation = 'loop_bottle'
        prop = 'prop_orang_can_01' 
        bones = 60309
        coord = vector3(0.0, 0.0, 0.05)
        rotat = vector3(0.0, 0.0, 0.0)
        amount = 1
        meta = 'thirst'
        consumable = Config.Consumables.Drink.Items
        removestress = math.random(8,15)
    elseif args == 5 then
        name = 'drink_5'
        lang = 'Drinking Water..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_intdrink'
        animation = 'loop_bottle'
        prop = 'ba_prop_club_water_bottle' 
        bones = 60309
        coord = vector3(0.0, 0.0, 0.05)
        rotat = vector3(0.0, 0.0, 0.0)
        amount = 1
        meta = 'thirst'
        consumable = Config.Consumables.Drink.Items
        removestress = math.random(8,15)
    elseif args == 6 then
        name = 'drink_6'
        lang = 'Drinking Coffee..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_intdrink'
        animation = 'loop_bottle'
        prop = 'prop_fib_coffee' 
        bones = 60309
        coord = vector3(0.0, 0.0, 0.05)
        rotat = vector3(0.0, 0.0, 0.0)
        amount = 1
        meta = 'thirst'
        consumable = Config.Consumables.Drink.Items
        removestress = math.random(8,15)
    elseif args == 7 then
        name = 'drink_7'
        lang = 'Drinking Tea..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_intdrink'
        animation = 'loop_bottle'
        prop = 'p_ing_coffeecup_01' 
        bones = 60309
        coord = vector3(0.0, 0.0, 0.05)
        rotat = vector3(0.0, 0.0, 0.0)
        amount = 1
        meta = 'thirst'
        consumable = Config.Consumables.Drink.Items
        removestress = math.random(8,15)
    elseif args == 8 then
        name = 'drink_8'
        lang = 'Drinking Hot Chocolate..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_intdrink'
        animation = 'loop_bottle'
        prop = 'p_amb_coffeecup_01' 
        bones = 60309
        coord = vector3(0.0, 0.0, 0.05)
        rotat = vector3(0.0, 0.0, 0.0)
        amount = 1
        meta = 'thirst'
        consumable = Config.Consumables.Drink.Items
        removestress = math.random(8,15)
    end
    Core.Functions.Progressbar(name, lang, timer, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = animatdict,
        anim = animation,
        flags = 49,
    }, {
        model = prop,
        bone = bones,
        coords = coord,
        rotation = rotat,
    }, {}, function()
        TriggerServerEvent('boii-consumables:server:RemoveItem', itemName, amount)
        TriggerServerEvent(MetaDataEvent, meta, Core.Functions.GetPlayerData().metadata[meta] + consumable[itemName])
        TriggerServerEvent(RemoveStress, removestress)
        ClearPedTasks(player)
    end)
end)
--<!>-- DRINKS END --<!>--

--<!>-- RISKY DRINKS START --<!>--
RegisterNetEvent('boii-consumables:client:RiskyDrink', function(args, itemName)
    local player = PlayerPedId()
    name = '' -- Progress bar name
    lang = '' -- Progress bar text
    timer = '' -- Progress bar timer
    animatdict = '' -- Animation dictionary
    animation = '' -- Animation
    prop = '' -- Prop
    bones = '' -- Bone index
    coord = '' -- Prop coords
    rotat = '' -- Prop rotation
    amount = '' -- Amount to award
    meta = '' -- Meta data
    consumable = '' -- Consumable type
    hpremove = '' -- HP to remove
    removestress = '' -- Stress to remove
    if args == 1 then
        name = 'riskydrink_1'
        lang = 'Drinking Some Yellow Stuff..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_intdrink'
        animation = 'loop_bottle'
        prop = 'ba_prop_club_tonic_bottle' 
        bones = 60309
        coord = vector3(-0.005, 0.00, -0.15)
        rotat = vector3(0.0, 0.0, 0.0)
        amount = 1
        meta = 'thirst'
        consumable = Config.Consumables.RiskyDrink.Items
        chance = Config.Consumables.RiskyDrink.SickChance
        hpremove = math.random(5,10)
        removestress = math.random(8,15)
    elseif args == 2 then
        name = 'riskydrink_2'
        lang = 'Drinking Dirty Water..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_intdrink'
        animation = 'loop_bottle'
        prop = 'ba_prop_club_water_bottle' 
        bones = 60309
        coord = vector3(-0.005, 0.00, -0.08)
        rotat = vector3(0.0, 0.0, 0.0)
        amount = 1
        meta = 'thirst'
        consumable = Config.Consumables.RiskyDrink.Items
        chance = Config.Consumables.RiskyDrink.SickChance
        removestress = math.random(8,15)
    end
    Core.Functions.Progressbar(name, lang, timer, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = animatdict,
        anim = animation,
        flags = 49,
    }, {
        model = prop,
        bone = bones,
        coords = coord,
        rotation = rotat,
    }, {}, function()
        TriggerServerEvent('boii-consumables:server:RemoveItem', itemName, amount)
        TriggerServerEvent(MetaDataEvent, meta, Core.Functions.GetPlayerData().metadata[meta] + consumable[itemName])
        if (chance >= math.random(1, 100)) then
            FeelSick()
        else
            TriggerServerEvent(RemoveStress, removestress)
            ClearPedTasks(player)
        end
    end)
end)
--<!>-- RISKY DRINKS END --<!>--

--<!>-- ALCOHOL START --<!>--
RegisterNetEvent('boii-consumables:client:Alcohol', function(args, itemName)
    local player = PlayerPedId()
    name = '' -- Progress bar name
    lang = '' -- Progress bar text
    timer = '' -- Progress bar timer
    animatdict = '' -- Animation dictionary
    animation = '' -- Animation
    prop = '' -- Prop
    bones = '' -- Bone index
    coord = '' -- Prop coords
    rotat = '' -- Prop rotation
    amount = '' -- Amount to award
    meta = '' -- Meta data
    consumable = '' -- Consumable type
    removestress = '' -- Stress to remove
    lightdrunkamount = '' -- Amount of drinks for light drunk effect
    heavydrunkamount = '' -- Amount of drinks for heavy drunk effect
    if args == 1 then
        name = 'alcohol_1'
        lang = 'Drinking A Corona..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_intdrink'
        animation = 'loop_bottle'
        prop = 'prop_beer_amopen' 
        bones = 60309
        coord = vector3(-0.005, 0.00, -0.09)
        rotat = vector3(0.0, 0.0, 0.0)
        amount = 1
        meta = 'thirst'
        consumable = Config.Consumables.Alcohol.Items
        chance = Config.Consumables.Alcohol.SickChance
        hpremove = math.random(5,10)
        removestress = math.random(8,15)
        lightdrunkamount = 3
        heavydrunkamount = 6
    elseif args == 2 then
        name = 'alcohol_2'
        lang = 'Drinking A Budweiser..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_intdrink'
        animation = 'loop_bottle'
        prop = 'prop_beer_logopen' 
        bones = 60309
        coord = vector3(-0.005, 0.00, -0.09)
        rotat = vector3(0.0, 0.0, 0.0)
        amount = 1
        meta = 'thirst'
        consumable = Config.Consumables.Alcohol.Items
        chance = Config.Consumables.Alcohol.SickChance
        removestress = math.random(8,15)
        lightdrunkamount = 3
        heavydrunkamount = 6
    elseif args == 3 then
        name = 'alcohol_3'
        lang = 'Drinking Vodka..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_intdrink'
        animation = 'loop_bottle'
        prop = 'prop_vodka_bottle' 
        bones = 60309
        coord = vector3(-0.005, 0.00, -0.20)
        rotat = vector3(0.0, 0.0, 0.0)
        amount = 1
        meta = 'thirst'
        consumable = Config.Consumables.Alcohol.Items
        chance = Config.Consumables.Alcohol.SickChance
        removestress = math.random(8,15)
        lightdrunkamount = 2
        heavydrunkamount = 4
    elseif args == 4 then
        name = 'alcohol_4'
        lang = 'Drinking Whiskey..'
        timer = math.random(3500,5000)
        animatdict = 'mp_player_intdrink'
        animation = 'loop_bottle'
        prop = 'prop_whiskey_bottle' 
        bones = 60309
        coord = vector3(-0.005, 0.00, -0.20)
        rotat = vector3(0.0, 0.0, 0.0)
        amount = 1
        meta = 'thirst'
        consumable = Config.Consumables.Alcohol.Items
        chance = Config.Consumables.Alcohol.SickChance
        removestress = math.random(8,15)
        lightdrunkamount = 2
        heavydrunkamount = 4
    end
    Core.Functions.Progressbar(name, lang, timer, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = animatdict,
        anim = animation,
        flags = 49,
    }, {
        model = prop,
        bone = bones,
        coords = coord,
        rotation = rotat,
    }, {}, function()
        TriggerServerEvent('boii-consumables:server:RemoveItem', itemName, amount)
        TriggerServerEvent(MetaDataEvent, meta, Core.Functions.GetPlayerData().metadata[meta] + consumable[itemName])
        AlcoholCount = AlcoholCount + 1
        if AlcoholCount > lightdrunkamount and AlcoholCount < heavydrunkamount then
            LightDrunkEffect()
            TriggerEvent(EvidenceEvent, 'alcohol', 200)
            TriggerServerEvent(RemoveStress, removestress)
            ClearPedTasks(player)
        elseif AlcoholCount >= heavydrunkamount then
            HeavyDrunkEffect()
            TriggerEvent(EvidenceEvent, 'heavyalcohol', 200)
            TriggerServerEvent(RemoveStress, removestress)
            ClearPedTasks(player)
        end
        if (chance >= math.random(1, 100)) then
            FeelSick()
        end
    end)
end)
--<!>-- ALCOHOL END --<!>--

--<!>-- OPEN 6 PACK START --<!>--
RegisterNetEvent('boii-consumables:client:Open6Pack', function(args)
    local args = tonumber(args)
    local player = PlayerPedId()
    removeitem = '' -- Item to remove on opening
    additem = '' -- Item to return on opening
    lang = '' -- Notification 
    if args == 1 then
        removeitem = 'corona6pack'
        additem = 'corona'
        lang = 'You opened a 6 pack of Corona!'
    elseif args == 2 then
        removeitem = 'budweiser6pack'
        additem = 'budweiser'
        lang = 'You opened a 6 pack of Budweiser!'
    end
    TriggerServerEvent('boii-consumables:server:RemoveItem', itemremove, 1)
    Wait(2*1000) -- 2 seconds
    TriggerServerEvent('boii-consumables:server:AddItem', itemadd, 6) 
    TriggerEvent('boii-consumables:notifications', lang, 'success')
end)

--<!>-- FEEL SICK START --<!>--
function FeelSick()
    local player = PlayerPedId()
    Wait(2000) -- 2 seconds
    TriggerEvent('boii-consumables:notifications', 'You feel sick..', 'primary')
    Wait(5000) -- 5 seconds
    Core.Functions.Progressbar('feel_sick', 'About To Puke..', 7500, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'move_m@_idles@out_of_breath',
        anim = 'idle_a',
        --flags = 49,
    }, {}, {}, function()
    Wait(200)
    TriggerEvent('animations:client:EmoteCommandStart', {'outofbreath'}) 
    Wait(3000)
    SetEntityHealth(player, GetEntityHealth(player) - 10) -- Edit the amount of HP to remove here 
    ClearPedTasks(player)
	end, function() -- Cancel
		TriggerEvent('inventory:client:busy:status', false)
		TriggerEvent('boii-consumables:notifications', 'Action Cancelled!', 'error')
	end) 
end
--<!>-- FEEL SICK END --<!>--

--<!>-- DRUNK START --<!>--
function LightDrunkEffect()
    local player = PlayerPedId()
    Wait(3000)
    DoScreenFadeOut(1000)
    Wait(1000)
    SetTimecycleModifier('spectator5')
    SetPedMotionBlur(GetPlayerPed(-1), true)
    SetPedMovementClipset(GetPlayerPed(-1), 'MOVE_M@DRUNK@SLIGHTLYDRUNK', true)
    SetPedIsDrunk(GetPlayerPed(-1), true)
    SetPedAccuracy(GetPlayerPed(-1), 0)
    DoScreenFadeIn(1000)
    if IsPedRunning(player) then
        SetPedToRagdoll(player, math.random(1000, 2000), math.random(1000, 2000), 3, 0, 0, 0)
    end
    Wait(2000)
    if (60 >= math.random(1,100)) and IsPedRunning(player) then
        SetPedToRagdollWithFall(ped, 2500, 4000, 1, GetEntityForwardVector(ped), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    end            
    Wait(5*60000) -- 5 mins
    if IsPedRunning(player) then
        SetPedToRagdoll(player, math.random(1000, 2000), math.random(1000, 2000), 3, 0, 0, 0)
    end
    Wait(2000)
    if (30 >= math.random(1,100)) and IsPedRunning(player) then
        SetPedToRagdollWithFall(ped, 1500, 3000, 1, GetEntityForwardVector(ped), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    end
    DoScreenFadeOut(1000)
    Wait(1000)
    DoScreenFadeIn(1000)
    ClearTimecycleModifier()
    ResetScenarioTypesEnabled()
    ResetPedMovementClipset(GetPlayerPed(-1), 0)
    SetPedIsDrunk(GetPlayerPed(-1), false)
    SetPedMotionBlur(GetPlayerPed(-1), false)
end
function HeavyDrunkEffect()
    local ped = PlayerPedId()
    if IsPedWalking(player) or IsPedRunning(player) then
        SetPedToRagdollWithFall(ped, 2500, 4000, 1, GetEntityForwardVector(ped), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    end
    Wait(5000)
    DoScreenFadeOut(1500)
    SetFlash(0, 0, 500, 7000, 500)
    ShakeGameplayCam('LARGE_EXPLOSION_SHAKE', 1.00)
    Wait(2000)
    SetTimecycleModifier('spectator5')
    SetPedMotionBlur(GetPlayerPed(-1), true)
    SetPedMovementClipset(GetPlayerPed(-1), 'MOVE_M@DRUNK@VERYDRUNK', true)
    SetPedIsDrunk(GetPlayerPed(-1), true)
    SetPedAccuracy(GetPlayerPed(-1), 0)
    SetFlash(0, 0, 500, 7000, 500)
    ShakeGameplayCam('DRUNK_SHAKE', 1.10)
    Wait(2000)
    DoScreenFadeIn(1800)
    if IsPedWalking(player) or IsPedRunning(player) then
        SetPedToRagdollWithFall(ped, 2500, 4000, 1, GetEntityForwardVector(ped), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    end
    SetFlash(0, 0, 500, 7000, 500)
    ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 1.20)
    Wait(2000)            
    Wait(10*60000) -- 10 mins
    DoScreenFadeOut(1400)
    SetFlash(0, 0, 500, 7000, 500)
    ShakeGameplayCam('DRUNK_SHAKE', 1.10)
    Wait(2000)  
    DoScreenFadeIn(1200)
    if IsPedWalking(player) or IsPedRunning(player) then
        SetPedToRagdollWithFall(ped, 2500, 4000, 1, GetEntityForwardVector(ped), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    end
    SetFlash(0, 0, 500, 7000, 500)
    ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 1.05)
    Wait(1000)
    ClearTimecycleModifier()
    ResetScenarioTypesEnabled()
    ResetPedMovementClipset(GetPlayerPed(-1), 0)
    SetPedIsDrunk(GetPlayerPed(-1), false)
    SetPedMotionBlur(GetPlayerPed(-1), false)
end
--<!>-- DRUNK END --<!>--
