----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
local RemoveStress = Config.CoreSettings.RemoveStressEvent
local EvidenceEvent = Config.CoreSettings.EvidenceEvent
local AlcoholCount = 0
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

--<!>-- NOTIFICATIONS START --<!>--
RegisterNetEvent('boii-consumables:notify')
AddEventHandler('boii-consumables:notify', function(msg, type)
    Core.Functions.Notify(msg,type)
end)
--<!>-- NOTIFICATIONS END --<!>--

--<!>-- SICKNESS --<!>--
local function ThrowUp(player, removehealth, stress)
    Wait(2000) -- 2 seconds
    TriggerEvent('boii-consumables:notify', Language.Sickness['notification'], 'primary')
    Wait(5000) -- 5 seconds
    Core.Functions.Progressbar('consumables_feelsick', Language.Sickness['bartext'], 7500, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    }, {
        animDict = 'move_m@_idles@out_of_breath',
        anim = 'idle_a',
        flags = 49,
    }, {}, {}, function()
        Wait(200)
        TriggerEvent('animations:client:EmoteCommandStart', {'outofbreath'}) 
        Wait(3000)
        SetEntityHealth(player, GetEntityHealth(player) - removehealth) -- Edit the amount of HP to remove here
        ClearPedTasks(player)
	end, function() -- Cancel
		TriggerEvent('inventory:client:busy:status', false)
		TriggerEvent('boii-consumables:notify', Language.Shared['cancelled'], 'primary')
	end) 
end
--<!>-- SICKNESS --<!>--

--<!>-- EAT FOOD --<!>--
local function EatFood(itemname)
    local player = PlayerPedId()
    if Config.Consumables.Food[itemname].dualprops then
        Core.Functions.Progressbar('consumables_eatfood', Config.Consumables.Food[itemname].bartext, Config.Consumables.Food[itemname].bartime*1000, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = false
        }, {
            animDict = Config.Consumables.Food[itemname].dict,
            anim = Config.Consumables.Food[itemname].animation,
            flags = Config.Consumables.Food[itemname].flags
        }, {
            model = Config.Consumables.Food[itemname].prop,
            bone = Config.Consumables.Food[itemname].bones,
            coords = Config.Consumables.Food[itemname].coord,
            rotation = Config.Consumables.Food[itemname].rotat
        }, {
            model = Config.Consumables.Food[itemname].prop2,
            bone = Config.Consumables.Food[itemname].bones2,
            coords = Config.Consumables.Food[itemname].coord2,
            rotation = Config.Consumables.Food[itemname].rotat2
        }, function()
            TriggerServerEvent('boii-consumables:sv:RemoveItem', itemname, 1)
            TriggerServerEvent(RemoveStress, Config.Consumables.Food[itemname].stress)
            TriggerServerEvent('boii-consumables:sv:AddMeta', Config.Consumables.Food[itemname].hunger, Config.Consumables.Food[itemname].thirst)
            if Config.Consumables.Food[itemname].shouldreturn then
                TriggerServerEvent('boii-consumables:sv:AddItem', Config.Consumables.Food[itemname].returnitem, 1)
            end
            if Config.Consumables.Food[itemname].risky then
                if (Config.Consumables.Food[itemname].sickchance >= math.random(1, 100)) then
                    ThrowUp(player, Config.Consumables.Food[itemname].removehealth, Config.Consumables.Food[itemname].stress)
                end
            end
	    	ClearPedTasks(player)		
        end, function() -- Cancel
            TriggerEvent('inventory:client:busy:status', false)
            TriggerEvent('boii-consumables:notify', Language.Shared['cancelled'], 'primary')
        end)
    else
        Core.Functions.Progressbar('consumables_eatfood', Config.Consumables.Food[itemname].bartext, Config.Consumables.Food[itemname].bartime*1000, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = false
        }, {
            animDict = Config.Consumables.Food[itemname].dict,
            anim = Config.Consumables.Food[itemname].animation,
            flags = Config.Consumables.Food[itemname].flags
        }, {
            model = Config.Consumables.Food[itemname].prop,
            bone = Config.Consumables.Food[itemname].bones,
            coords = Config.Consumables.Food[itemname].coord,
            rotation = Config.Consumables.Food[itemname].rotat
        }, {}, function()
            TriggerServerEvent('boii-consumables:sv:RemoveItem', itemname, 1)
            TriggerServerEvent(RemoveStress, Config.Consumables.Food[itemname].stress)
            TriggerServerEvent('boii-consumables:sv:AddMeta', Config.Consumables.Food[itemname].hunger, Config.Consumables.Food[itemname].thirst)
            if Config.Consumables.Food[itemname].shouldreturn then
                TriggerServerEvent('boii-consumables:sv:AddItem', Config.Consumables.Food[itemname].returnitem, 1)
            end
            if Config.Consumables.Food[itemname].risky then
                if (Config.Consumables.Food[itemname].sickchance >= math.random(1, 100)) then
                    ThrowUp(player, Config.Consumables.Food[itemname].removehealth, Config.Consumables.Food[itemname].stress)
                end
            end
	    	ClearPedTasks(player)			
        end, function() -- Cancel
            TriggerEvent('inventory:client:busy:status', false)
            TriggerEvent('boii-consumables:notify', Language.Shared['cancelled'], 'primary')
        end)
    end
end
--<!>-- EAT FOOD --<!>--

--<!>-- DRINK --<!>--
local function Drink(itemname)
    local player = PlayerPedId()
    if Config.Consumables.Drinks[itemname].dualprops then
        Core.Functions.Progressbar('consumables_drink', Config.Consumables.Drinks[itemname].bartext, Config.Consumables.Drinks[itemname].bartime*1000, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = false
        }, {
            animDict = Config.Consumables.Drinks[itemname].dict,
            anim = Config.Consumables.Drinks[itemname].animation,
            flags = Config.Consumables.Drinks[itemname].flags
        }, {
            model = Config.Consumables.Drinks[itemname].prop,
            bone = Config.Consumables.Drinks[itemname].bones,
            coords = Config.Consumables.Drinks[itemname].coord,
            rotation = Config.Consumables.Drinks[itemname].rotat
        }, {
            model = Config.Consumables.Drinks[itemname].prop2,
            bone = Config.Consumables.Drinks[itemname].bones2,
            coords = Config.Consumables.Drinks[itemname].coord2,
            rotation = Config.Consumables.Drinks[itemname].rotat2
        }, function()
            TriggerServerEvent('boii-consumables:sv:RemoveItem', itemname, 1)
            TriggerServerEvent(RemoveStress, Config.Consumables.Drinks[itemname].stress)
            TriggerServerEvent('boii-consumables:sv:AddMeta', Config.Consumables.Drinks[itemname].hunger, Config.Consumables.Drinks[itemname].thirst)
            if Config.Consumables.Drinks[itemname].shouldreturn then
                TriggerServerEvent('boii-consumables:sv:AddItem', Config.Consumables.Drinks[itemname].returnitem, 1)
            end
            if Config.Consumables.Drinks[itemname].risky then
                if (Config.Consumables.Drinks[itemname].sickchance >= math.random(1, 100)) then
                    ThrowUp(player, Config.Consumables.Drinks[itemname].removehealth, Config.Consumables.Drinks[itemname].stress)
                end
            end
			ClearPedTasks(player)	
        end, function() -- Cancel
            TriggerEvent('inventory:client:busy:status', false)
            TriggerEvent('boii-consumables:notify', Language.Shared['cancelled'], 'primary')
        end)
    else
        Core.Functions.Progressbar('consumables_drink', Config.Consumables.Drinks[itemname].bartext, Config.Consumables.Drinks[itemname].bartime*1000, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = false
        }, {
            animDict = Config.Consumables.Drinks[itemname].dict,
            anim = Config.Consumables.Drinks[itemname].animation,
            flags = Config.Consumables.Drinks[itemname].flags
        }, {
            model = Config.Consumables.Drinks[itemname].prop,
            bone = Config.Consumables.Drinks[itemname].bones,
            coords = Config.Consumables.Drinks[itemname].coord,
            rotation = Config.Consumables.Drinks[itemname].rotat
        }, {}, function()
            TriggerServerEvent('boii-consumables:sv:RemoveItem', itemname, 1)
            TriggerServerEvent(RemoveStress, Config.Consumables.Drinks[itemname].stress)
            TriggerServerEvent('boii-consumables:sv:AddMeta', Config.Consumables.Drinks[itemname].hunger, Config.Consumables.Drinks[itemname].thirst)
            if Config.Consumables.Drinks[itemname].shouldreturn then
                TriggerServerEvent('boii-consumables:sv:AddItem', Config.Consumables.Drinks[itemname].returnitem, 1)
            end
            if Config.Consumables.Drinks[itemname].risky then
                if (Config.Consumables.Drinks[itemname].sickchance >= math.random(1, 100)) then
                    ThrowUp(player, Config.Consumables.Drinks[itemname].removehealth, Config.Consumables.Drinks[itemname].stress)
                end
            end
			ClearPedTasks(player)	
        end, function() -- Cancel
            TriggerEvent('inventory:client:busy:status', false)
            TriggerEvent('boii-consumables:notify', Language.Shared['cancelled'], 'primary')
        end)
    end
end
--<!>-- DRINK --<!>--

--<!>-- ALCOHOL --<!>--
local function LightDrunk()
    local player = PlayerPedId()
    Wait(3000)
    DoScreenFadeOut(1000)
    Wait(1000)
    SetTimecycleModifier('spectator5')
    SetPedMotionBlur(player, true)
    SetPedMovementClipset(player, 'MOVE_M@DRUNK@SLIGHTLYDRUNK', true)
    SetPedIsDrunk(player, true)
    DoScreenFadeIn(1000)
    if IsPedRunning(player) then
        SetPedToRagdoll(player, math.random(1000, 2000), math.random(1000, 2000), 3, 0, 0, 0)
    end
    Wait(2000)
    if (60 >= math.random(1,100)) and IsPedRunning(player) then
        SetPedToRagdollWithFall(player, 2500, 4000, 1, GetEntityForwardVector(player), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    end            
    Wait(5*60000) -- 5 mins
    if IsPedRunning(player) then
        SetPedToRagdoll(player, math.random(1000, 2000), math.random(1000, 2000), 3, 0, 0, 0)
    end
    Wait(2000)
    if (30 >= math.random(1,100)) and IsPedRunning(player) then
        SetPedToRagdollWithFall(player, 1500, 3000, 1, GetEntityForwardVector(player), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    end
    DoScreenFadeOut(1000)
    Wait(1000)
    DoScreenFadeIn(1000)
    ClearTimecycleModifier()
    ResetScenarioTypesEnabled()
    ResetPedMovementClipset(player, 0)
    SetPedIsDrunk(player, false)
    SetPedMotionBlur(player, false)
end

local function HeavyDrunk()
    local player = PlayerPedId()
    if IsPedWalking(player) or IsPedRunning(player) then
        SetPedToRagdollWithFall(player, 2500, 4000, 1, GetEntityForwardVector(player), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    end
    Wait(5000)
    DoScreenFadeOut(1500)
    SetFlash(0, 0, 500, 7000, 500)
    ShakeGameplayCam('LARGE_EXPLOSION_SHAKE', 1.00)
    Wait(2000)
    SetTimecycleModifier('spectator5')
    SetPedMotionBlur(player, true)
    SetPedMovementClipset(player, 'MOVE_M@DRUNK@VERYDRUNK', true)
    SetPedIsDrunk(player, true)
    SetPedAccuracy(player, 0)
    SetFlash(0, 0, 500, 7000, 500)
    ShakeGameplayCam('DRUNK_SHAKE', 1.10)
    Wait(2000)
    DoScreenFadeIn(1800)
    if IsPedWalking(player) or IsPedRunning(player) then
        SetPedToRagdollWithFall(player, 2500, 4000, 1, GetEntityForwardVector(player), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
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
        SetPedToRagdollWithFall(player, 2500, 4000, 1, GetEntityForwardVector(player), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    end
    SetFlash(0, 0, 500, 7000, 500)
    ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 1.05)
    Wait(1000)
    ClearTimecycleModifier()
    ResetScenarioTypesEnabled()
    ResetPedMovementClipset(player, 0)
    SetPedIsDrunk(player, false)
    SetPedMotionBlur(player, false)
end

local function Alcohol(itemname)
    local player = PlayerPedId()
    if Config.Consumables.Alcohol[itemname].dualprops then
        Core.Functions.Progressbar('consumables_alcohol', Config.Consumables.Alcohol[itemname].bartext, Config.Consumables.Alcohol[itemname].bartime*1000, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = false
        }, {
            animDict = Config.Consumables.Alcohol[itemname].dict,
            anim = Config.Consumables.Alcohol[itemname].animation,
            flags = Config.Consumables.Alcohol[itemname].flags
        }, {
            model = Config.Consumables.Alcohol[itemname].prop,
            bone = Config.Consumables.Alcohol[itemname].bones,
            coords = Config.Consumables.Alcohol[itemname].coord,
            rotation = Config.Consumables.Alcohol[itemname].rotat
        }, {
            model = Config.Consumables.Alcohol[itemname].prop2,
            bone = Config.Consumables.Alcohol[itemname].bones2,
            coords = Config.Consumables.Alcohol[itemname].coord2,
            rotation = Config.Consumables.Alcohol[itemname].rotat2
        }, function()
            AlcoholCount = AlcoholCount + Config.Consumables.Alcohol[itemname].alcoholcount
            TriggerServerEvent('boii-consumables:sv:RemoveItem', itemname, 1)
            TriggerServerEvent(RemoveStress, Config.Consumables.Alcohol[itemname].stress)
            TriggerServerEvent('boii-consumables:sv:AddMeta', Config.Consumables.Alcohol[itemname].hunger, Config.Consumables.Alcohol[itemname].thirst)
            if Config.Consumables.Alcohol[itemname].shouldreturn then
                TriggerServerEvent('boii-consumables:sv:AddItem', Config.Consumables.Alcohol[itemname].returnitem, 1)
            end
            if AlcoholCount > 3 and AlcoholCount < 7 then -- Edit the amount of alcohol required to trigger drunk effects here
                LightDrunk()
            elseif AlcoholCount >= 7 then
                HeavyDrunk()
            end
            if (Config.Consumables.Alcohol[itemname].sickchance >= math.random(1, 100)) then
                ThrowUp(player, Config.Consumables.Alcohol[itemname].removehealth, Config.Consumables.Alcohol[itemname].stress)
            end
			ClearPedTasks(player)
        end, function() -- Cancel
            TriggerEvent('inventory:client:busy:status', false)
            TriggerEvent('boii-consumables:notify', Language.Shared['cancelled'], 'primary')
        end)
    else
        Core.Functions.Progressbar('consumables_alcohol', Config.Consumables.Alcohol[itemname].bartext, Config.Consumables.Alcohol[itemname].bartime*1000, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = false
        }, {
            animDict = Config.Consumables.Alcohol[itemname].dict,
            anim = Config.Consumables.Alcohol[itemname].animation,
            flags = Config.Consumables.Alcohol[itemname].flags
        }, {
            model = Config.Consumables.Alcohol[itemname].prop,
            bone = Config.Consumables.Alcohol[itemname].bones,
            coords = Config.Consumables.Alcohol[itemname].coord,
            rotation = Config.Consumables.Alcohol[itemname].rotat
        }, {}, function()
            AlcoholCount = AlcoholCount + Config.Consumables.Alcohol[itemname].alcoholcount
            TriggerServerEvent('boii-consumables:sv:RemoveItem', itemname, 1)
            TriggerServerEvent(RemoveStress, Config.Consumables.Alcohol[itemname].stress)
            TriggerServerEvent('boii-consumables:sv:AddMeta', Config.Consumables.Alcohol[itemname].hunger, Config.Consumables.Alcohol[itemname].thirst)
            if Config.Consumables.Alcohol[itemname].shouldreturn then
                TriggerServerEvent('boii-consumables:sv:AddItem', Config.Consumables.Alcohol[itemname].returnitem, 1)
            end
            if AlcoholCount > 3 and AlcoholCount < 7 then -- Edit the amount of alcohol required to trigger drunk effects here
                LightDrunk()
            elseif AlcoholCount >= 7 then
                HeavyDrunk()
            end
            if (Config.Consumables.Alcohol[itemname].sickchance >= math.random(1, 100)) then
                ThrowUp(player, Config.Consumables.Alcohol[itemname].removehealth, Config.Consumables.Alcohol[itemname].stress)
            end
			ClearPedTasks(player)
        end, function() -- Cancel
            TriggerEvent('inventory:client:busy:status', false)
            TriggerEvent('boii-consumables:notify', Language.Shared['cancelled'], 'primary')
        end)
    end
end
--<!>-- ALCOHOL --<!>--

--<!>-- EVENTS --<!>--
RegisterNetEvent('boii-consumables:cl:EatFood', function(itemname)
    EatFood(itemname)
end)

RegisterNetEvent('boii-consumables:cl:Drink', function(itemname)
    Drink(itemname)
end)

RegisterNetEvent('boii-consumables:cl:Alcohol', function(itemname)
    Alcohol(itemname)
end)
--<!>-- EVENTS --<!>--
