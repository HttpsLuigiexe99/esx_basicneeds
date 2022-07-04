fx_version 'adamant'

AUTHOR 'Luigi.exe#1984'

game 'gta5'

description 'ESX Basic Needs'

version '1.2.2'

server_scripts {
    '@es_extended/locale.lua',
    'locales/en.lua',
    'config.lua',
    'server/main.lua'
}

client_scripts {
    '@es_extended/locale.lua',
    'locales/en.lua',
    'config.lua',
    'client/main.lua'
}

dependencies {
    'es_extended',                 
    'esx_status'
}
