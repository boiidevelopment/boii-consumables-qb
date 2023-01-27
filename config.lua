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
