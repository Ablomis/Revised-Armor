return {
PlaceObj('ModItemCode', {
	'name', "ApplyHitDamageReduction",
	'CodeFileName', "Code/ApplyHitDamageReduction.lua",
}),
PlaceObj('ModItemCode', {
	'name', "ArmorItems",
	'CodeFileName', "Code/ArmorItems.lua",
}),
PlaceObj('ModItemCode', {
	'name', "Config",
	'CodeFileName', "Code/Config.lua",
}),
PlaceObj('ModItemCode', {
	'name', "Inventory",
	'CodeFileName', "Code/Inventory.lua",
}),
PlaceObj('ModItemCode', {
	'name', "ModOptions",
	'CodeFileName', "Code/ModOptions.lua",
}),
PlaceObj('ModItemCode', {
	'name', "XtemplateInventory",
	'CodeFileName', "Code/XtemplateInventory.lua",
}),
PlaceObj('ModItemOptionChoice', {
	'name', "RevisedArmorDegradationScale",
	'DisplayName', "Armor degradation scale, %",
	'Help', "How quickly armor degrades",
	'DefaultValue', "100",
	'ChoiceList', {
		"50",
		"75",
		"100",
		"125",
		"150",
	},
}),
PlaceObj('ModItemOptionChoice', {
	'name', "RevisedBaseDamageReduction",
	'DisplayName', "Base % of damage blocked",
	'Help', "How much damage armor blocks when bullet penetrates it",
	'DefaultValue', "20",
	'ChoiceList', {
		"10",
		"15",
		"20",
		"25",
		"30",
	},
}),
PlaceObj('ModItemOptionChoice', {
	'name', "RevisedNonPenDamageReduction",
	'DisplayName', "Non pen damage reduction, %",
	'Help', "Damage reduction bonus twhen bullet fails to penetrate armor",
	'DefaultValue', "80",
	'ChoiceList', {
		"40",
		"60",
		"80",
		"100",
	},
}),
PlaceObj('ModItemOptionChoice', {
	'name', "RevisedPenDamageReduction",
	'DisplayName', "Damage reduction per pen level",
	'Help', "Damage reduction change per difference in level of weapon and armor penetration",
	'DefaultValue', "5",
	'ChoiceList', {
		"0",
		"5",
		"10",
	},
}),
PlaceObj('ModItemOptionChoice', {
	'name', "RevisedWeavePaddingBonus",
	'DisplayName', "Weave padding bonus, %",
	'Help', "Damage reduction bonus that weave padding provides to base",
	'DefaultValue', "10",
	'ChoiceList', {
		"0",
		"5",
		"10",
		"15",
		"20",
	},
}),
}
