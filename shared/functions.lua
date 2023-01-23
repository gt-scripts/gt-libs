ttc = ttc or {}
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
-------------------------------------------------------------------
-- [ NUMBER FUNCTIONS ]
-------------------------------------------------------------------
function ttc.inc(value, amount)
    if(amount == nil) then return value + 1 end
    return value + amount
end

function ttc.dec(value, amount)
    if(amount == nil) then return value - 1 end
    return value - amount
end
-------------------------------------------------------------------
-- [ TEXT FUNCTIONS ]
-------------------------------------------------------------------
function ttc.charWrap(text, wrapper)
    return string.format("%s%s%s", wrapper, text, wrapper)
end
function ttc.writeColumn(file, tabs, name, textToAppend)
    ttc.writeLn(file, tabs, string.format("['%s'] = %s", name, textToAppend))
end

function ttc.toString(o)
	if type(o) == 'table' then
		local s = '{ '
		for k, v in pairs(o) do
			if type(k) ~= 'number' then k = '"' .. k .. '"' end
			if s ~= '{ ' then s = s..','end
			s = s .. '[' .. k .. '] = ' .. dump(v)
		end
		return s .. ' }'
	else
		return tostring(o)
	end
end
-------------------------------------------------------------------
-- [ IO FUNCTIONS ]
-------------------------------------------------------------------
function ttc.removeFile(path, filename)
    os.remove(path..filename)
end

function ttc.openFile(path, filename, mode)
    local filemode = mode
    if mode == nil then filemode = "a" end
    return io.open(path..filename, filemode)
end

function ttc.closeFile(file)
    file:flush()
    file:close()
end

function ttc.writeLn(file, tabs, text)
    file:write(getTabs(tabs)..text.."\n")
end
-------------------------------------------------------------------
-- [ SYSTEM FUNCTIONS ]
-------------------------------------------------------------------
function ttc.isConsole(source)
    return source <= 0
end

return ttc
