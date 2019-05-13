/datum/job/warden
	title = "Sheriff"
	department = "Security"
	department_flag = SEC
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Captain, the First Officer and the Second Officer"
	economic_power = 8
	minimal_player_age = 14
	ideal_character_age = 35
	alt_titles = list(
		"Security Specialist",
		"Sergeant"
		)
	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/security/warden
	allowed_branches = list(/datum/mil_branch/ship_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/merc, /datum/mil_rank/civ/civ)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_HAULING	  = SKILL_ADEPT,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_ADEPT)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 25

	access = list()

	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)
	required_education = EDUCATION_TIER_DROPOUT
	maximum_education = EDUCATION_TIER_BACHELOR

/datum/job/officer
	title = "Security Officer"
	department = "Security"
	department_flag = SEC
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Sheriff"
	economic_power = 6
	minimal_player_age = 10
	ideal_character_age = 25
	alt_titles = list(
		"PMC Unit",
		"Soldier")

	skill_points = 20

	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/security/officer
	allowed_branches = list(/datum/mil_branch/ship_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/merc, /datum/mil_rank/civ/civ)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_ADEPT,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX)

	access = list()
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)
	required_education = EDUCATION_TIER_DROPOUT
	maximum_education = EDUCATION_TIER_BACHELOR
