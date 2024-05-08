GTCore = {}
GTCore.Shared = GTShared
GTCore.KeyHandler = KeyHandler

local Blips = {
    gps = {},
    map = {}
}

---Return blips table
---@param module string
---@param script string
---@return table
local function getBlips(module, script)
    return (Blips[module] or {})[script] or {}
end

---Set blips table
---@param module string
---@param script string
---@param blips table
local function setBlips(module, script, blips)
    if (not Blips[module]) then
        Blips[module] = {}
    end
    Blips[module][script] = blips
end

local function removeBlip(module, resource, blip)
    if not blip then
        return
    end

    TriggerEvent("Logs:Log", "TRACE", resource,
        string.format("Remover blip: ^3%d^7, de: ^3%s^7, módulo: %s", tonumber(blip), resource, module))

    local blips = getBlips(module, resource)

    if not blips then
        TriggerEvent("Logs:log", "ERROR", resource, string.format("Blips não encontrados para: ^3%s^7"), resource)
        return
    end

    local b = blips[blip]
    if (b) then
        TriggerEvent("Logs:Log", "TRACE", resource,
            string.format("Blip: ^3%d^7 encontrado, removendo...", tonumber(blip)))
        RemoveBlip(b)
    end
    blips[blip] = nil
    setBlips(module, resource, blips)
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
        string.format("Adicionando blip ^3%s^7 para module: ^3%s^7, resource: ^3%s^7, local: ^3%s^7", b, module,
            resource, GTCore.Shared.ToString(coordenadas)))
    return tonumber(b)
end

exports('GetCoreObject', function()
    return GTCore
end)
