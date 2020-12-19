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
    name = "vibranium-ore",
    richness = true,
    order = "b-h",
    category = "resource"
  },  
  {
    type = "recipe",
    name = "vibranium-plate",
    category = "smelting",
    energy_required = 12.8,
    ingredients = {{"vibranium-ore", 20}},
    result = "vibranium-plate"
  },
  {
    type = "item",
    name = "vibranium-ore",
    icon = "__zombiesextended-core__/graphics/icons/vibranium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = ore_subgroup,
    order = "h2[vibranium-ore]",
    stack_size = 50
  },  
  {
    type = "item",
    name = "vibranium-plate",
    icon = "__zombiesextended-core__/graphics/icons/vibranium-plate.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = plate_subgroup,
    order = "e-v[vibranium-plate]",
    stack_size = 100
  },
  {
    type = "resource",
    name = "vibranium-ore",
    icon = "__zombiesextended-core__/graphics/icons/vibranium-ore.png",
    icon_size = 32,
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
      result = "vibranium-ore"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "vibranium-ore",
      order = "d",
      base_density = 0.9,
      base_spots_per_km2 = 1.25,
      has_starting_area_placement = false,
      random_spot_size_minimum = 2,
      random_spot_size_maximum = 4,
      regular_rq_factor_multiplier = 1
    },
    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages =
    {
      sheet = 
      {
        filename = "__zombiesextended-core__/graphics/entity/vibranium-ore.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version =
        {
          filename = "__zombiesextended-core__/graphics/entity/hr-vibranium-ore.png",
          priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5
        }
      }
    },
    stages_effect =
    {
      sheet =
      {
        filename = "__zombiesextended-core__/graphics/entity/vibranium-ore-glow.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 8,
        variation_count = 8,
        blend_mode = "additive",
        flags = {"light"},
        hr_version =
        {
          filename = "__zombiesextended-core__/graphics/entity/hr-vibranium-ore-glow.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5,
          blend_mode = "additive",
          flags = {"light"}
        }
      }
    },
    effect_animation_period = 5,
    effect_animation_period_deviation = 1,
    effect_darkness_multiplier = 3.6,
    min_effect_alpha = 0.2,
    max_effect_alpha = 0.9,
    map_color = {0, 39, 100}
  }
}
)

table.insert(data.raw["module"]["productivity-module"].limitation, "vibranium-plate")
table.insert(data.raw["module"]["productivity-module-2"].limitation, "vibranium-plate")
table.insert(data.raw["module"]["productivity-module-3"].limitation, "vibranium-plate")