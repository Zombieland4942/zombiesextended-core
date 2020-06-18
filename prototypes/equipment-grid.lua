
equipment_grid = {
    { name = "xl-equipment-grid", width = 15, height = 15 },
    { name = "xxl-equipment-grid", width = 20, height = 20 },
    { name = "xxxl-equipment-grid", width = 25, height = 25 }
}

for x,grid in pairs(equipment_grid) do
    data:extend(
        {
            {
                type = "equipment-grid",
                name = grid.name,
                width = grid.width,
                height = grid.height,
                equipment_categories = {"armor"}
            }
        }
    )
end
