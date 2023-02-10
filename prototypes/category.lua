local RitnProtoGroup = require(ritnlib.defines.class.prototype.group)
local RitnProtoSubgroup = require(ritnlib.defines.class.prototype.subgroup)
local RitnProtoCategory = require(ritnlib.defines.class.prototype.category)


--ITEM GROUP
RitnProtoGroup:extend("smith", "a-c", 
  "__RitnSmith__/graphics/item-group/smith.png", 385
)

--ITEM SUBGROUP
RitnProtoSubgroup:extend("smith-storage", "smith", "a-a")
RitnProtoSubgroup:extend("smith-pipe", "smith", "a-b")
RitnProtoSubgroup:extend("ritn-smith", "smith", "d-d")
RitnProtoSubgroup:extend("smith-products", "smith", "d-e")
RitnProtoSubgroup:extend("ritn-blueprint", "intermediate-products", "aa")

--RECIPE CATEGORY
RitnProtoCategory:extend("ritn-smithing", "a-a-a")
