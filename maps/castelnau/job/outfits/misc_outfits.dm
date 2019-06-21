/decl/hierarchy/outfit/job/castelnau/passenger/crewman
	name = OUTFIT_JOB_NAME("Crewman - Castelnau")
	uniform = /obj/item/clothing/under/color/grey
	l_ear = /obj/item/device/radio/headset
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda
	id_type = /obj/item/weapon/card/id/castelnau/crewman

/decl/hierarchy/outfit/job/castelnau/stowaway
	name = OUTFIT_JOB_NAME("Stowaway - Castelnau")
	id_type = null
	pda_type = null
	l_ear = null
	l_pocket = /obj/item/weapon/wrench
	r_pocket = /obj/item/weapon/crowbar/prybar

/decl/hierarchy/outfit/job/castelnau/stowaway/post_equip(var/mob/living/carbon/human/H)
	..()
