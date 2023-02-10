data:extend({

    --ritn-forge
    {
        --item
        type = "item",
        name = "ritn-forge",
        icon = "__RitnSmith__/graphics/icons/ritn-forge.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "smelting-machine",
        order = "a[ritn-forge]-a[stone-furnace]",
        place_result = "ritn-forge",
        stack_size = 50
    },
    {
        --recipe
        type = "recipe",
        name = "ritn-forge",
        energy_required = 10,
        enabled = true,
        ingredients =
        {
            {type="item", name="stone-brick", amount=10},
            {type="item", name="iron-plate", amount=25},
            {type="item", name="copper-plate", amount=3},
            {type="item", name="stone", amount=5},
            {type="item", name="coal", amount=5},
        },
        result = "ritn-forge",
        result_count = 1
    }
   


})