/datum/map/castelnau
	species_to_job_whitelist = null

#define HUMAN_ONLY_JOBS /datum/job/captain, /datum/job/hos
	species_to_job_blacklist = list(
		/datum/species/unathi  		 = list(HUMAN_ONLY_JOBS, /datum/job/captain),
		/datum/species/unathi/yeosa  = list(HUMAN_ONLY_JOBS, /datum/job/captain),
		/datum/species/skrell  		 = list(HUMAN_ONLY_JOBS, /datum/job/captain),
		/datum/species/machine 		 = list(HUMAN_ONLY_JOBS, /datum/job/captain),
		/datum/species/diona   		 = list(HUMAN_ONLY_JOBS, /datum/job/captain, /datum/job/adjutant),
	)
#undef HUMAN_ONLY_JOBS

	allowed_jobs = list(/datum/job/captain, /datum/job/hop, /datum/job/adjutant,
						/datum/job/senior_engineer, /datum/job/engineer,
						/datum/job/warden, /datum/job/officer,
						/datum/job/senior_doctor, /datum/job/doctor,
						/datum/job/qm, /datum/job/mining,
						/datum/job/janitor, /datum/job/chef, /datum/job/bartender,
						/datum/job/senior_scientist, /datum/job/scientist, /datum/job/roboticist, /datum/job/scientist_assistant,
						/datum/job/assistant
						)

	access_modify_region = list(
		ACCESS_REGION_SECURITY = list(access_change_ids),
		ACCESS_REGION_MEDBAY = list(access_change_ids),
		ACCESS_REGION_RESEARCH = list(access_change_ids),
		ACCESS_REGION_ENGINEERING = list(access_change_ids),
		ACCESS_REGION_COMMAND = list(access_change_ids),
		ACCESS_REGION_GENERAL = list(access_change_ids),
		ACCESS_REGION_SUPPLY = list(access_change_ids),
	)
