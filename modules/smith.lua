
----------------------------------------------------------------

-- A la creation du joueur
local function on_player_created(e)
    RitnLibEvent(e):getPlayer():getForce():getRecipe("repair-pack"):setEnabled(false)
end


----------------------------------------------------------------
local module = { events = {} }
module.events[defines.events.on_player_created] = on_player_created
----------------------------------------------------------------
return module