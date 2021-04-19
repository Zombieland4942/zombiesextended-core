if mods["SchallAlienLoot"] then
local CT_ore = settings.startup["alienloot-crafting-time-ore-morphing"].value
local products_specs = {
["gold-ore"] = {
orderidx = "l-a",
icon = "__zombiesextended-core__/graphics/icons/gold-ore.png",
energy_required = CT_ore,
enabled = true,
recipes = {
{ ingredient = "alien-ore-1", amt_in = 2, amt_out = 1, penalty = {name_min = "alien-ore-2" } },
{ ingredient = "alien-ore-2", amt_in = 1, amt_out = 1 },
{ ingredient = "alien-ore-3", amt_in = 1, amt_out = 1},
{ ingredient = "alien-artifact", amt_in = 1, amt_out = 5 },
},
},
["vibranium-ore"] = {
orderidx = "l-a",
icon = "__zombiesextended-core__/graphics/icons/vibranium-ore.png",
energy_required = CT_ore,
enabled = true,
recipes = {
{ ingredient = "alien-ore-2", amt_in = 4, amt_out = 1, penalty = {name_min = "alien-artifact" } },
{ ingredient = "alien-ore-3", amt_in = 1, amt_out = 1, penalty = {name_min = "alien-artifact" } },
{ ingredient = "alien-artifact", amt_in = 1, amt_out = 5 },
},
},
}
for name, spec in pairs(products_specs) do
SchallAlienLoot_add_morph_recipes(name, spec)
end
end

