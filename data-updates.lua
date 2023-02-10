-- INITIALIZE
-----------------------------------------------------------------
local RitnProtoRecipe = require(ritnlib.defines.class.prototype.recipe)
-----------------------------------------------------------------

if ritnmods.electronic == nil then
    -- Change ingredients : Foreuse électrique
    local mining = RitnProtoRecipe("electric-mining-drill")
    mining:setIngredient({type="item", name="iron-gear-wheel", amount=1})
    mining:setIngredient({type="item", name="iron-plate", amount=2})
    mining:addIngredient({type="item", name="ritn-mining-drill-part", amount=2})

    if ritnmods.glass then
        RitnProtoRecipe("ritn-electric-mining-drill"):addIngredient({type="item", name="electronic-circuit", amount=3})
    end
end


---
-- Compatibilité avec d'autres mods :
---

if mods["FactorioLogo"] then 
    RitnProtoRecipe("factorio-logo-0"):changeSubgroup("ritn-smith", "z[factorio-logo-0]-z")
    RitnProtoRecipe("factorio-logo-1"):changeSubgroup("ritn-smith", "z[factorio-logo-1]-z")
    RitnProtoRecipe("factorio-logo-2"):changeSubgroup("ritn-smith", "z[factorio-logo-2]-z")
    RitnProtoRecipe("factorio-logo-3"):changeSubgroup("ritn-smith", "z[factorio-logo-3]-z")
    RitnProtoRecipe("factorio-logo-4"):changeSubgroup("ritn-smith", "z[factorio-logo-4]-z")
    RitnProtoRecipe("factorio-logo-5"):changeSubgroup("ritn-smith", "z[factorio-logo-5]-z")
    RitnProtoRecipe("factorio-logo-6"):changeSubgroup("ritn-smith", "z[factorio-logo-6]-z")
end
