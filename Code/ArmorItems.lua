

UndefineClass('FlakArmor_CeramicPlates')
DefineClass.FlakArmor_CeramicPlates = {
	__parents = { "TransmutedArmor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "TransmutedArmor",
	Degradation = 10,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/flak_armor",
	SubIcon = "UI/Icons/Items/plates",
	DisplayName = T(224631015464, --[[ModItemInventoryItemCompositeDef FlakArmor_CeramicPlates DisplayName]] "Flak Armor"),
	DisplayNamePlural = T(755674131171, --[[ModItemInventoryItemCompositeDef FlakArmor_CeramicPlates DisplayNamePlural]] "Flak Armors"),
	AdditionalHint = T(952295098091, --[[ModItemInventoryItemCompositeDef FlakArmor_CeramicPlates AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Damage reduction improved by Ceramic Plates\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> The ceramic plates will break after taking <color 124 130 96><RevertConditionCounter></color> hits"),
	PenetrationClass = 2,
	DamageReduction = 20,
	AdditionalReduction = 60,
	ProtectedBodyParts = set( "Arms", "Torso" ),
}

UndefineClass('FlakArmor_WeavePadding')
DefineClass.FlakArmor_WeavePadding = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 5,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/flak_armor",
	SubIcon = "UI/Icons/Items/padded",
	DisplayName = T(652975948541, --[[ModItemInventoryItemCompositeDef FlakArmor_WeavePadding DisplayName]] "Flak Armor"),
	DisplayNamePlural = T(601511299174, --[[ModItemInventoryItemCompositeDef FlakArmor_WeavePadding DisplayNamePlural]] "Flak Armors"),
	AdditionalHint = T(193363531815, --[[ModItemInventoryItemCompositeDef FlakArmor_WeavePadding AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Damage reduction improved by Weave Padding"),
    DamageReduction = 30,
	AdditionalReduction = 60,
	ProtectedBodyParts = set( "Arms", "Torso" ),
}

UndefineClass('FlakArmor')
DefineClass.FlakArmor = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 8,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/flak_armor",
	DisplayName = T(429594575578, --[[ModItemInventoryItemCompositeDef FlakArmor DisplayName]] "Flak Armor"),
	DisplayNamePlural = T(514208016891, --[[ModItemInventoryItemCompositeDef FlakArmor DisplayNamePlural]] "Flak Armors"),
    DamageReduction = 20,
	AdditionalReduction = 60,
	ProtectedBodyParts = set( "Arms", "Torso" ),
	InventorySlots = 4
}

UndefineClass('FlakLeggings_WeavePadding')
DefineClass.FlakLeggings_WeavePadding = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 5,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/flak_leggings",
	SubIcon = "UI/Icons/Items/padded",
	DisplayName = T(359162147142, --[[ModItemInventoryItemCompositeDef FlakLeggings_WeavePadding DisplayName]] "Flak Leggings"),
	DisplayNamePlural = T(487222254867, --[[ModItemInventoryItemCompositeDef FlakLeggings_WeavePadding DisplayNamePlural]] "Flak Leggings"),
	Description = "",
	AdditionalHint = T(324975674328, --[[ModItemInventoryItemCompositeDef FlakLeggings_WeavePadding AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Damage reduction improved by Weave Padding"),
	Slot = "Legs",
    DamageReduction = 30,
	AdditionalReduction = 60,
	ProtectedBodyParts = set( "Groin", "Legs" ),
}

UndefineClass('FlakLeggings')
DefineClass.FlakLeggings = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 8,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/flak_leggings",
	DisplayName = T(458241984382, --[[ModItemInventoryItemCompositeDef FlakLeggings DisplayName]] "Flak Leggings"),
	DisplayNamePlural = T(387595322433, --[[ModItemInventoryItemCompositeDef FlakLeggings DisplayNamePlural]] "Flak Leggings"),
	Slot = "Legs",
    DamageReduction = 20,
	AdditionalReduction = 60,
	ProtectedBodyParts = set( "Groin", "Legs" ),
}

UndefineClass('FlakVest_CeramicPlates')
DefineClass.FlakVest_CeramicPlates = {
	__parents = { "TransmutedArmor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "TransmutedArmor",
	Degradation = 10,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/flak_vest",
	SubIcon = "UI/Icons/Items/plates",
	DisplayName = T(433296221832, --[[ModItemInventoryItemCompositeDef FlakVest_CeramicPlates DisplayName]] "Flak Vest"),
	DisplayNamePlural = T(397631343168, --[[ModItemInventoryItemCompositeDef FlakVest_CeramicPlates DisplayNamePlural]] "Flak Vests"),
	AdditionalHint = T(547235423519, --[[ModItemInventoryItemCompositeDef FlakVest_CeramicPlates AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Damage reduction improved by Ceramic Plates\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> The ceramic plates will break after taking <color 124 130 96><RevertConditionCounter></color> hits"),
	PenetrationClass = 2,
    DamageReduction = 20,
	AdditionalReduction = 60,
	ProtectedBodyParts = set( "Torso" ),
}

UndefineClass('FlakVest_WeavePadding')
DefineClass.FlakVest_WeavePadding = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 5,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/flak_vest",
	SubIcon = "UI/Icons/Items/padded",
	DisplayName = T(503365486687, --[[ModItemInventoryItemCompositeDef FlakVest_WeavePadding DisplayName]] "Flak Vest"),
	DisplayNamePlural = T(747295189274, --[[ModItemInventoryItemCompositeDef FlakVest_WeavePadding DisplayNamePlural]] "Flak Vests"),
	Description = "",
	AdditionalHint = T(816276446076, --[[ModItemInventoryItemCompositeDef FlakVest_WeavePadding AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Damage reduction improved by Weave Padding"),
    DamageReduction = 30,
	AdditionalReduction = 60,
	ProtectedBodyParts = set( "Torso" ),
}

UndefineClass('FlakVest')
DefineClass.FlakVest = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 8,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/flak_vest",
	DisplayName = T(574599118017, --[[ModItemInventoryItemCompositeDef FlakVest DisplayName]] "Flak Vest"),
	DisplayNamePlural = T(232268538596, --[[ModItemInventoryItemCompositeDef FlakVest DisplayNamePlural]] "Flak Vests"),
    DamageReduction = 20,
	AdditionalReduction = 60,
	ProtectedBodyParts = set( "Torso" ),
}

UndefineClass('HeavyArmorChestplate_CeramicPlates')
DefineClass.HeavyArmorChestplate_CeramicPlates = {
	__parents = { "TransmutedArmor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "TransmutedArmor",
	Degradation = 10,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/heavy_vest",
	SubIcon = "UI/Icons/Items/plates",
	DisplayName = T(853074875656, --[[ModItemInventoryItemCompositeDef HeavyArmorChestplate_CeramicPlates DisplayName]] "Heavy Vest"),
	DisplayNamePlural = T(446115138658, --[[ModItemInventoryItemCompositeDef HeavyArmorChestplate_CeramicPlates DisplayNamePlural]] "Heavy Vests"),
	AdditionalHint = T(709197060143, --[[ModItemInventoryItemCompositeDef HeavyArmorChestplate_CeramicPlates AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Damage reduction improved by Ceramic Plates\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> The ceramic plates will break after taking <color 124 130 96><RevertConditionCounter></color> hits\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Cumbersome (no Free Move)"),
	Cumbersome = true,
	is_valuable = true,
	PenetrationClass = 4,
    DamageReduction = 20,
	AdditionalReduction = 60,
	ProtectedBodyParts = set( "Torso" ),
}

UndefineClass('HeavyArmorChestplate_WeavePadding')
DefineClass.HeavyArmorChestplate_WeavePadding = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 5,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/heavy_vest",
	SubIcon = "UI/Icons/Items/padded",
	DisplayName = T(886451843517, --[[ModItemInventoryItemCompositeDef HeavyArmorChestplate_WeavePadding DisplayName]] "Heavy Vest"),
	DisplayNamePlural = T(783113596825, --[[ModItemInventoryItemCompositeDef HeavyArmorChestplate_WeavePadding DisplayNamePlural]] "Heavy Vests"),
	AdditionalHint = T(169410122757, --[[ModItemInventoryItemCompositeDef HeavyArmorChestplate_WeavePadding AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Damage reduction improved by Weave Padding\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Cumbersome (no Free Move)"),
	Cumbersome = true,
	is_valuable = true,
	PenetrationClass = 3,
	DamageReduction = 40,
	AdditionalReduction = 50,
	ProtectedBodyParts = set( "Torso" ),
}

UndefineClass('HeavyArmorChestplate')
DefineClass.HeavyArmorChestplate = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 8,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/heavy_vest",
	DisplayName = T(287161051689, --[[ModItemInventoryItemCompositeDef HeavyArmorChestplate DisplayName]] "Heavy Vest"),
	DisplayNamePlural = T(800078326002, --[[ModItemInventoryItemCompositeDef HeavyArmorChestplate DisplayNamePlural]] "Heavy Vests"),
	AdditionalHint = T(647589338178, --[[ModItemInventoryItemCompositeDef HeavyArmorChestplate AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Cumbersome (no Free Move)"),
	Cumbersome = true,
	is_valuable = true,
	PenetrationClass = 3,
	AdditionalReduction = 40,
	ProtectedBodyParts = set( "Torso" ),
}

UndefineClass('HeavyArmorHelmet_WeavePadding')
DefineClass.HeavyArmorHelmet_WeavePadding = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 5,
	ScrapParts = 2,
	Icon = "UI/Icons/Items/heavy_helmet",
	SubIcon = "UI/Icons/Items/padded",
	DisplayName = T(209936811403, --[[ModItemInventoryItemCompositeDef HeavyArmorHelmet_WeavePadding DisplayName]] "Heavy Armor Helmet"),
	DisplayNamePlural = T(613118960743, --[[ModItemInventoryItemCompositeDef HeavyArmorHelmet_WeavePadding DisplayNamePlural]] "Heavy Armor Helmets"),
	AdditionalHint = T(105610148939, --[[ModItemInventoryItemCompositeDef HeavyArmorHelmet_WeavePadding AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Damage reduction improved by Weave Padding\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Cumbersome (no Free Move)"),
	Cumbersome = true,
	is_valuable = true,
	Slot = "Head",
	PenetrationClass = 3,
	AdditionalReduction = 50,
	ProtectedBodyParts = set( "Head" ),
}

UndefineClass('HeavyArmorHelmet')
DefineClass.HeavyArmorHelmet = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 10,
	ScrapParts = 2,
	Icon = "UI/Icons/Items/heavy_helmet",
	DisplayName = T(452344545782, --[[ModItemInventoryItemCompositeDef HeavyArmorHelmet DisplayName]] "Heavy Armor Helmet"),
	DisplayNamePlural = T(913655670096, --[[ModItemInventoryItemCompositeDef HeavyArmorHelmet DisplayNamePlural]] "Heavy Armor Helmets"),
	AdditionalHint = T(217073378860, --[[ModItemInventoryItemCompositeDef HeavyArmorHelmet AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Cumbersome (no Free Move)"),
	Cumbersome = true,
	is_valuable = true,
	Slot = "Head",
	PenetrationClass = 3,
	AdditionalReduction = 40,
	ProtectedBodyParts = set( "Head" ),
}

UndefineClass('HeavyArmorLeggings_WeavePadding')
DefineClass.HeavyArmorLeggings_WeavePadding = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 5,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/heavy_leggings",
	DisplayName = T(424760376199, --[[ModItemInventoryItemCompositeDef HeavyArmorLeggings_WeavePadding DisplayName]] "Heavy Armor Leggings"),
	DisplayNamePlural = T(714377168265, --[[ModItemInventoryItemCompositeDef HeavyArmorLeggings_WeavePadding DisplayNamePlural]] "Heavy Armor Leggings"),
	AdditionalHint = T(782355676988, --[[ModItemInventoryItemCompositeDef HeavyArmorLeggings_WeavePadding AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Cumbersome (no Free Move)"),
	Cumbersome = true,
	is_valuable = true,
	Slot = "Legs",
	PenetrationClass = 3,
	AdditionalReduction = 40,
	ProtectedBodyParts = set( "Groin", "Legs" ),
}

UndefineClass('HeavyArmorLeggings')
DefineClass.HeavyArmorLeggings = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 8,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/heavy_leggings",
	DisplayName = T(559972876020, --[[ModItemInventoryItemCompositeDef HeavyArmorLeggings DisplayName]] "Heavy Armor Leggings"),
	DisplayNamePlural = T(153376101997, --[[ModItemInventoryItemCompositeDef HeavyArmorLeggings DisplayNamePlural]] "Heavy Armor Leggings"),
	AdditionalHint = T(154830450600, --[[ModItemInventoryItemCompositeDef HeavyArmorLeggings AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Cumbersome (no Free Move)"),
	Cumbersome = true,
	is_valuable = true,
	Slot = "Legs",
	PenetrationClass = 3,
	AdditionalReduction = 40,
	ProtectedBodyParts = set( "Groin", "Legs" ),
}

UndefineClass('HeavyArmorTorso_CeramicPlates')
DefineClass.HeavyArmorTorso_CeramicPlates = {
	__parents = { "TransmutedArmor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "TransmutedArmor",
	Degradation = 10,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/heavy_armor",
	SubIcon = "UI/Icons/Items/plates",
	DisplayName = T(372481783622, --[[ModItemInventoryItemCompositeDef HeavyArmorTorso_CeramicPlates DisplayName]] "Heavy Armor"),
	DisplayNamePlural = T(337071495919, --[[ModItemInventoryItemCompositeDef HeavyArmorTorso_CeramicPlates DisplayNamePlural]] "Heavy Armors"),
	AdditionalHint = T(294966456337, --[[ModItemInventoryItemCompositeDef HeavyArmorTorso_CeramicPlates AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Damage reduction improved by Ceramic Plates\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> The ceramic plates will break after taking <color 124 130 96><RevertConditionCounter></color> hits\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Cumbersome (no Free Move)"),
	Cumbersome = true,
	is_valuable = true,
	PenetrationClass = 4,
	DamageReduction = 40,
	AdditionalReduction = 40,
	ProtectedBodyParts = set( "Arms", "Torso" ),
}

UndefineClass('HeavyArmorTorso_WeavePadding')
DefineClass.HeavyArmorTorso_WeavePadding = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 5,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/heavy_armor",
	SubIcon = "UI/Icons/Items/padded",
	DisplayName = T(462693162142, --[[ModItemInventoryItemCompositeDef HeavyArmorTorso_WeavePadding DisplayName]] "Heavy Armor"),
	DisplayNamePlural = T(807689842390, --[[ModItemInventoryItemCompositeDef HeavyArmorTorso_WeavePadding DisplayNamePlural]] "Heavy Armors"),
	AdditionalHint = T(671170089744, --[[ModItemInventoryItemCompositeDef HeavyArmorTorso_WeavePadding AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Damage reduction improved by Weave Padding\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Cumbersome (no Free Move)"),
	Cumbersome = true,
	is_valuable = true,
	PenetrationClass = 3,
	DamageReduction = 40,
	AdditionalReduction = 50,
	ProtectedBodyParts = set( "Arms", "Torso" ),
}

UndefineClass('HeavyArmorTorso')
DefineClass.HeavyArmorTorso = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 8,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/heavy_armor",
	SubIcon = "UI/Icons/Items/padded",
	DisplayName = T(136233063663, --[[ModItemInventoryItemCompositeDef HeavyArmorTorso DisplayName]] "Heavy Armor"),
	DisplayNamePlural = T(850048286992, --[[ModItemInventoryItemCompositeDef HeavyArmorTorso DisplayNamePlural]] "Heavy Armors"),
	AdditionalHint = T(284873404796, --[[ModItemInventoryItemCompositeDef HeavyArmorTorso AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Cumbersome (no Free Move)"),
	Cumbersome = true,
	is_valuable = true,
	PenetrationClass = 3,
	DamageReduction = 40,
	AdditionalReduction = 40,
	ProtectedBodyParts = set( "Arms", "Torso" ),
}

UndefineClass('HeavyVest_CeramicPlates')
DefineClass.HeavyVest_CeramicPlates = {
	__parents = { "TransmutedArmor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "TransmutedArmor",
	Degradation = 10,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/heavy_vest",
	SubIcon = "UI/Icons/Items/plates",
	DisplayName = T(552007848173, --[[ModItemInventoryItemCompositeDef HeavyVest_CeramicPlates DisplayName]] "Heavy Vest"),
	DisplayNamePlural = T(799824171003, --[[ModItemInventoryItemCompositeDef HeavyVest_CeramicPlates DisplayNamePlural]] "Heavy Vests"),
	AdditionalHint = T(704640503449, --[[ModItemInventoryItemCompositeDef HeavyVest_CeramicPlates AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Damage reduction improved by Ceramic Plates\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> The ceramic plates will break after taking <color 124 130 96><RevertConditionCounter></color> hits\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Cumbersome (no Free Move)"),
	Cumbersome = true,
	is_valuable = true,
	PenetrationClass = 4,
	DamageReduction = 40,
	AdditionalReduction = 40,
	ProtectedBodyParts = set( "Torso" ),
}

UndefineClass('HeavyVest')
DefineClass.HeavyVest = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 8,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/heavy_vest",
	DisplayName = T(769582933222, --[[ModItemInventoryItemCompositeDef HeavyVest DisplayName]] "Heavy Vest"),
	DisplayNamePlural = T(652353431073, --[[ModItemInventoryItemCompositeDef HeavyVest DisplayNamePlural]] "Heavy Vests"),
	AdditionalHint = T(393081313667, --[[ModItemInventoryItemCompositeDef HeavyVest AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Cumbersome (no Free Move)"),
	Cumbersome = true,
	is_valuable = true,
	PenetrationClass = 3,
	AdditionalReduction = 40,
	ProtectedBodyParts = set( "Torso" ),
}

UndefineClass('KevlarChestplate_CeramicPlates')
DefineClass.KevlarChestplate_CeramicPlates = {
	__parents = { "TransmutedArmor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "TransmutedArmor",
	Degradation = 10,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/kevlar_vest",
	SubIcon = "UI/Icons/Items/plates",
	DisplayName = T(875416514358, --[[ModItemInventoryItemCompositeDef KevlarChestplate_CeramicPlates DisplayName]] "Kevlar Vest"),
	DisplayNamePlural = T(517945645307, --[[ModItemInventoryItemCompositeDef KevlarChestplate_CeramicPlates DisplayNamePlural]] "Kevlar Vests"),
	AdditionalHint = T(906708792376, --[[ModItemInventoryItemCompositeDef KevlarChestplate_CeramicPlates AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Damage reduction improved by Ceramic Plates\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> The ceramic plates will break after taking <color 124 130 96><RevertConditionCounter></color> hits"),
	PenetrationClass = 3,
	DamageReduction = 40,
	AdditionalReduction = 30,
	ProtectedBodyParts = set( "Torso" ),
}

UndefineClass('KevlarChestplate_WeavePadding')
DefineClass.KevlarChestplate_WeavePadding = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 5,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/kevlar_vest",
	SubIcon = "UI/Icons/Items/padded",
	DisplayName = T(864690883189, --[[ModItemInventoryItemCompositeDef KevlarChestplate_WeavePadding DisplayName]] "Kevlar Vest"),
	DisplayNamePlural = T(429160142773, --[[ModItemInventoryItemCompositeDef KevlarChestplate_WeavePadding DisplayNamePlural]] "Kevlar Vests"),
	AdditionalHint = T(725406654650, --[[ModItemInventoryItemCompositeDef KevlarChestplate_WeavePadding AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Damage reduction improved by Weave Padding"),
	PenetrationClass = 2,
	AdditionalReduction = 40,
	ProtectedBodyParts = set( "Torso" ),
}

UndefineClass('KevlarChestplate')
DefineClass.KevlarChestplate = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 8,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/kevlar_vest",
	DisplayName = T(461717048791, --[[ModItemInventoryItemCompositeDef KevlarChestplate DisplayName]] "Kevlar Vest"),
	DisplayNamePlural = T(176074793774, --[[ModItemInventoryItemCompositeDef KevlarChestplate DisplayNamePlural]] "Kevlar Vests"),
	PenetrationClass = 2,
	AdditionalReduction = 30,
	ProtectedBodyParts = set( "Torso" ),
}

UndefineClass('KevlarHelmet_WeavePadding')
DefineClass.KevlarHelmet_WeavePadding = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 5,
	ScrapParts = 2,
	Icon = "UI/Icons/Items/kevlar_helmet",
	DisplayName = T(962503779163, --[[ModItemInventoryItemCompositeDef KevlarHelmet_WeavePadding DisplayName]] "Kevlar Helmet"),
	DisplayNamePlural = T(412190139994, --[[ModItemInventoryItemCompositeDef KevlarHelmet_WeavePadding DisplayNamePlural]] "Kevlar Helmets"),
	Slot = "Head",
	PenetrationClass = 2,
	AdditionalReduction = 30,
	ProtectedBodyParts = set( "Head" ),
}

UndefineClass('KevlarHelmet')
DefineClass.KevlarHelmet = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 10,
	ScrapParts = 2,
	Icon = "UI/Icons/Items/kevlar_helmet",
	DisplayName = T(272506010271, --[[ModItemInventoryItemCompositeDef KevlarHelmet DisplayName]] "Kevlar Helmet"),
	DisplayNamePlural = T(562282546063, --[[ModItemInventoryItemCompositeDef KevlarHelmet DisplayNamePlural]] "Kevlar Helmets"),
	Slot = "Head",
	PenetrationClass = 2,
	AdditionalReduction = 30,
	ProtectedBodyParts = set( "Head" ),
}

UndefineClass('KevlarLeggings_WeavePadding')
DefineClass.KevlarLeggings_WeavePadding = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 4,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/kevlar_leggings",
	SubIcon = "UI/Icons/Items/padded",
	DisplayName = T(309883554762, --[[ModItemInventoryItemCompositeDef KevlarLeggings_WeavePadding DisplayName]] "Kevlar Leggings"),
	DisplayNamePlural = T(279684635435, --[[ModItemInventoryItemCompositeDef KevlarLeggings_WeavePadding DisplayNamePlural]] "Kevlar Leggings"),
	AdditionalHint = T(504521675238, --[[ModItemInventoryItemCompositeDef KevlarLeggings_WeavePadding AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Damage reduction improved by Weave Padding"),
	Slot = "Legs",
	PenetrationClass = 2,
	AdditionalReduction = 40,
	ProtectedBodyParts = set( "Groin", "Legs" ),
}

UndefineClass('KevlarLeggings')
DefineClass.KevlarLeggings = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 8,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/kevlar_leggings",
	SubIcon = "UI/Icons/Items/padded",
	DisplayName = T(984750437829, --[[ModItemInventoryItemCompositeDef KevlarLeggings DisplayName]] "Kevlar Leggings"),
	DisplayNamePlural = T(292314105609, --[[ModItemInventoryItemCompositeDef KevlarLeggings DisplayNamePlural]] "Kevlar Leggings"),
	AdditionalHint = T(273695333515, --[[ModItemInventoryItemCompositeDef KevlarLeggings AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Damage reduction improved by Weave Padding"),
	Slot = "Legs",
	PenetrationClass = 2,
	AdditionalReduction = 30,
	ProtectedBodyParts = set( "Groin", "Legs" ),
}

UndefineClass('KevlarVest_CeramicPlates')
DefineClass.KevlarVest_CeramicPlates = {
	__parents = { "TransmutedArmor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "TransmutedArmor",
	Degradation = 10,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/kevlar_armor",
	SubIcon = "UI/Icons/Items/plates",
	DisplayName = T(375294215052, --[[ModItemInventoryItemCompositeDef KevlarVest_CeramicPlates DisplayName]] "Kevlar Armor"),
	DisplayNamePlural = T(705879793936, --[[ModItemInventoryItemCompositeDef KevlarVest_CeramicPlates DisplayNamePlural]] "Kevlar Armors"),
	AdditionalHint = T(537008198268, --[[ModItemInventoryItemCompositeDef KevlarVest_CeramicPlates AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Damage reduction improved by Ceramic Plates\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> The ceramic plates will break after taking <color 124 130 96><RevertConditionCounter></color> hits"),
	PenetrationClass = 3,
	DamageReduction = 40,
	AdditionalReduction = 30,
	ProtectedBodyParts = set( "Arms", "Torso" ),
}

UndefineClass('KevlarVest_WeavePadding')
DefineClass.KevlarVest_WeavePadding = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 5,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/kevlar_armor",
	SubIcon = "UI/Icons/Items/padded",
	DisplayName = T(351015733824, --[[ModItemInventoryItemCompositeDef KevlarVest_WeavePadding DisplayName]] "Kevlar Armor"),
	DisplayNamePlural = T(899970708455, --[[ModItemInventoryItemCompositeDef KevlarVest_WeavePadding DisplayNamePlural]] "Kevlar Armors"),
	AdditionalHint = T(654089031676, --[[ModItemInventoryItemCompositeDef KevlarVest_WeavePadding AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Damage reduction improved by Weave Padding"),
	PenetrationClass = 2,
	AdditionalReduction = 40,
	ProtectedBodyParts = set( "Arms", "Torso" ),
}

UndefineClass('KevlarVest')
DefineClass.KevlarVest = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 8,
	ScrapParts = 4,
	Icon = "UI/Icons/Items/kevlar_armor",
	DisplayName = T(308582219896, --[[ModItemInventoryItemCompositeDef KevlarVest DisplayName]] "Kevlar Armor"),
	DisplayNamePlural = T(641012010311, --[[ModItemInventoryItemCompositeDef KevlarVest DisplayNamePlural]] "Kevlar Armors"),
	PenetrationClass = 2,
	AdditionalReduction = 30,
	ProtectedBodyParts = set( "Arms", "Torso" ),
}

UndefineClass('LightHelmet_WeavePadding')
DefineClass.LightHelmet_WeavePadding = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 10,
	ScrapParts = 2,
	Icon = "UI/Icons/Items/light_helmet",
	DisplayName = T(624495194996, --[[ModItemInventoryItemCompositeDef LightHelmet_WeavePadding DisplayName]] "Light Helmet"),
	DisplayNamePlural = T(660540553077, --[[ModItemInventoryItemCompositeDef LightHelmet_WeavePadding DisplayNamePlural]] "Light Helmets"),
	Slot = "Head",
	AdditionalReduction = 20,
	PenetrationClass = 2,
	ProtectedBodyParts = set( "Head" ),
}

UndefineClass('LightHelmet')
DefineClass.LightHelmet = {
	__parents = { "Armor" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Armor",
	Degradation = 20,
	ScrapParts = 2,
	Icon = "UI/Icons/Items/light_helmet",
	DisplayName = T(429810270913, --[[ModItemInventoryItemCompositeDef LightHelmet DisplayName]] "Light Helmet"),
	DisplayNamePlural = T(660388325353, --[[ModItemInventoryItemCompositeDef LightHelmet DisplayNamePlural]] "Light Helmets"),
	Slot = "Head",
	PenetrationClass = 2,
	AdditionalReduction = 20,
	ProtectedBodyParts = set( "Head" ),
}

