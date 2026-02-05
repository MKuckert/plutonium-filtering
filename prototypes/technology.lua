data:extend({
  {
    type = "technology",
    name = "plutonium-filtering-mixed-oxide-filtering",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "cerys-plutonium-filtering-mixed-oxide-filtering"
      }
    },
    prerequisites = {
        "cerys-mixed-oxide-waste-reprocessing",
        "cerys-applications-of-radioactivity"
    },
    icons = {
      {
        icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/depleted-mixed-oxide-fuel-cell.png",
        icon_size = 64,
        shift = {-48, -48}
      },
      {
        icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/nuclear-waste-solution-nitric.png",
        icon_size = 64,
        shift = {48, -32}
      },
      {
        icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/plutonium-238.png",
        icon_size = 64,
        shift = {32, 64}
      },
      {
        icon = "__plutonium-filtering__/graphics/icons/reprocessing.png",
        icon_size = 64
      },
    },
    icon_size = 256,
    unit = {
      count = 2000,
      ingredients = {
        {"cerysian-science-pack", 1},
        {"logistic-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
		order = "z-a"
  }
})