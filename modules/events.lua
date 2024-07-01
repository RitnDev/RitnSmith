local table = require(ritnlib.defines.table)
local util = require(ritnlib.defines.other)


local function on_init_mod()
    log('RitnSmith -> on_init')

    local created_items
    pcall(function() created_items = remote.call("freeplay", "get_created_items") end)

    if table.isTable(created_items) then
        -- si RitnLumberjack est présent alors +1 "ritn-forge"
        local nbForge = util.ifElse(script.active_mods["RitnLumberjack"], 2, 1)
         
        created_items["ritn-forge"] = nbForge
        pcall(function() remote.call("freeplay", "set_created_items", created_items) end)
    else 
        log("created_items is't a table !")
    end

    log('on_init : RitnSmith -> finish !')
end


---------------------------------
local events = {}
---------------------------------
events.on_init = on_init_mod
events.on_load = on_init_mod
---------------------------------
log('RitnSmith -> events modules')
return events
---------------------------------