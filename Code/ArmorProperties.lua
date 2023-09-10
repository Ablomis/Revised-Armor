   ArmorProperties.properties[#ArmorProperties.properties+1] = {
        category = "General",
        id = "Weight",
        name = "Weight, Kg",
        help = "Weight in Kg",
        editor = "number",
        default = 3,
        template = true,
        min = 0.1,
        max = 50,
        modifiable = true
    }
    ArmorProperties.properties[#ArmorProperties.properties+1] = {
        category = "Combat",
        id = "FrontPlatePouch",
        name = "Front Plate Pouch",
        help = "Can carry front palte",
        editor = "bool",
        default = false,
        template = true,
        modifiable = true
    }
    ArmorProperties.properties[#ArmorProperties.properties+1] = {
        category = "Combat",
        id = "BackPlatePouch",
        name = "Back Plate Pouch",
        help = "Can carry back palte",
        editor = "bool",
        default = false,
        template = true,
        modifiable = true
    }

Armor.FrontPlate = false
Armor.BackPlate = false
