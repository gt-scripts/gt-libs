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
        local s = '{ '
        for k, v in pairs(o) do
            if type(k) ~= 'number' then
                k = '"' .. k .. '"'
            end
            if s ~= '{ ' then
                s = s .. ','
            end
            s = s .. '[' .. k .. '] = ' .. toString(v)
        end
        return s .. ' }'
    else
        return tostring(o)
    end
end

function GTShared.Inc(value, amount)
    if (amount == nil) then
        return value + 1
    end
    return value + amount
end

function GTShared.Dec(value, amount)
    if (amount == nil) then
        return value - 1
    end
    return value - amount
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