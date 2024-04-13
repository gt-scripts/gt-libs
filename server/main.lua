GTCore = {}
GTCore.Shared = GTShared

local function writeLn(file, tabs, text)
    file:write(getTabs(tabs) .. text .. "\n")
end

function GTCore.WriteLn(file, tabs, text)
    writeLn(file, tabs, text)
end

function GTCore.WriteColumn(file, tabs, name, textToAppend)
    writeLn(file, tabs, string.format("['%s'] = %s", name, textToAppend))
end

function GTCore.RemoveFile(path, filename)
    os.remove(path .. filename)
end

function GTCore.OpenFile(path, filename, mode)
    local filemode = mode
    if mode == nil then
        filemode = "a"
    end
    return io.open(path .. filename, filemode)
end

function GTCore.CloseFile(file)
    file:flush()
    file:close()
end

function GTCore.Print(text)
    print(text)
end

exports('GetCoreObject', function()
    return GTCore
end)
