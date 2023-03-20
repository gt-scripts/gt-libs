fx_version 'cerulean'
game 'gta5'

description 'TTC Lua Library'
version '1.0.0'

shared_scripts {
    'shared/*.lua'
}

server_script {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua'
}

client_scripts {
    'client/*.lua'
}

lua54 'yes'
