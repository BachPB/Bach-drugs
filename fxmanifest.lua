fx_version      'cerulean'
game            'gta5'
description     'AFK Drugs typeshit'
author          'BACH'
lua54 			'yes'

shared_scripts({
	"config.lua",
	"@ox_lib/init.lua",
})

client_scripts({
	"@PolyZone/client.lua",
	"@PolyZone/BoxZone.lua",
	"@PolyZone/EntityZone.lua",
	"@PolyZone/CircleZone.lua",
	"@PolyZone/ComboZone.lua",
	"client/*",
})

server_scripts({
	"@PolyZone/client.lua",
	"server/*",
})

files({
	"locales/*.json",
})
