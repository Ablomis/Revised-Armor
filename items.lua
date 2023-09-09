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
	'name', "ArmorProperties",
	'CodeFileName', "Code/ArmorProperties.lua",
}),
PlaceObj('ModItemCode', {
	'name', "Config",
	'CodeFileName', "Code/Config.lua",
}),
PlaceObj('ModItemCode', {
	'name', "ModOptions",
	'CodeFileName', "Code/ModOptions.lua",
}),
PlaceObj('ModItemCode', {
	'name', "NoDirectionChange",
	'CodeFileName', "Code/NoDirectionChange.lua",
}),
PlaceObj('ModItemCode', {
	'name', "PlateDefinition",
	'CodeFileName', "Code/PlateDefinition.lua",
}),
PlaceObj('ModItemCode', {
	'name', "PlateItems",
	'CodeFileName', "Code/PlateItems.lua",
}),
PlaceObj('ModItemCode', {
	'name', "PlateReplacement",
	'CodeFileName', "Code/PlateReplacement.lua",
}),
PlaceObj('ModItemInventoryItemCompositeDef', {
	'Group', "Armor - Flak",
	'Id', "NATOFaust_Vest",
	'object_class', "Armor",
	'Icon', "Mod/hvRdbow/Images/Armor_NATO_Faust_Vest.png",
	'ItemType', "Armor",
	'DisplayName', T(156970163394, --[[ModItemInventoryItemCompositeDef NATOFaust_Vest DisplayName]] "NATO Faust Vest"),
	'DisplayNamePlural', T(112226747458, --[[ModItemInventoryItemCompositeDef NATOFaust_Vest DisplayNamePlural]] "NATO Faust Vest"),
	'Description', T(177648810686, --[[ModItemInventoryItemCompositeDef NATOFaust_Vest Description]] "SpecOps NATO vest from 90s"),
	'AdditionalHint', T(128325042710, --[[ModItemInventoryItemCompositeDef NATOFaust_Vest AdditionalHint]] "Mad from Cordura"),
	'DamageReduction', 0,
	'AdditionalReduction', 0,
	'ProtectedBodyParts', set( "Torso" ),
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
