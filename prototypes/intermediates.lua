-- Complex Processing Unit

data:extend({
  {
    type = "item",
    name = "complex-processing-unit",
    icon = "__zombiesextended-core__/graphics/icons/complex-processing-unit.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "ds-intermediates",
    order = "a",
    stack_size = 200
  },
  {
    type = "recipe",
    name = "complex-processing-unit",
    enabled = false,
    ingredients =
    {
      {"processing-unit", 1},
      {"advanced-circuit", 2},
      {"gold-plate", 1},
    },
    result = "complex-processing-unit"
  },
  {
    type = "technology",
    name = "complex-processing-unit",
    icon_size = 128,
    icon = "__zombiesextended-core__/graphics/technology/complex-processing-unit.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "complex-processing-unit"
      }
    },
    unit =
    {
      count = 600,
      ingredients = {
        {"automation-science-pack",1},
        {"logistic-science-pack",1},
        {"chemical-science-pack",1},
        {"production-science-pack",1}
      },
      time = 30
    },
    prerequisites = {"advanced-electronics-2"},
    order = "a-b-c"
  }
})