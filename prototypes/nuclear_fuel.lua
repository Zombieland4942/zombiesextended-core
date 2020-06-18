local science_t4 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1},{"production-science-pack",1}}
local science_t5 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1},{"production-science-pack",1},{"utility-science-pack",1}}
local science_t6 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1},{"production-science-pack",1},{"utility-science-pack",1},{"space-science-pack",1}}

technology_1 = {
    name = "nuclear-fuel-mk1", level = science_t4, cost = 1500, prereq = { "kovarex-enrichment-process" }
}

technology_2 = {
    name = "nuclear-fuel-mk2", level = science_t5, cost = 2000, prereq = {"nuclear-fuel-mk1"}
}

technology_3 = {
    name = "nuclear-fuel-mk3", level = science_t6, cost = 3000, prereq = {"nuclear-fuel-mk2"}
}

nuclear_fuel_items = {
    { order = "f-a", name = "nuclear-fuel-mk1", fuel_value = "2.42GJ", fuel_acceleration_multiplier = 3, fuel_top_speed_multiplier = 2, ingredients = { {"nuclear-fuel", 2},{"vibranium-plate", 5} }, technology = technology_1 },
    { order = "f-b", name = "nuclear-fuel-mk2", fuel_value = "4.84GJ", fuel_acceleration_multiplier = 4, fuel_top_speed_multiplier = 3, ingredients = { {"nuclear-fuel-mk1", 2},{"vibranium-plate", 5} }, technology = technology_2 },
    { order = "f-c", name = "nuclear-fuel-mk3", fuel_value = "9.68GJ", fuel_acceleration_multiplier = 5, fuel_top_speed_multiplier = 4, ingredients = { {"nuclear-fuel-mk2", 2},{"vibranium-plate", 5} }, technology = technology_3 },
}

local fuel_base = util.table.deepcopy(data.raw["item"]["nuclear-fuel"])

for x, nuclear_fuel in pairs(nuclear_fuel_items) do
    
    item = util.table.deepcopy(fuel_base)

    item.name = nuclear_fuel.name
    item.icon = "__darkstar-core__/graphics/icons/" .. nuclear_fuel.name .. ".png"    
    item.order = nuclear_fuel.order
    item.subgroup = "ds-fuel"
    item.fuel_value = nuclear_fuel.fuel_value
    item.fuel_acceleration_multiplier = nuclear_fuel.fuel_acceleration_multiplier
    item.fuel_top_speed_multiplier = nuclear_fuel.fuel_top_speed_multiplier

    data:extend({ item,
    {
        type = "recipe",
        name = nuclear_fuel.name,
        enabled = true,
        ingredients = nuclear_fuel.ingredients,
        result = nuclear_fuel.name
    },
    {
        type = "technology",
        name = nuclear_fuel.technology.name,
        icon_size = 128,
        icon = "__darkstar-core__/graphics/technology/" .. nuclear_fuel.technology.name .. ".png",
        effects = {
            { type = "unlock-recipe", recipe = nuclear_fuel.name }
        },
        unit =
        {
            count = nuclear_fuel.technology.cost,
            ingredients = nuclear_fuel.technology.level,
            time = 60
        },
        prerequisites = nuclear_fuel.technology.prereq,
        order = "a"
    }})
end