data:extend({

    --ritn-inserter-part
    {
        --item
        type = "item",
        name = "ritn-mining-drill-part",
        icon = "__RitnSmith__/graphics/icons/ritn-mining-drill-part.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "smith-products",
        order = "a-c-a",
        stack_size = 100
    },
    {
        --recipe
        type = "recipe",
        name = "ritn-mining-drill-part",
        energy_required = 1,
        enabled = true,
        category = "ritn-smithing",
        ingredients =
        {
            {type="item", name="iron-plate", amount=4},
            {type="item", name="iron-gear-wheel", amount=2},
        },
        result = "ritn-mining-drill-part",
        result_count = 1
    }
  
})

