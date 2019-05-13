/datum/gear/accessory/tags
	display_name = "dog tags"
	path = /obj/item/clothing/accessory/badge/dog_tags

/datum/gear/accessory/armband_security
	allowed_roles = SECURITY_ROLES

/datum/gear/accessory/armband_cargo
	allowed_roles = SUPPLY_ROLES

/datum/gear/accessory/armband_medical
	allowed_roles = MEDICAL_ROLES

/datum/gear/accessory/armband_emt
	allowed_roles = list(/datum/job/doctor)

/datum/gear/accessory/armband_engineering
	allowed_roles = ENGINEERING_ROLES

/datum/gear/accessory/armband_hydro
	allowed_roles = list(/datum/job/chef, /datum/job/scientist, /datum/job/scientist_assistant)

/datum/gear/accessory/stethoscope
	allowed_roles = STERILE_ROLES

/datum/gear/storage/brown_vest

/datum/gear/storage/black_vest

/datum/gear/storage/white_vest

/datum/gear/storage/brown_drop_pouches
	allowed_roles = list(
		/datum/job/senior_engineer,
		/datum/job/engineer,
		/datum/job/roboticist,
		/datum/job/qm,
		/datum/job/mining,
		/datum/job/janitor,
		/datum/job/scientist_assistant
	)

/datum/gear/storage/black_drop_pouches

/datum/gear/storage/white_drop_pouches

/datum/gear/accessory/ftupin
	allowed_roles = list(/datum/job/assistant)
	allowed_branches = list(/datum/mil_branch/ship_personnel)