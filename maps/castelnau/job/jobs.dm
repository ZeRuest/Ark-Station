/datum/map/castelnau
	species_to_job_whitelist = list()

#define HUMAN_ONLY_JOBS /datum/job/captain
#define HUMAN_NOVOX_JOBS /datum/job/captain, /datum/job/hop, /datum/job/adjutant, /datum/job/senior_engineer, /datum/job/engineer, /datum/job/warden, /datum/job/officer, /datum/job/specialist, /datum/job/senior_doctor, /datum/job/doctor, /datum/job/qm, /datum/job/mining, /datum/job/janitor, /datum/job/chef, /datum/job/bartender, /datum/job/senior_scientist, /datum/job/scientist, /datum/job/roboticist, /datum/job/scientist_assistant, /datum/job/scientist_pilot, /datum/job/assistant
	species_to_job_blacklist = list(
		/datum/species/unathi  		 = list(HUMAN_ONLY_JOBS),
		/datum/species/unathi/yeosa  = list(HUMAN_ONLY_JOBS),
		/datum/species/skrell  		 = list(HUMAN_ONLY_JOBS),
		/datum/species/machine 		 = list(HUMAN_ONLY_JOBS),
		/datum/species/diona   		 = list(HUMAN_ONLY_JOBS, /datum/job/adjutant),
		/datum/species/vox   		 = list(HUMAN_NOVOX_JOBS,),
	)
#undef HUMAN_ONLY_JOBS
#undef HUMAN_NOVOX_JOBS

	allowed_jobs = list(/datum/job/captain, /datum/job/hop, /datum/job/adjutant,
						/datum/job/senior_engineer, /datum/job/engineer,
						/datum/job/warden, /datum/job/officer, /datum/job/specialist,
						/datum/job/senior_doctor, /datum/job/doctor,
						/datum/job/qm, /datum/job/mining,
						/datum/job/janitor, /datum/job/chef, /datum/job/bartender,
						/datum/job/senior_scientist, /datum/job/scientist, /datum/job/roboticist, /datum/job/scientist_assistant, /datum/job/scientist_pilot,
						/datum/job/assistant
						)

	access_modify_region = list(
		ACCESS_REGION_SECURITY = list(access_castelnau_idmod),
		ACCESS_REGION_MEDBAY = list(access_castelnau_idmod),
		ACCESS_REGION_RESEARCH = list(access_castelnau_idmod),
		ACCESS_REGION_ENGINEERING = list(access_castelnau_idmod),
		ACCESS_REGION_COMMAND = list(access_castelnau_idmod),
		ACCESS_REGION_GENERAL = list(access_castelnau_idmod),
		ACCESS_REGION_SUPPLY = list(access_castelnau_idmod),
		ACCESS_REGION_NT = list(access_castelnau_prometeus_senior),
	)
