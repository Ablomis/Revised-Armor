function Armor:ReplaceArmorPlate(plate, armor)
    if not IsKindOf(armor, "Armor") or not IsKindOf(plate, "ArmorPlate") then return end
    local currentFrontPlate = armor.FrontPlate
    local currentBackPlate = armor.BackPlate

    if plate.Type == "Front" then
        armor.FrontPlate = plate
        if currentFrontPlate then
            local unit = g_Units[armor.owner]
            unit:AddItem("Inventory", currentFrontPlate)
        end
    elseif plate.Type == "Back" then
        armor.BackPlate = plate
        if currentBackPlate then
            local unit = g_Units[armor.owner]
            unit:AddItem("Inventory", currentBackPlate)
        end
    end
    InventoryUIRespawn()
end

function InventoryIsCombineTarget(drag_item, target_item)
    if g_Combat then
      return false
    end
    if not target_item then
      return
    end
    if IsKindOf(drag_item, "ArmorPlate") and IsKindOf(target_item, "Armor") then
        if drag_item.Type == "Front" and not target_item.FrontPlatePouch then return false
        elseif drag_item.Type == "Back" and not target_item.BackPlatePouch then return false end
        local recipe = {id = "PlateReplacement"}
        return recipe, true
    end
    local drag_id = drag_item.class
    local target_id = target_item.class
    local drag_amount = IsKindOf(drag_item, "InventoryStack") and drag_item.Amount or 1
    local target_amount = IsKindOf(target_item, "InventoryStack") and target_item.Amount or 1
    local recipes = ItemClassToRecipes[drag_id]
    for _, recipe in ipairs(recipes) do
      local ingredients = recipe.Ingredients
      local ing1 = ingredients[1]
      local ing2 = ingredients[2]
      if ing1.item == drag_id and ing2.item == target_id and drag_amount >= ing1.amount and target_amount >= ing2.amount or ing2.item == drag_id and ing1.item == target_id and drag_amount >= ing2.amount and target_amount >= ing1.amount then
        return recipe, ing1.item == drag_id
      end
    end
end

function CombineItemsFromDragAndDrop(recipe_id, unit, item1, container1, item2, container2)
    if IsKindOf(item1, "ArmorPlate") and IsKindOf(item2, "Armor") then
        item2:ReplaceArmorPlate(item1, item2)
        if container1 then
            container1:RemoveItem("Inventory", item1, "no_update")
          end
        DoneObject(item1)
        item1 = false
        return 
    end

    local options = InventoryGetTargetsRecipe(item1, unit, item2, container2)
    local option = false
    for i, opt in ipairs(options) do
      if opt.recipe and opt.recipe.id == recipe_id and opt.container_data and opt.container_data.item and opt.container_data.item.id == item2.id then
        option = opt
        break
      end
    end
    local combinePopup = XTemplateSpawn("CombineItemPopup", terminal.desktop, {
      unit = unit,
      item = item1,
      context = container1
    })
    combinePopup:Open()
    combinePopup:SetChosenCombination(option)
  end

  function Armor:UnloadPlate(slot)
    if slot == "Front" and self.FrontPlate then
        local unit = g_Units[self.owner]
        unit:AddItem("Inventory", self.FrontPlate)
        self.FrontPlate = false
    elseif slot == "Back" and self.BackPlate then
        local unit = g_Units[self.owner]
        unit:AddItem("Inventory", self.BackPlate)
        self.BackPlate = false
    end
    InventoryUIRespawn()
  end