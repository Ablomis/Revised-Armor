UndefineClass("ArmorPlate")
DefineClass.ArmorPlate = {
    __parents = {
      "InventoryItem"
    },
    Weight = 2,
    Type = "Front",
    Protection = "II",
    PenetrationClass = 2,
    DamageReduction = 80,
    Degradation = 20
}

function GetInventoryItemDragDropFXActor(item)
    if IsKindOf(item, "Ammo") or IsKindOf(item, "Mag") then
      return item.Caliber
    end
    if IsKindOf(item, "Armor") then
      if item.Slot == "Head" then
        return "ArmorHelmet"
      elseif item.PenetrationClass <= 2 then
        return "ArmorLight"
      else
        return "ArmorHeavy"
      end
    end
    if IsKindOfClasses(item, "LBE","Backpack", "ArmorPlate") then
        return "ArmorLight"
    end
    if IsKindOf(item, "Armor") then
      if item.Slot == "Head" then
        return "ArmorHelmet"
      elseif item.PenetrationClass <= 2 then
        return "ArmorLight"
      else
        return "ArmorHeavy"
      end
    end
    if InventoryItemDefs[item.class].group == "Magazines" then
      return "Magazines"
    end
    return item.class
  end