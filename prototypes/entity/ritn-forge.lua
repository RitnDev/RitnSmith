
data:extend({


{
    type = "assembling-machine",
    name = "ritn-forge",
    icon = "__RitnSmith__/graphics/icons/ritn-forge.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation", "not-rotatable"},
    minable = {mining_time = 2.0, result = "ritn-forge"},
    max_health = 500,
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    collision_box = {{-1.8, -2.0}, {2.0, 1.4}},
    selection_box = {{-1.9, -2.1}, {2.1, 1.9}},
    crafting_categories = {"ritn-smithing"},
    alert_icon_shift = util.by_pixel(35, -50),
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
    working_sound =
    {
      sound = { filename = "__base__/sound/furnace.ogg", }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 50
      },
      {
        type = "impact",
        percent = 30
      }
    },
    result_inventory_size = 1,
    energy_usage = "180kW",
    crafting_speed = 1,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 2,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 10,
          position = util.by_pixel(35, -90),
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    animation =
    {
      layers =
      {
        --Forge OFF 471px
        {
          filename = "__RitnSmith__/graphics/entity/ritn-forge/Off.png",
          width = 750,
          height = 750,
          shift = {0, -0.7},
          scale = 0.227
        },
        --Forge OFF 471px (Ombre)
        {
          filename = "__RitnSmith__/graphics/entity/ritn-forge/ForgeShadow.png",
          width = 1194,
          height = 750,
          shift = {1.6, 0},
          draw_as_shadow = true,
          scale = 0.227
        }
      }
    },
    working_visualisations =
    {
      {
        north_position = {0.0, 0.0},
        east_position = {0.0, 0.0},
        south_position = {0.0, 0.0},
        west_position = {0.0, 0.0},
        animation =
        {
          layers =
          {
            --Forge ON 471px
            {
              filename = "__RitnSmith__/graphics/entity/ritn-forge/On.png",
              width = 750,
              height = 750,
              shift = {0, -0.7},
              scale = 0.227
            },
            --Forge ON 471px (Ombre)
            {
              filename = "__RitnSmith__/graphics/entity/ritn-forge/ForgeShadow.png",
              width = 1194,
              height = 750,
              shift = {1.6, 0},
              draw_as_shadow = true,
              scale = 0.227
            }
          }
        },
      light = {intensity = 1, size = 2}
      }
    }
  }






})