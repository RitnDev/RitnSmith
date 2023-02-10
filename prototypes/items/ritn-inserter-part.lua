data:extend({

    --ritn-inserter-part
    {
        --item
        type = "item",
        name = "ritn-inserter-part",
        icon = "__RitnSmith__/graphics/icons/ritn-inserter-part.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "smith-products",
        order = "a-b-a",
        stack_size = 100
    },
    {
        --recipe
        type = "recipe",
        name = "ritn-inserter-part",
        energy_required = 0.5,
        enabled = true,
        category = "ritn-smithing",
        ingredients =
        {
            {type="item", name="iron-plate", amount=1},
            {type="item", name="iron-gear-wheel", amount=1},
        },
        result = "ritn-inserter-part",
        result_count = 1
    }
  
})

