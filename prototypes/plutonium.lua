local subgroup = "intermediate-product"

if settings.startup["zombies-use-seperate-tab"].value == true then
  subgroup  = "ds-raw-resource"
end


data:extend(
{
  {
    type = "recipe",
    name = "plutonium",
    enabled = false,
    energy_required = 240,
    icon = "__zombiesextended-core__/graphics/icons/kovarex-enrichment-process.png",
    icon_size = 64,
    ingredients =
    {
        {"plutonium", 80},
        {"uranium-235", 5}
    },
    results = 
    {
      { type="item", name = "uranium-235", amount = 2 },
      { type="item", name = "plutonium", amount = 81 },
    },    
    order = "r[uranium-processing]-d[plutonium-enrichment]",    
    subgroup = subgroup,
    category = "centrifuging"
  },
  {
    type = "item",
    name = "plutonium",
    icon = "__zombiesextended-core__/graphics/icons/plutonium.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = subgroup,
    order = "r[uranium-239]",
    stack_size = 50
  },
  {
    type = "technology",
    name = "plutonium-processing",
    icon = "__zombiesextended-core__/graphics/technology/plutonium-processing.png",
    icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "plutonium"
      }
    },
    unit =
    {
      count = 800,
      ingredients = {
        {"automation-science-pack",1},
        {"logistic-science-pack",1},
        {"chemical-science-pack",1},
        {"production-science-pack",1}
      },
      time = 60
    },
    prerequisites = {"kovarex-enrichment-process"},
    order = "a-b-c"
  }
}
)

table.insert(data.raw["module"]["productivity-module"].limitation, "plutonium")
table.insert(data.raw["module"]["productivity-module-2"].limitation, "plutonium")
table.insert(data.raw["module"]["productivity-module-3"].limitation, "plutonium")