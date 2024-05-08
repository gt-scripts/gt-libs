GTShared = GTShared or {}

local function getTabs(tabs)
    local tabText = ""
    for i = 0, tabs - 1, 1 do
        tabText = tabText .. "\t"
    end
    return tabText
end

local function toString(o)
    if type(o) == 'table' then
        local parts = {}
        for k, v in pairs(o) do
            local key = type(k) == 'number' and '[' .. k .. ']' or '["' .. tostring(k) .. '"]'
            parts[#parts + 1] = key .. ' = ' .. toString(v)
        end
        return '{ ' .. table.concat(parts, ', ') .. ' }'
    else
        return tostring(o)
    end
end

function GTShared.Inc(value, amount)
    return value + (amount or 1)
end

function GTShared.Dec(value, amount)
    return value - (amount or 1)
end

function GTShared.CharWrap(text, wrapper)
    return string.format("%s%s%s", wrapper, text, wrapper)
end

function GTShared.ToString(o)
    return toString(o)
end

function GTShared.IsConsole(source)
    return source <= 0
end
