local AMBIENT_RADIATION_MIN = require("__Cerys-Moon-of-Fulgora__/common").AMBIENT_RADIATION_MIN
local NITRIC_ACID_NAME = require("__Cerys-Moon-of-Fulgora__/common-data-only").NITRIC_ACID_NAME

data:extend({
  {
    type = "recipe",
    -- Our recipes name has to start with "cerys-" to not be banned
    name = "cerys-plutonium-filtering-mixed-oxide-filtering",
    energy_required = 1200,
    category = "fulgoran-cryogenics",
    subgroup = "plutonium-processing",
    order = "c-x",
    ingredients = {
      {type = "item", name = "depleted-mixed-oxide-fuel-cell", amount = 1},
      {type = "fluid", name = "mixed-oxide-waste-solution", amount = 100},
      {type = "fluid", name = NITRIC_ACID_NAME, amount = 100},
    },
    results = {
      {type = "item", name = "plutonium-238", amount = 1, probability = 0.9},
      {type = "item", name = "depleted-mixed-oxide-fuel-cell", amount = 1, probability = 0.05},
      {type = "fluid", name = "mixed-oxide-waste-solution", amount_min = 30, amount_max = 50},
      {type = "fluid", name = "steam", amount_min = 1800, amount_max = 2300, temperature = 150},
    },
    main_product = "",
    surface_conditions = {
      AMBIENT_RADIATION_MIN,
    },
    icons = {
      {
        icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/depleted-mixed-oxide-fuel-cell.png",
        icon_size = 64,
        draw_background = true,
        scale = 0.5,
        shift = {-16, -16}
      },
      {
        icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/nuclear-waste-solution-nitric.png",
        icon_size = 64,
        draw_background = true,
        scale = 0.5,
        shift = {16, -16}
      },
      {
        icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/nuclear-scrap.png",
        icon_size = 64,
        draw_background = true,
        scale = 0.4,
        shift = {-12, 8}
      },
      {
        icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/plutonium-238.png",
        icon_size = 64,
        draw_background = true,
        scale = 0.7,
        shift = {10, 10}
      },
      {
        icon = "__plutonium-filtering__/graphics/icons/reprocessing.png",
        icon_size = 200,
        draw_background = true,
        scale = 0.2
      },
    },
    icon_size = 64,
    allow_productivity = false,
    always_show_made_in = true,
    auto_recycle = false,
    enabled = false
  }
})
