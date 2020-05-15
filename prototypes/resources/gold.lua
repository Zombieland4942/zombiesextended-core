-- TODO Make new Graphics

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
    ingredients = {{"gold-ore", 1}},
    result = "gold-plate"
  },
  {
    type = "item",
    name = "gold-ore",
    icon = "__darkstar-core__/graphics/icons/gold-ore.png",
    icon_size = 32,
    subgroup = "ds-raw-resource",
    order = "e[gold-ore]",
    stack_size = 50
  },
  {
    type = "item",
    name = "gold-plate",
    icon = "__darkstar-core__/graphics/icons/gold-plate.png",
    icon_size = 32,
    subgroup = "ds-raw-material",
    order = "d[gold-plate]",
    stack_size = 100
  },
  {
    type = "resource",
    name = "gold-ore",
    icon = "__darkstar-core__/graphics/icons/gold-ore.png",
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
      result = "gold-ore"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "gold-ore",
      order = "b",
      base_density = 0.9,
      base_spots_per_km2 = 1.25,
      has_starting_area_placement = false,
      random_spot_size_minimum = 2,
      random_spot_size_maximum = 4,
      regular_rq_factor_multiplier = 1
    },
    stage_counts = {10000, 6330, 3670, 1930, 870, 270, 100, 50},
    stages =
    {
      sheet =
      {
        filename = "__darkstar-core__/graphics/entity/gold-ore.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 8,
        variation_count = 8
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