-- INITIALIZE
-----------------------------------------------------------------
if not ritnlib then require("__RitnLib__/defines") end
local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
local RitnProtoRecipe = require(ritnlib.defines.class.prototype.recipe)
local RitnProtoItem = require(ritnlib.defines.class.prototype.item)
local RitnProtoSubgroup = require(ritnlib.defines.class.prototype.subgroup)
-----------------------------------------------------------------
if not ritnmods then ritnmods = {} end
if not ritnmods.smith then ritnmods.smith = {
    LargerLamp = false,
    SantasNixieTube = false,
    bio = false
} end


--Change Ingredient
local repairPack = RitnProtoRecipe("repair-pack")
repairPack:removeIngredient("electronic-circuit")
repairPack:addIngredient({type="item", name="steel-plate", amount=3})

--Add Recipe Unlock
RitnProtoTech("steel-processing"):addRecipe("repair-pack")


--Require
require("prototypes.category")
require("prototypes.items")
----------------------------------------------
-- blueprint
RitnProtoItem("blueprint"):changeSubgroup("ritn-blueprint")
RitnProtoItem("deconstruction-planner"):changeSubgroup("ritn-blueprint")
RitnProtoItem("upgrade-planner"):changeSubgroup("ritn-blueprint")
RitnProtoItem("blueprint-book"):changeSubgroup("ritn-blueprint")
-- transport-belt
local belt = RitnProtoRecipe("transport-belt")
belt:addIngredient({type="item", name="ritn-belt-part", amount=2})
belt:removeIngredient("iron-plate"):removeIngredient("iron-gear-wheel")
RitnProtoRecipe("fast-transport-belt"):addIngredient({type="item", name="ritn-belt-part", amount=2})
RitnProtoRecipe("express-transport-belt"):addIngredient({type="item", name="ritn-belt-part", amount=2})
-- optics
RitnProtoTech("optics"):addRecipe("ritn-chassis-lamp")
-- small-lamp
RitnProtoRecipe("small-lamp"):addIngredient({type="item", name="ritn-chassis-lamp", amount=1})
RitnProtoRecipe("small-lamp"):removeIngredient("iron-plate")
-- rail-signal
RitnProtoRecipe("rail-signal"):addIngredient({type="item", name="ritn-chassis-lamp", amount=3})
RitnProtoRecipe("rail-signal"):removeIngredient("iron-plate")
-- rail-chain-signal
RitnProtoRecipe("rail-chain-signal"):addIngredient({type="item", name="ritn-chassis-lamp", amount=1})
RitnProtoRecipe("rail-chain-signal"):removeIngredient("iron-plate")
RitnProtoRecipe("rail-chain-signal"):addIngredient({type="item", name="iron-plate", amount=3})
-- burner-inserter
RitnProtoRecipe("burner-inserter"):addIngredient({type="item", name="ritn-inserter-part", amount=1})
RitnProtoRecipe("burner-inserter"):removeIngredient("iron-gear-wheel")
-- inserter
RitnProtoRecipe("inserter"):addIngredient({type="item", name="burner-inserter", amount=1})
RitnProtoRecipe("inserter"):removeIngredient("iron-gear-wheel"):removeIngredient("iron-plate")
----------------------------------------------


--Update Base (Vanilla)
-- change category
RitnProtoRecipe("copper-cable"):changePrototype("category", "ritn-smithing")
RitnProtoRecipe("iron-gear-wheel"):changePrototype("category", "ritn-smithing")
RitnProtoRecipe("iron-stick"):changePrototype("category", "ritn-smithing")
RitnProtoRecipe("empty-barrel"):changePrototype("category", "ritn-smithing")
RitnProtoRecipe("light-armor"):changePrototype("category", "ritn-smithing")
RitnProtoRecipe("heavy-armor"):changePrototype("category", "ritn-smithing")
RitnProtoRecipe("pipe"):changePrototype("category", "ritn-smithing")
RitnProtoRecipe("pipe-to-ground"):changePrototype("category", "ritn-smithing")
RitnProtoRecipe("repair-pack"):changePrototype("category", "ritn-smithing")
RitnProtoRecipe("heat-pipe"):changePrototype("category", "ritn-smithing")
RitnProtoRecipe("iron-chest"):changePrototype("category", "ritn-smithing")
RitnProtoRecipe("steel-chest"):changePrototype("category", "ritn-smithing")

-- change subgroup
RitnProtoRecipe("iron-chest"):changeSubgroup("smith-storage")
RitnProtoRecipe("steel-chest"):changeSubgroup("smith-storage")
RitnProtoRecipe("pipe"):changeSubgroup("smith-pipe")
RitnProtoRecipe("pipe-to-ground"):changeSubgroup("smith-pipe")
RitnProtoRecipe("heat-pipe"):changeSubgroup("smith-pipe")
RitnProtoRecipe("copper-cable"):changeSubgroup("ritn-smith")
RitnProtoRecipe("iron-gear-wheel"):changeSubgroup("ritn-smith")
RitnProtoRecipe("iron-stick"):changeSubgroup("ritn-smith")
RitnProtoRecipe("empty-barrel"):changeSubgroup("smith-products", "b-a-a")

-- change group
RitnProtoSubgroup("smelting-machine"):changeGroup("smith")
RitnProtoSubgroup("tool"):changeGroup("smith")


--Change Ingredient
RitnProtoRecipe("lab"):removeIngredient("transport-belt")
RitnProtoRecipe("lab"):addIngredient({type="item", name="ritn-inserter-part", amount=2})

----------------------------------------------------------------------------------------------
-- activation des options : 
if mods["DeadlockLargerLamp"] then  ritnmods.smith.LargerLamp = true end
if mods["SantasNixieTubeDisplay"] then  ritnmods.smith.SantasNixieTube = true end
if mods["Bio_Industries"] then ritnmods.smith.bio = true end


-- Compatibilité des mods

if ritnmods.smith.bio then 
    RitnProtoRecipe("bi-wood-pipe"):changeSubgroup("smith-pipe")
    RitnProtoRecipe("bi-wood-pipe-to-ground"):changeSubgroup("smith-pipe")
end


if ritnmods.smith.LargerLamp then 
    --Change recipe : large-lamp
    RitnProtoRecipe("deadlock-large-lamp"):addIngredient({type="item", name="ritn-chassis-lamp", amount=4})
    RitnProtoRecipe("deadlock-large-lamp"):removeIngredient("iron-plate")
    --Change recipe : floor-lamp
    RitnProtoRecipe("deadlock-floor-lamp"):addIngredient({type="item", name="ritn-chassis-lamp", amount=3})
    RitnProtoRecipe("deadlock-floor-lamp"):removeIngredient("iron-plate")
end

if ritnmods.smith.SantasNixieTube then 
    --Change recipe : Nixie Tube
    RitnProtoRecipe("SNTD-old-nixie-tube"):addIngredient({type="item", name="ritn-chassis-lamp", amount=1})
    RitnProtoRecipe("SNTD-old-nixie-tube"):removeIngredient("iron-plate")
end


-- Changement dans RitnLumberjack
if ritnmods.lumberjack then
    if ritnmods.lumberjack.enabled then
        --change ingredient : ritn-forge
        local forge = RitnProtoRecipe("ritn-forge")
        forge:removeIngredient("coal"):addIngredient({type="item", name="wood", amount=25})
        --add category : ritn-smithing // recipe : saw
        local saw = RitnProtoRecipe("saw")
        saw:changeSubgroup("ritn-smith", "a-a-a"):changePrototype("category", "ritn-smithing")
    end
end