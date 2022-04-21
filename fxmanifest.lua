fx_version 'cerulean'
game 'gta5'

description 'qb-trashsearch'
version '1.0.0'
author 'IngPleb'

shared_scripts { 'config.lua', '@qb-core/shared/locale.lua', 
'locales/en.lua' -- Change here to your desired language
}
server_script 'server/server.lua'
client_scripts { 'client/client.lua' }

lua54 'yes'
