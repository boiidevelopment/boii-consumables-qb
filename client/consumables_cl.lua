----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
local RemoveStress = Config.CoreSettings.RemoveStressEvent
local MetaDataEvent = Config.CoreSettings.MetaDataEvent
local EvidenceEvent = Config.CoreSettings.EvidenceEvent
local AlcoholCount = 0
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

--<!>-- NOTIFICATIONS START --<!>--
RegisterNetEvent('boii-consumables:notify')
AddEventHandler('boii-consumables:notify', function(msg, type)
    Core.Functions.Notify(msg,type)
end)
--<!>-- NOTIFICATIONS END --<!>--

--<!>-- EVENTS START --<!>--
-- Consume food/drink
RegisterNetEvent('boii-consumables:cl:Consumables', function(itemremove, itemadd, meta, amount, stress, lang, timer, animd, anims, flag, prop, bones, coord, rotat)
    Consumables(itemremove, itemadd, meta, amount, stress, lang, timer, animd, anims, flag, prop, bones, coord, rotat)
end)
-- Consume food/drink with sickness chance
RegisterNetEvent('boii-consumables:cl:ConsumablesSickness', function(itemremove, itemadd, meta, amount, stress, chance, lang, timer, animd, anims, flag, prop, bones, coord, rotat)
    ConsumablesSickness(itemremove, itemadd, meta, amount, stress, chance, lang, timer, animd, anims, flag, prop, bones, coord, rotat)
end)
-- Consume alcohol
RegisterNetEvent('boii-consumables:cl:ConsumablesAlcohol', function(itemremove, itemadd, meta, amount, stress, chance, lang, timer, animd, anims, flag, prop, bones, coord, rotat)
    ConsumablesAlcohol(itemremove, itemadd, meta, amount, stress, chance, lang, timer, animd, anims, flag, prop, bones, coord, rotat)
end)

-- Open 6 packs
RegisterNetEvent('boii-consumables:cl:Open6Pack', function(itemremove, itemadd, lang)
    TriggerServerEvent('boii-consumables:sv:RemoveItem', itemremove, 1)
    Wait(2*1000) -- 2 seconds
    TriggerServerEvent('boii-consumables:sv:AddItem', itemadd, 6) 
    TriggerEvent('boii-consumables:notify', lang, 'success')
end)
--<!>-- EVENTS END --<!>--

--<!>-- CONSUMABLES FUNCTIONS START --<!>--
-- Consume regular food/drinks
function Consumables(itemremove, itemadd, meta, amount, stress, lang, timer, animd, anims, flag, prop, bones, coord, rotat)
    Core.Functions.Progressbar('boii_consumables', lang, timer*1000, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false
    }, {
        animDict = animd,
        anim = anims,
        flags = flag
    }, {
        model = prop,
        bone = bones,
        coords = coord,
        rotation = rotat
    }, {}, function()
        TriggerServerEvent('boii-consumables:sv:RemoveItem', itemremove, 1)
        TriggerServerEvent('boii-consumables:sv:AddItem', itemadd, 1)
        TriggerServerEvent('boii-consumables:sv:SetMeta', meta, amount)
        TriggerServerEvent(RemoveStress, stress)
    end, function() -- Cancel
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('boii-consumables:notify', Language.Shared['cancelled'], 'primary')
    end)
end

-- Consume food/drinks with sickness chance
function ConsumablesSickness(itemremove, itemadd, meta, amount, stress, chance, lang, timer, animd, anims, flag, prop, bones, coord, rotat)
    Core.Functions.Progressbar('boii_consumablesick', lang, timer*1000, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false
    }, {
        animDict = animd,
        anim = anims,
        flags = flag
    }, {
        model = prop,
        bone = bones,
        coords = coord,
        rotation = rotat
    }, {}, function()
        TriggerServerEvent('boii-consumables:sv:RemoveItem', itemremove, 1)
        TriggerServerEvent('boii-consumables:sv:AddItem', itemadd, 1)
        TriggerServerEvent('boii-consumables:sv:SetMeta', meta, amount)
        if (chance >= math.random(1, 100)) then
            FeelSick()
        else
            TriggerServerEvent(RemoveStress, stress)
        end
    end, function() -- Cancel
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('boii-consumables:notify', 'Action Cancelled!', 'primary')
    end)
end

-- Consume alcohol
function ConsumablesAlcohol(itemremove, itemadd, meta, amount, stress, chance, lang, timer, animd, anims, flag, prop, bones, coord, rotat)
    Core.Functions.Progressbar('boii_consumablesick', lang, timer*1000, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false
    }, {
        animDict = animd,
        anim = anims,
        flags = flag
    }, {
        model = prop,
        bone = bones,
        coords = coord,
        rotation = rotat
    }, {}, function()
            AlcoholCount = AlcoholCount + 1
            TriggerServerEvent('boii-consumables:sv:RemoveItem', itemremove, 1)
            TriggerServerEvent('boii-consumables:sv:AddItem', itemadd, 1)
            TriggerServerEvent('boii-consumables:sv:SetMeta', meta, amount)
        if AlcoholCount > 3 and AlcoholCount < 7 then -- Edit the amount of alcohol required to trigger drunk effects here
            LightDrunkEffect()
            TriggerEvent(EvidenceEvent, 'alcohol', 200)
            TriggerServerEvent(RemoveStress, stress)
        elseif AlcoholCount >= 7 then -- Edit the amount of alcohol required to trigger drunk effects here
            HeavyDrunkEffect()
            TriggerEvent(EvidenceEvent, 'heavyalcohol', 200)
            TriggerServerEvent(RemoveStress, stress)
            TriggerServerEvent('boii-consumables:sv:RemoveItem', itemremove, 1)
            TriggerServerEvent('boii-consumables:sv:AddItem', itemadd, 1)
        end
        if (chance >= math.random(1, 100)) then
            FeelSick()
        end
    end, function() -- Cancel
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('boii-consumables:notify', 'Action Cancelled!', 'primary')
    end)
end

-- Sickness
function FeelSick()
    local player = PlayerPedId()
    Wait(2000) -- 2 seconds
    TriggerEvent('boii-consumables:notify', 'You feel sick..', 'primary')
    Wait(5000) -- 5 seconds
    Core.Functions.Progressbar('feel_sick', 'About To Puke..', 7500, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'move_m@_idles@out_of_breath',
        anim = 'idle_a',
        flags = 49,
    }, {}, {}, function()
        Wait(200)
        TriggerEvent('animations:client:EmoteCommandStart', {'outofbreath'}) 
        Wait(3000)
        SetEntityHealth(player, GetEntityHealth(player) - 3) -- Edit the amount of HP to remove here
	ClearPedTasks(player)
	end, function() -- Cancel
		TriggerEvent('inventory:client:busy:status', false)
		TriggerEvent('boii-consumables:notify', 'Action Cancelled!', 'primary')
	end) 
end
--<!>-- CONSUMABLES FUNCTIONS END --<!>--

--<!>-- EFFECTS START --<!>--
-- Light drunk effect
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

-- Heavy drunk effect
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
--<!>-- EFFECTS END --<!>--
