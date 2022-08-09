----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

fx_version 'cerulean'

game 'gta5'

author 'CASE#1993'

description 'BOII | Development - Consumables Script'

version '1.0'

lua54 'yes'

shared_scripts {
    'config.lua',
}

client_scripts {
    'client/*.lua',
}

server_scripts {
    'server/*.lua',
}
escrow_ignore {
	'server/consumables_s.lua',
	'client/consumables_c.lua',
	'config.lua'
}