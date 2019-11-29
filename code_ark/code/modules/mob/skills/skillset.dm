/datum/skillset/proc/swap_from_to(datum/skillset/swap_with)
	if(src == swap_with)
		return
	if(!istype(swap_with))
		return
	if(!skills_transferable || !swap_with.skills_transferable)
		return

	var/mob/our_owner = owner
	var/mob/their_owner = swap_with.owner

	owner.skillset = swap_with
	their_owner.skillset = src

	owner = swap_with.owner
	swap_with.owner = our_owner

	our_owner.skillset.on_levels_change()
	their_owner.skillset.on_levels_change()
