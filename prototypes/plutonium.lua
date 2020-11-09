data:extend(
{
  {
    type = "recipe",
    name = "plutonium",
    enabled = true,
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
        { type="item", name = "plutonium", amount = 81 },
    },
    subgroup = "ds-raw-resource",
    category = "centrifuging"
  },
  {
    type = "item",
    name = "plutonium",
    icon = "__zombiesextended-core__/graphics/icons/plutonium.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "ds-raw-resource",
    order = "c",
    stack_size = 50
  }
}
)

table.insert(data.raw["module"]["productivity-module"].limitation, "plutonium")
table.insert(data.raw["module"]["productivity-module-2"].limitation, "plutonium")
table.insert(data.raw["module"]["productivity-module-3"].limitation, "plutonium")