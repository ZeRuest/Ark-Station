/datum/gear/eyes/sciencegoggles
	allowed_roles = STERILE_ROLES

/datum/gear/eyes/security
	allowed_roles = SECURITY_ROLES

/datum/gear/eyes/medical
	allowed_roles = MEDICAL_ROLES

/datum/gear/eyes/meson
	allowed_roles = list(
		/datum/job/senior_engineer,
		/datum/job/engineer,
		/datum/job/mining,
		/datum/job/scientist_assistant,
		/datum/job/senior_scientist,
		/datum/job/scientist
	)

/datum/gear/eyes/material
	allowed_roles = TECHNICAL_ROLES