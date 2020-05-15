-- TODO Make new Graphics

data:extend(
{
  {
    type = "autoplace-control",
    name = "lead-ore",
    richness = true,
    order = "b-h",
    category = "resource"
  },
  {
    type = "item",
    name = "lead-ore",
    icon = "__darkstar-core__/graphics/icons/lead-ore.png",
    icon_size = 32,
    subgroup = "raw-resource",
    order = "e[lead-ore]",
    stack_size = 50
  },
  {
    type = "resource",
    name = "lead-ore",
    icon = "__darkstar-core__/graphics/icons/lead-ore.png",
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
      result = "lead-ore"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "lead-ore",
      order = "b",
      base_density = 8,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 1.2,
      candidate_spot_count = 22
    },
    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages =
    {
      sheet =
      {
        filename = "__darkstar-core__/graphics/entity/lead-ore.png",
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
    map_color = {34, 33, 39}
  }
}
)