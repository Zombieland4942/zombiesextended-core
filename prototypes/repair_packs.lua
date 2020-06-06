
data:extend({    
    {
        type = "repair-tool",
        name = "repair-pack-mk1",
        icon = "__darkstar-core__/graphics/icons/repair-pack-mk1.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "ds-tools",
        order = "a",
        speed = 4,
        durability = 600,
        stack_size = 100
    },
    {
        type = "repair-tool",
        name = "repair-pack-mk2",
        icon = "__darkstar-core__/graphics/icons/repair-pack-mk2.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "ds-tools",
        order = "b",
        speed = 8,
        durability = 1200,
        stack_size = 100
    },
    {
        type = "repair-tool",
        name = "repair-pack-mk3",
        icon = "__darkstar-core__/graphics/icons/repair-pack-mk3.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "ds-tools",
        order = "c",
        speed = 16,
        durability = 2400,
        stack_size = 100
    },
    {
        type = "recipe",
        name = "repair-pack-mk1",
        enabled = false,
        ingredients =
        {
            {"repair-pack", 2},
            {"gold-plate", 5},
        },
        result = "repair-pack-mk1"
    },    
    {
        type = "recipe",
        name = "repair-pack-mk2",
        enabled = false,
        ingredients =
        {
            {"repair-pack-mk1", 2},
            {"gold-plate", 10},
        },
        result = "repair-pack-mk2"
    },    
    {
        type = "recipe",
        name = "repair-pack-mk3",
        enabled = false,
        ingredients =
        {
            {"repair-pack-mk2", 2},
            {"gold-plate", 15},
        },
        result = "repair-pack-mk3"
    },
    {
        type = "technology",
        name = "repair-pack-mk1",
        icon_size = 128,
        icon = "__darkstar-core__/graphics/technology/repair-pack-mk1.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "repair-pack-mk1"
            }
        },
        unit =
        {
            count = 100,
            ingredients = {
                {"automation-science-pack",1},
                {"logistic-science-pack",1},
            },
            time = 30
        },
        prerequisites = {},
        order = "a-b-c"
    },
    {
        type = "technology",
        name = "repair-pack-mk2",
        icon_size = 128,
        icon = "__darkstar-core__/graphics/technology/repair-pack-mk2.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "repair-pack-mk2"
            }
        },
        unit =
        {
            count = 200,
            ingredients = {
                {"automation-science-pack",1},
                {"logistic-science-pack",1},
                {"chemical-science-pack",1},
            },
            time = 30
        },
        prerequisites = {"repair-pack-mk1"},
        order = "a-b-c"
    },
    {
        type = "technology",
        name = "repair-pack-mk3",
        icon_size = 128,
        icon = "__darkstar-core__/graphics/technology/repair-pack-mk3.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "repair-pack-mk3"
            }
        },
        unit =
        {
            count = 300,
            ingredients = {
                {"automation-science-pack",1},
                {"logistic-science-pack",1},
                {"chemical-science-pack",1},
                {"production-science-pack",1}
            },
            time = 30
        },
        prerequisites = {"repair-pack-mk2"},
        order = "a-b-c"
    }
})