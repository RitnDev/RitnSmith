local RitnEvent = require(ritnlib.defines.class.luaClass.event)
----------------------------------------------------------------

-- A la creation du joueur
local function on_player_created(e)
    RitnEvent(e):getPlayer():getForce():getRecipe("repair-pack"):setEnabled(false)
end


----------------------------------------------------------------
local module = { events = {} }
module.events[defines.events.on_player_created] = on_player_created
----------------------------------------------------------------
return module