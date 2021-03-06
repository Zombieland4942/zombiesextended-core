local resource_autoplace = require("resource-autoplace")

local ore_subgroup = "raw-resource"
local plate_subgroup = "raw-material"

if settings.startup["zombies-use-seperate-tab"].value == true then
  ore_subgroup  = "ds-raw-resource"
  plate_subgroup = "ds-intermediates"
end

data:extend(
{
  {
    type = "autoplace-control",
    name = "gold-ore",
    richness = true,
    order = "b-g",
    category = "resource"
  },
  {
    type = "recipe",
    name = "gold-plate",
    category = "smelting",
    energy_required = 3.2,
    ingredients = {{"gold-ore", 5}},
    result = "gold-plate"
  },
  {
    type = "item",
    name = "gold-ore",
    icon = "__zombiesextended-core__/graphics/icons/gold-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = ore_subgroup,
    order = "h1[gold-ore]",
    stack_size = 50
  },
  {
    type = "item",
    name = "gold-plate",
    icon = "__zombiesextended-core__/graphics/icons/gold-plate.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = plate_subgroup,
    order = "e-g[gold-plate]",
    stack_size = 100
  },
  {
    type = "resource",
    name = "gold-ore",
    icon = "__zombiesextended-core__/graphics/icons/gold-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral"},
    order="a-b-e",
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    walking_sound = {
      {
        filename = "__base__/sound/walking/resources/ore-01.ogg",
        volume = 0.4
      },
      {
        filename = "__base__/sound/walking/resources/ore-02.ogg",
        volume = 0.4
      },
      {
        filename = "__base__/sound/walking/resources/ore-03.ogg",
        volume = 0.4
      },
      {
        filename = "__base__/sound/walking/resources/ore-04.ogg",
        volume = 0.4
      },
      {
        filename = "__base__/sound/walking/resources/ore-05.ogg",
        volume = 0.4
      }
    },
    minable =
    {
      mining_particle = "stone-particle",
      mining_time = 1,
      result = "gold-ore"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "gold-ore",
      order = "d",
      base_density = 0.9,
      base_spots_per_km2 = 1.25,
      has_starting_area_placement = true,
      random_spot_size_minimum = 2,
      random_spot_size_maximum = 4,
      regular_rq_factor_multiplier = 1
    },
    stage_counts = {10000, 6330, 3670, 1930, 870, 270, 100, 50},
    stages =
    {
      sheet =
      {
        filename = "__zombiesextended-core__/graphics/entity/gold-ore.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version =
        {
          filename = "__zombiesextended-core__/graphics/entity/hr-gold-ore.png",
          priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5
        }
      }
    },
    effect_animation_period = 5,
    effect_animation_period_deviation = 1,
    effect_darkness_multiplier = 3.6,
    min_effect_alpha = 0.2,
    max_effect_alpha = 0.3,
    map_color = {255, 215, 0}
  }
}
)

table.insert(data.raw["module"]["productivity-module"].limitation, "gold-plate")
table.insert(data.raw["module"]["productivity-module-2"].limitation, "gold-plate")
table.insert(data.raw["module"]["productivity-module-3"].limitation, "gold-plate")