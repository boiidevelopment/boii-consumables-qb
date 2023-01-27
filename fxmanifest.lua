----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

fx_version 'cerulean'

game 'gta5'

author 'case#1993'

description 'BOII | Development - Utility: Consumables'

version '2.0.3'

lua54 'yes'

shared_scripts {
    'config.lua',
}
client_scripts{
    'client/*'
}
server_scripts {
    'server/*'
}
escrow_ignore {
    'config.lua',
    'server/*',
    'client/*'
}
