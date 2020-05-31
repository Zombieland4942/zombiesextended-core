-- Complex Processing Unit

data:extend({
  {
    type = "item",
    name = "complex-processing-unit",
    icon = "__darkstar-core__/graphics/icons/complex-processing-unit.png",
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
})

-- Advanced Flying Robot Frame
