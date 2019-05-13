/datum/job/submap
	branch = /datum/mil_branch/other
	rank =   /datum/mil_rank/civ/civ

/datum/map/castelnau
	branch_types = list(
		/datum/mil_branch/ship_personnel,
		/datum/mil_branch/science_personnel
	)

	spawn_branch_types = list(
		/datum/mil_branch/ship_personnel,
		/datum/mil_branch/science_personnel
	)

/*
 *  Branches
 *  ========
 */

/datum/mil_branch/other
	name = "Other"
	name_short = "oth"
	email_domain = "freemail.net"

	rank_types = list(
		/datum/mil_rank/civ/civ
	)

	spawn_rank_types = list(
		/datum/mil_rank/civ/civ
	)

/datum/mil_branch/ship_personnel
	name = "Ship Personnel"
	name_short = "shi"
	email_domain = "freemail.castelnau.net"

	rank_types = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/merc
	)

	spawn_rank_types = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/merc
	)

	assistant_job = "Seaman"


/datum/mil_branch/science_personnel
	name = "Science Personnel"
	name_short = "sci"
	email_domain = "freemail.castelnau.net"

	rank_types = list(
		/datum/mil_rank/civ/civ
	)

	spawn_rank_types = list(
		/datum/mil_rank/civ/civ
	)


/datum/mil_rank/grade()
	. = ..()
	if(!sort_order)
		return ""
	if(sort_order <= 10)
		return "E[sort_order]"
	return "O[sort_order - 10]"

/*
 *  Civilians
 *  =========
 */

/datum/mil_rank/civ/civ
	name = "Civilian"
	name_short = null

/datum/mil_rank/civ/merc
	name = "Mercenary"
