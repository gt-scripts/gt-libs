GTCore = {}
GTCore.Shared = GTShared
GTCore.KeyHandler = KeyHandler

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

---Return blips table
---@param modulo string
---@param script string
---@return table
local function getBlips(modulo, script)
    local blips = {}
    if (Blips[modulo]) then
        blips = Blips[modulo][script]
        if (not blips) then
            blips = {}
        end
    end
    return blips
end

---Set blips table
---@param modulo string
---@param script string
---@param blips table
local function setBlips(modulo, script, blips)
    if (not Blips[modulo]) then
        Blips[modulo] = {}
    end
    Blips[modulo][script] = blips
end

local function removeBlip(module, resource, blip)
    if (blip) then
        TriggerEvent("Logs:Log", "TRACE", resource,
            string.format("Remover blip: ^3%d^7, de: ^3%s^7, módulo: %s", tonumber(blip), resource, module))
        local blips = getBlips(module, resource)
        if (blips) then
            local b = blips[blip]
            if (b) then
                TriggerEvent("Logs:Log", "TRACE", resource,
                    string.format("Blip: ^3%d^7 encontrado, removendo...", tonumber(blip)))
                RemoveBlip(b)
            end
            blips[blip] = nil
            setBlips(module, resource, blips)
        end
    end
end

function GTCore.DrawText(text, font, position, scale, color)
    SetTextFont(font)
    SetTextScale(scale, scale)
    SetTextColour(color.r, color.g, color.b, color.a)
    SetTextOutline()
    SetTextCentre(1)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(position.x, position.y)
end

function GTCore.Notify(text, status)
    local statusData = statusBank[status]
    if (statusData == nil) then
        statusData = statusBank["error"]
    end
    SetNotificationTextEntry("STRING")
    AddTextComponentString(string.format("%s%s", statusData.color, text))
    DrawNotification(false, false)
    PlaySoundFrontend(-1, statusData.sound, statusData.pack, false)
end

function GTCore.RemoveBlip(module, resource, blip)
    removeBlip(module, resource, blip)
end

function GTCore.CleanBlips(module, resource)
    TriggerEvent("Logs:Log", "TRACE", resource, "Limpando blips")
    SetThisScriptCanRemoveBlipsCreatedByAnyScript(true)
    local blips = getBlips(module, resource)
    for k, v in pairs(blips) do
        removeBlip(module, resource, v)
    end
end

function GTCore.AddBlip(module, resource, blip)
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
    local blips = getBlips(module, resource)
    blips[tonumber(b)] = b
    setBlips(module, resource, blips)
    TriggerEvent("Logs:Log", "TRACE", resource,
        string.format("Adicionando blip ^3%s^7 para modulo: ^3%s^7, resource: ^3%s^7, local: ^3%s^7", b, module,
            resource, GTCore.Shared.ToString(coordenadas)))
    return tonumber(b)
end

exports('GetCoreObject', function()
    return GTCore
end)
