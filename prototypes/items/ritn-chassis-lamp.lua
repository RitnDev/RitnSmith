data:extend({

    --ritn-chassis-lamp
    {
        --item
        type = "item",
        name = "ritn-chassis-lamp",
        icon = "__RitnSmith__/graphics/icons/ritn-chassis-lamp.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "smith-products",
        order = "a-d-a",
        stack_size = 100
    },
    {
        --recipe
        type = "recipe",
        name = "ritn-chassis-lamp",
        energy_required = 1,
        enabled = false,
        category = "ritn-smithing",
        ingredients =
        {
            {type="item", name="iron-plate", amount=2},
        },
        result = "ritn-chassis-lamp",
        result_count = 1
    }

})

