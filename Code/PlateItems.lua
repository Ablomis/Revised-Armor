UndefineClass('Plate_Ceramic')
DefineClass.Plate_Ceramic = {
	__parents = { "ArmorPlate" },
	__generated_by_class = "ItemInventoryItemCompositeDef",

	object_class = "ArmorPlate",
	Icon = "Mod/hvRdbow/Images/Armor_Ceramic_Plate.png",
	DisplayName = "Ceramic Plate, III",
	DisplayNamePlural = "Ceramic Plate, III",
    Description = "Provides Level III protection",
	AdditionalHint = T([[
    <bullet_point> Can only protect form 1-3 shots 
    <bullet_point> <Type> Plate]]),
    Weight = 2.5,
    Type = "Front",
    Protection = "CIII",
    PenetrationClass = 3,
    DamageReduction = 90,
    Degradation = 16
}

UndefineClass('Plate_Steel')
DefineClass.Plate_Steel = {
	__parents = { "ArmorPlate" },
	__generated_by_class = "ItemInventoryItemCompositeDef",

	object_class = "ArmorPlate",
	Icon = "Mod/hvRdbow/Images/Armor_Steel_Plate.png",
	DisplayName = "Steel Plate, III",
	DisplayNamePlural = "Steel Plate, III",
    Description = "Provides Level II protection",
	AdditionalHint = T([[
    <bullet_point> Can only protect form 1-3 shots 
    <bullet_point> <Type> Plate]]),
    Weight = 3.5,
    Type = "Front",
    Protection = "SIII",
    PenetrationClass = 3,
    DamageReduction = 90,
    Degradation = 66
}