function Armor:ReplaceArmorPlate(armor, plate)
    if not IsKindOf(armor, "Armor") or not IsKindOf(plate, "ArmorPlate") then return end
    local currentFrontPlate = armor.FontPlate
    local currentBackPlate = armor.BackPlate

    if plate.Type == "Front" then
        armor.FontPlate = plate
        if currentFrontPlate then
            local unit = g_Units[armor.owner]
            unit:AddItem("Inventory", currentFrontPlate)
        end
    elseif plate.Type == "Back" then
        armor.BackPlate = plate
        if currentFrontPlate then
            local unit = g_Units[armor.owner]
            unit:AddItem("Inventory", currentBackPlate)
        end
    end
end