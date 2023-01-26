ttc = {
    client = {},
    shared = {},
    server = {}
}

local Blips = {
    gps = {},
    map = {}
}

local statusBank = {
    ['info'] = {
        color = "~b~",
        sound = "5_Second_Timer",
        pack = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
    },
    ['alert'] = {
        color = "~y~",
        sound = "CONFIRM_BEEP",
        pack = "HUD_MINI_GAME_SOUNDSET"
    },
    ['error'] = {
        color = "~r~",
        sound = "5_Second_Timer",
        pack = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
    },
    ['success'] = {
        color = "~g~",
        sound = "Hack_Success",
        pack = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
    }
}
-------------------------------------------------------------------
-- [ LOCAL FUNCTIONS ]
-------------------------------------------------------------------
local function getTabs(tabs)
    local tabText = ""
    for i=0, tabs-1 , 1 do
        tabText = tabText.."\t"
    end
    return tabText
end

local function getBlips(modulo, script)
    local blips = {}
    if(Blips[modulo]) then
        blips = Blips[modulo][script]
        if(not blips) then blips = {} end
    end
    return blips
end

local function setBlips(modulo, script, blips)
    if(not Blips[modulo]) then
        Blips[modulo] = {}
    end
    Blips[modulo][script] = blips
end
-------------------------------------------------------------------
-- [ SERVER ONLY FUNCTIONS ]
-------------------------------------------------------------------
function ttc.server.writeColumn(file, tabs, name, textToAppend)
    ttc.server.writeLn(file, tabs, string.format("['%s'] = %s", name, textToAppend))
end

function ttc.server.removeFile(path, filename)
    os.remove(path..filename)
end

function ttc.server.openFile(path, filename, mode)
    local filemode = mode
    if mode == nil then filemode = "a" end
    return io.open(path..filename, filemode)
end

function ttc.server.closeFile(file)
    file:flush()
    file:close()
end

function ttc.server.writeLn(file, tabs, text)
    file:write(getTabs(tabs)..text.."\n")
end
-------------------------------------------------------------------
-- [ SHARED FUNCTIONS ]
-------------------------------------------------------------------
function ttc.shared.inc(value, amount)
    if(amount == nil) then return value + 1 end
    return value + amount
end

function ttc.shared.dec(value, amount)
    if(amount == nil) then return value - 1 end
    return value - amount
end

function ttc.shared.charWrap(text, wrapper)
    return string.format("%s%s%s", wrapper, text, wrapper)
end

function ttc.shared.toString(o)
	if type(o) == 'table' then
		local s = '{ '
		for k, v in pairs(o) do
			if type(k) ~= 'number' then k = '"' .. k .. '"' end
			if s ~= '{ ' then s = s..','end
			s = s .. '[' .. k .. '] = ' .. ttc.shared.toString(v)
		end
		return s .. ' }'
	else
		return tostring(o)
	end
end

function ttc.shared.isConsole(source)
    return source <= 0
end
-------------------------------------------------------------------
-- [ CLIENT ONLY FUNCTIONS ]
-------------------------------------------------------------------
function ttc.client.drawTxt(text, font, position, scale, color)
    SetTextFont(font)
    SetTextScale(scale, scale)
    SetTextColour(color.r, color.g, color.b, color.a)
    SetTextOutline()
    SetTextCentre(1)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(position.x, position.y)
end

function ttc.client.notify(text, status)
    local statusData = statusBank[status]
    if(statusData == nil) then statusData = statusBank["error"]
	end
	SetNotificationTextEntry("STRING")
	AddTextComponentString(string.format("%s%s", statusData.color, text))
    DrawNotification(false, false)
	PlaySoundFrontend(-1, statusData.sound, statusData.pack, false)
end

function ttc.client.removeBlip(modulo, resource, blip)
    if(blip) then
        TriggerEvent("Logs:Log", "TRACE", resource, string.format("Remover blip: ^3%d^7, de: ^3%s^7, módulo: %s", parseInt(blip), resource, modulo))
        local blips = getBlips(modulo, resource)
        if(blips) then
            local b = blips[blip]
            if(b) then
                TriggerEvent("Logs:Log", "TRACE", resource, string.format("Blip: ^3%d^7 encontrado, removendo...", parseInt(blip)))
                RemoveBlip(b)
            end
            blips[blip] = nil
            setBlips(modulo, resource, blips)
        end
    end
end

function ttc.client.cleanBlips(modulo, resource)
    TriggerEvent("Logs:Log", "TRACE", resource, "Limpando blips")
    SetThisScriptCanRemoveBlipsCreatedByAnyScript(true)
    local blips = getBlips(modulo, resource)
    for k,v in pairs(blips) do
        ttc.client.removeBlip(modulo, resource, v)
    end
end

function ttc.client.addBlip(modulo, resource, blip)
    local coordenadas = blip.coordenadas
	local b = AddBlipForCoord(coordenadas.x, coordenadas.y, coordenadas.z)
	SetBlipSprite(b, blip.sprite)
	SetBlipColour(b, blip.color)
	SetBlipScale(b, blip.scale)
	SetBlipAsShortRange(b, blip.shortRange)
	SetBlipRoute(b, blip.route)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(blip.text)
	EndTextCommandSetBlipName(b)
    local blips = getBlips(modulo, resource)
    blips[tonumber(b)] = b
    setBlips(modulo, resource, blips)
    TriggerEvent("Logs:Log", "TRACE", resource, string.format("Adicionando blip ^3%s^7 para modulo: ^3%s^7, resource: ^3%s^7, local: ^3%s^7", b, modulo, resource, ttc.shared.toString(coordenadas)))
    return tonumber(b)
end

return ttc