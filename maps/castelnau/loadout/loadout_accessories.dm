/datum/gear/accessory/armband_security
	allowed_roles = SECURITY_ROLES

/datum/gear/accessory/armband_cargo
	allowed_roles = SUPPLY_ROLES

/datum/gear/accessory/armband_medical
	allowed_roles = MEDICAL_ROLES

/datum/gear/accessory/armband_emt
	allowed_roles = list(/datum/job/doctor)

/datum/gear/accessory/armband_corpsman
	display_name = "medical armband"
	path = /obj/item/clothing/accessory/armband/medblue
	allowed_roles = list(/datum/job/senior_doctor, /datum/job/doctor)

/datum/gear/accessory/armband_engineering
	allowed_roles = ENGINEERING_ROLES

/datum/gear/accessory/armband_hydro
	allowed_roles = list(/datum/job/scientist, /datum/job/scientist_assistant, /datum/job/assistant)

/datum/gear/accessory/armband_nt
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/accessory/ntaward
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/accessory/tie
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/accessory/tie_color
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/accessory/stethoscope
	allowed_roles = STERILE_ROLES

/datum/gear/storage/brown_vest
	allowed_roles = list(/datum/job/senior_engineer, /datum/job/engineer, /datum/job/roboticist, /datum/job/qm,
						/datum/job/mining, /datum/job/janitor, /datum/job/scientist_assistant)

/datum/gear/storage/black_vest
	allowed_roles = list(/datum/job/hos, /datum/job/warden, /datum/job/officer)

/datum/gear/storage/white_vest
	allowed_roles = list(/datum/job/senior_doctor, /datum/job/doctor, /datum/job/roboticist)

/datum/gear/storage/brown_drop_pouches
	allowed_roles = list(/datum/job/senior_engineer, /datum/job/engineer, /datum/job/roboticist, /datum/job/qm,
						/datum/job/mining, /datum/job/janitor, /datum/job/scientist_assistant)

/datum/gear/storage/black_drop_pouches
	allowed_roles = list(/datum/job/hos, /datum/job/warden, /datum/job/officer)

/datum/gear/storage/white_drop_pouches
	allowed_roles = list(/datum/job/senior_doctor, /datum/job/doctor, /datum/job/roboticist)

/datum/gear/tactical/holster
	allowed_roles = ARMED_ROLES

/datum/gear/tactical/armor_deco
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/press_tag
	display_name = "Press tag"
	path = /obj/item/clothing/accessory/armor/tag/press
	allowed_roles = list(/datum/job/assistant)

/datum/gear/tactical/helm_covers
	allowed_roles = ARMORED_ROLES

/datum/gear/clothing/hawaii
	allowed_roles = SEMIFORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/scarf
	allowed_roles = SEMIANDFORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/flannel
	allowed_roles = SEMIFORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/vest
	allowed_roles = FORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/suspenders
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/wcoat
	allowed_roles = FORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/zhongshan
	allowed_roles = FORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/dashiki
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/thawb
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/sherwani
	allowed_roles = FORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/qipao
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/sweater
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/clothing/tangzhuang
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/accessory/bowtie
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/accessory/ftupin
	allowed_branches = CIVILIAN_BRANCHES

/*********************
 tactical accessories
*********************/
/datum/gear/tactical/ubac
	display_name = "black UBAC shirt"
	path = /obj/item/clothing/accessory/ubac
	allowed_roles = ARMORED_ROLES
	allowed_branches = list(/datum/mil_rank/civ/civ)

/datum/gear/tactical/ubac/blue
	display_name = "navy blue UBAC shirt"
	path = /obj/item/clothing/accessory/ubac/blue
	allowed_branches = list(/datum/mil_rank/civ/civ)

/datum/gear/tactical/ubac/misc
	display_name = "miscellaneous UBAC shirt selection"
	path = /obj/item/clothing/accessory/ubac
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/tactical/ubac/misc/New()
	..()
	var/shirts = list()
	shirts["green UBAC shirt"] = /obj/item/clothing/accessory/ubac/green
	shirts["tan UBAC shirt"] = /obj/item/clothing/accessory/ubac/tan
	gear_tweaks += new/datum/gear_tweak/path(shirts)

/datum/gear/tactical/armor_pouches
	display_name = "black armor pouches"
	path = /obj/item/clothing/accessory/storage/pouches
	cost = 2
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/armor_pouches/navy
	display_name = "navy armor pouches"
	path = /obj/item/clothing/accessory/storage/pouches/navy
	allowed_branches = list(/datum/mil_rank/civ/civ)

/datum/gear/tactical/armor_pouches/misc
	display_name = "miscellaneous armor pouches selection"
	path = /obj/item/clothing/accessory/storage/pouches
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/tactical/armor_pouches/misc/New()
	..()
	var/pouches = list()
	pouches["green armor pouches"] = /obj/item/clothing/accessory/storage/pouches/green
	pouches["tan armor pouches"] = /obj/item/clothing/accessory/storage/pouches/tan
	gear_tweaks += new/datum/gear_tweak/path(pouches)

/datum/gear/tactical/large_pouches
	display_name = "black large armor pouches"
	path = /obj/item/clothing/accessory/storage/pouches/large
	cost = 5
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/large_pouches/navy
	display_name = "navy large armor pouches"
	path = /obj/item/clothing/accessory/storage/pouches/large/navy
	allowed_branches = list(/datum/mil_rank/civ/civ)

/datum/gear/tactical/large_pouches/misc
	display_name = "miscellaneous large armor pouches selection"
	path = /obj/item/clothing/accessory/storage/pouches/large
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/tactical/large_pouches/misc/New()
	..()
	var/pouches = list()
	pouches["green large armor pouches"] = /obj/item/clothing/accessory/storage/pouches/large/green
	pouches["tan large armor pouches"] = /obj/item/clothing/accessory/storage/pouches/large/tan
	gear_tweaks += new/datum/gear_tweak/path(pouches)
