data:extend({

    --ritn-belt-part
    {
        --item
        type = "item",
        name = "ritn-belt-part",
        icon = "__RitnSmith__/graphics/icons/ritn-belt-part.png",
        icon_size = 64, icon_mipmaps = 3,
        subgroup = "smith-products",
        order = "a-a-b",
        stack_size = 100
    },
    {
        --recipe
        type = "recipe",
        name = "ritn-belt-part",
        energy_required = 0.5,
        enabled = true,
        category = "ritn-smithing",
        ingredients =
        {
            {type="item", name="iron-gear-wheel", amount=1},
            {type="item", name="iron-plate", amount=1},
        },
        result = "ritn-belt-part",
        result_count = 2
    }

})

