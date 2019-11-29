/datum/controller/transfer_controller/Process()
	if (time_till_transfer_vote() <= 0)
		SSvote.initiate_vote(/datum/vote/end_game, automatic = 1)
		timerbuffer += config.vote_autotransfer_interval

/datum/vote/end_game
	name = "end game"
	question = "End the game?"

/datum/vote/end_game/can_run(mob/creator, automatic)
	if(GAME_STATE !=  RUNLEVEL_GAME)
		return FALSE
	if(automatic || check_rights(R_SERVER, 0, creator))
		return TRUE

/datum/vote/end_game/setup_vote(mob/creator, automatic)
	choices = list("End game", "Extend the Round ([config.vote_autotransfer_interval / 600] minutes)")
	if (config.allow_extra_antags && SSvote.is_addantag_allowed(creator, automatic))
		choices += "Add Antagonist"
	..()

/datum/vote/end_game/handle_default_votes()
	if(config.vote_no_default)
		return
	var/factor = 0.5
	switch(world.time / (1 MINUTE))
		if(0 to 60)
			factor = 0.5
		if(61 to 120)
			factor = 0.8
		if(121 to 240)
			factor = 1
		if(241 to 300)
			factor = 1.2
		else
			factor = 1.4
	choices["End game"] = round(choices["End game"] * factor)
	to_world("<font color='purple'>End game Factor: [factor]</font>")

/datum/vote/end_game/report_result()
	if(..())
		return 1
	if(result[1] == "End game")
		evacuation_controller.state = 5
	else if(result[1] == "Add Antagonist")
		SSvote.queued_auto_vote = /datum/vote/add_antagonist

/datum/vote/end_game/mob_not_participating(mob/user)
	if((. = ..()))
		return
	if(config.vote_no_dead_crew_transfer)
		return !isliving(user) || ismouse(user) || is_drone(user)

/datum/vote/end_game/check_toggle()
	return config.allow_vote_restart ? "Allowed" : "Disallowed"
