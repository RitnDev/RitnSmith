--
-- Dans controle.lua (boucle de jeu)
--
require("__RitnLib__/defines")

-- gvv
if script.active_mods["gvv"] then require(ritnlib.defines.gvv)() end
-- Chargement de l'event listener :
local event_listener = require(ritnlib.defines.event)
-- Chargement des modules :
local modules = {}
modules.smith =  require("modules/smith")

-- envoie des modules à l'event listener :
event_listener.add_libraries(modules)
