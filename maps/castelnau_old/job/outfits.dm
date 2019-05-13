///Job Outfits

/*
Castelnau OUTFITS
Keeping them simple for now, just spawning with basic EC uniforms, and pretty much no gear. Gear instead goes in lockers. Keep this in mind if editing.
*/

/decl/hierarchy/outfit/job/castelnau
	name = OUTFIT_JOB_NAME("Castelnau Outfit")
	hierarchy_type = /decl/hierarchy/outfit/job/castelnau
	uniform = /obj/item/clothing/under/color/grey
	l_ear = /obj/item/device/radio/headset
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store

	///////////
	//COMMAND//
	///////////

/decl/hierarchy/outfit/job/castelnau/crew/command
	name = OUTFIT_JOB_NAME("Castelnau Command Outfit")
	hierarchy_type = /decl/hierarchy/outfit/job/castelnau/crew/command
	l_ear = /obj/item/device/radio/headset/headset_com
	pda_type = /obj/item/modular_computer/pda/heads

/decl/hierarchy/outfit/job/castelnau/crew/command/captain
	name = OUTFIT_JOB_NAME("Captain - Castelnau")
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/rank/captain
	l_ear = /obj/item/device/radio/headset/heads/castelnau_captain
	shoes = /obj/item/clothing/shoes/brown
	head = /obj/item/clothing/head/caphat
	id_type = /obj/item/weapon/card/id/castelnau/gold
	pda_type = /obj/item/modular_computer/pda/captain

/decl/hierarchy/outfit/job/castelnau/crew/command/captain/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack] = /obj/item/weapon/storage/backpack/captain
	backpack_overrides[/decl/backpack_outfit/satchel] = /obj/item/weapon/storage/backpack/satchel/cap
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/weapon/storage/backpack/messenger/com

/decl/hierarchy/outfit/job/castelnau/crew/command/hop
	name = OUTFIT_JOB_NAME("First Officer - Castelnau")
	uniform = /obj/item/clothing/under/rank/head_of_personnel
	l_ear = /obj/item/device/radio/headset/heads/hop
	shoes = /obj/item/clothing/shoes/laceup
	id_type = /obj/item/weapon/card/id/castelnau/silver
	pda_type = /obj/item/modular_computer/pda/heads/hop

/decl/hierarchy/outfit/job/castelnau/crew/command/adjutant
	name = OUTFIT_JOB_NAME("Second Officer - Castelnau")
	uniform = /obj/item/clothing/under/rank/adjutant
	shoes = /obj/item/clothing/shoes/black
	l_ear = /obj/item/device/radio/headset/adjutant
	id_type = /obj/item/weapon/card/id/castelnau/crew/adjutant

	///////////////
	//ENGINEERING//
	///////////////

/decl/hierarchy/outfit/job/castelnau/crew/engineering
	hierarchy_type = /decl/hierarchy/outfit/job/castelnau/crew/engineering
	l_ear = /obj/item/device/radio/headset/headset_eng
	pda_type = /obj/item/modular_computer/pda/engineering
	pda_slot = slot_l_store
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/castelnau/crew/engineering/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/castelnau/crew/engineering/senior_engineer
	name = OUTFIT_JOB_NAME("Senior Engineer - Castelnau")
	uniform = /obj/item/clothing/under/rank/engineer/senior
	shoes = /obj/item/clothing/shoes/workboots/alt
	id_type = /obj/item/weapon/card/id/castelnau/crew/engineering/senior
	pda_type = /obj/item/modular_computer/pda/heads/ce

/decl/hierarchy/outfit/job/castelnau/crew/engineering/engineer
	name = OUTFIT_JOB_NAME("Engineer - Castelnau")
	uniform = /obj/item/clothing/under/rank/engineer
	shoes = /obj/item/clothing/shoes/workboots/alt
	id_type = /obj/item/weapon/card/id/castelnau/crew/engineering

/decl/hierarchy/outfit/job/castelnau/crew/engineering/engineer/atmos
	name = OUTFIT_JOB_NAME("Engineer (Atmos) - Castelnau")
	uniform = /obj/item/clothing/under/rank/atmospheric_technician

/decl/hierarchy/outfit/job/castelnau/crew/engineering/engineer/electr
	name = OUTFIT_JOB_NAME("Engineer (Electr) - Castelnau")
	uniform = /obj/item/clothing/under/hazard

	////////////
	//SECURITY//
	////////////

/decl/hierarchy/outfit/job/castelnau/crew/security
	hierarchy_type = /decl/hierarchy/outfit/job/castelnau/crew/security
	l_ear = /obj/item/device/radio/headset/headset_sec
	pda_type = /obj/item/modular_computer/pda/security
	pda_slot = slot_l_store
	shoes = /obj/item/clothing/shoes/jackboots

/decl/hierarchy/outfit/job/castelnau/crew/security/New()
	..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/castelnau/crew/security/warden
	name = OUTFIT_JOB_NAME("Warden - Castelnau")
	id_type = /obj/item/weapon/card/id/castelnau/crew/security/warden

/decl/hierarchy/outfit/job/castelnau/crew/security/officer
	name = OUTFIT_JOB_NAME("Security Officer - Castelnau")
	id_type = /obj/item/weapon/card/id/castelnau/crew/security

	///////////
	//MEDICAL//
	///////////

/decl/hierarchy/outfit/job/castelnau/crew/medical
	hierarchy_type = /decl/hierarchy/outfit/job/castelnau/crew/medical
	l_ear = /obj/item/device/radio/headset/headset_med
	shoes = /obj/item/clothing/shoes/white
	pda_type = /obj/item/modular_computer/pda/medical
	pda_slot = slot_l_store

/decl/hierarchy/outfit/job/castelnau/crew/medical/New()
	..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/hierarchy/outfit/job/castelnau/crew/medical/senior
	name = OUTFIT_JOB_NAME("Surgeon - Castelnau")
	uniform = /obj/item/clothing/under/rank/medical/scrubs
	id_type = /obj/item/weapon/card/id/castelnau/crew/medical/senior

/decl/hierarchy/outfit/job/castelnau/crew/medical/senior/traumasurgeon
	name = OUTFIT_JOB_NAME("Trauma Surgeon - Castelnau")
	uniform = /obj/item/clothing/under/rank/medical/scrubs/blue

/decl/hierarchy/outfit/job/castelnau/crew/medical/doctor
	name = OUTFIT_JOB_NAME("Doctor - Castelnau")
	uniform = /obj/item/clothing/under/rank/medical
	id_type = /obj/item/weapon/card/id/castelnau/crew/medical

/decl/hierarchy/outfit/job/castelnau/crew/medical/doctor/paramedic
	name = OUTFIT_JOB_NAME("Paramedic - Castelnau")
	uniform = /obj/item/clothing/under/rank/medical/paramedic
	suit = /obj/item/clothing/suit/storage/toggle/fr_jacket
	shoes = /obj/item/clothing/shoes/jackboots
	l_hand = /obj/item/weapon/storage/firstaid/adv
	belt = /obj/item/weapon/storage/belt/medical/emt
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/castelnau/crew/medical/doctor/chemist
	name = OUTFIT_JOB_NAME("Chemist - Castelnau")
	uniform = /obj/item/clothing/under/rank/chemist
	pda_type = /obj/item/modular_computer/pda/chemistry
	id_type = /obj/item/weapon/card/id/castelnau/crew/medical/chemist

/decl/hierarchy/outfit/job/castelnau/crew/medical/doctor/chemist/New()
	..()
	BACKPACK_OVERRIDE_CHEMISTRY

	/////////
	//CARGO//
	/////////

/decl/hierarchy/outfit/job/castelnau/crew/supply
	l_ear = /obj/item/device/radio/headset/headset_cargo
	shoes = /obj/item/clothing/shoes/brown
	pda_type = /obj/item/modular_computer/pda/cargo
	hierarchy_type = /decl/hierarchy/outfit/job/castelnau/crew/supply

/decl/hierarchy/outfit/job/castelnau/crew/supply/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/castelnau/crew/supply/quartermaster
	name = OUTFIT_JOB_NAME("Quartermaster")
	uniform = /obj/item/clothing/under/rank/cargo
	l_ear = /obj/item/device/radio/headset/headset_mining
	id_type = /obj/item/weapon/card/id/castelnau/crew/supply/quartermaster

/decl/hierarchy/outfit/job/castelnau/crew/supply/prospector
	name = OUTFIT_JOB_NAME("Prospector")
	uniform = /obj/item/clothing/under/rank/ntwork
	shoes = /obj/item/clothing/shoes/workboots/alt
	id_type = /obj/item/weapon/card/id/castelnau/crew/supply/mining
	l_ear = /obj/item/device/radio/headset/headset_mining
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

	///////////
	//SERVICE//
	///////////

/decl/hierarchy/outfit/job/castelnau/crew/service
	l_ear = /obj/item/device/radio/headset/headset_service
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda
	hierarchy_type = /decl/hierarchy/outfit/job/castelnau/crew/service

/decl/hierarchy/outfit/job/castelnau/crew/service/janitor
	name = OUTFIT_JOB_NAME("Janitor - Castelnau")
	uniform = /obj/item/clothing/under/rank/janitor
	id_type = /obj/item/weapon/card/id/castelnau/crew/service/janitor

/decl/hierarchy/outfit/job/castelnau/crew/service/cook
	name = OUTFIT_JOB_NAME("Chef - Castelnau")
	uniform = /obj/item/clothing/under/rank/chef
	id_type = /obj/item/weapon/card/id/castelnau/crew/service/chef

/decl/hierarchy/outfit/job/castelnau/crew/service/bartender
	name = OUTFIT_JOB_NAME("Bartender - Castelnau")
	uniform = /obj/item/clothing/under/rank/bartender
	shoes = /obj/item/clothing/shoes/laceup
	id_type = /obj/item/weapon/card/id/castelnau/crew/service/bartender
	l_pocket = /obj/item/device/cassette/custom

	////////////
	//RESEARCH//
	////////////

/decl/hierarchy/outfit/job/castelnau/crew/research
	hierarchy_type = /decl/hierarchy/outfit/job/castelnau/crew/research
	pda_type = /obj/item/modular_computer/pda/science
	l_ear = /obj/item/device/radio/headset/headset_sci
	uniform = /obj/item/clothing/under/color/white

/decl/hierarchy/outfit/job/castelnau/crew/research/New()
	..()
	BACKPACK_OVERRIDE_RESEARCH

/decl/hierarchy/outfit/job/castelnau/crew/research/senior_scientist
	name = OUTFIT_JOB_NAME("Senior Researcher - Castelnau")
	uniform = /obj/item/clothing/under/rank/scientist/executive/nanotrasen
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	shoes = /obj/item/clothing/shoes/white
	pda_type = /obj/item/modular_computer/pda/heads/rd
	id_type = /obj/item/weapon/card/id/castelnau/crew/research/senior_scientist

/decl/hierarchy/outfit/job/castelnau/crew/research/scientist
	name = OUTFIT_JOB_NAME("Scientist - Castelnau")
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	shoes = /obj/item/clothing/shoes/white
	id_type = /obj/item/weapon/card/id/castelnau/crew/research/scientist

/decl/hierarchy/outfit/job/castelnau/crew/research/roboticist
	name = OUTFIT_JOB_NAME("Roboticist - Castelnau")
	uniform = /obj/item/clothing/under/rank/roboticist
	shoes = /obj/item/clothing/shoes/black
	id_type = /obj/item/weapon/card/id/castelnau/crew/research/roboticist
	pda_type = /obj/item/modular_computer/pda/roboticist

/decl/hierarchy/outfit/job/castelnau/crew/research/scientist/psych
	name = OUTFIT_JOB_NAME("Psychologist - Castelnau")
	uniform = /obj/item/clothing/under/rank/psych
	suit = /obj/item/clothing/suit/storage/toggle/labcoat

/decl/hierarchy/outfit/job/castelnau/crew/research/assist
	name = OUTFIT_JOB_NAME("Research Assistant - Castelnau")
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	shoes = /obj/item/clothing/shoes/white
	id_type = /obj/item/weapon/card/id/castelnau/crew/research

/decl/hierarchy/outfit/job/castelnau/crew/research/assist/testsubject
	name = OUTFIT_JOB_NAME("Testing Assistant")
	uniform = /obj/item/clothing/under/rank/ntwork

	//////////
	//CREWMEN//
	//////////

/decl/hierarchy/outfit/job/castelnau/passenger/crewman
	name = OUTFIT_JOB_NAME("Crewman - Castelnau")
	uniform = /obj/item/clothing/under/color/grey
	l_ear = /obj/item/device/radio/headset
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda
	id_type = /obj/item/weapon/card/id/castelnau/crewman

	/////////
	//OTHER//
	/////////


/decl/hierarchy/outfit/job/castelnau/stowaway
	name = OUTFIT_JOB_NAME("Stowaway - Castelnau")
	id_type = null
	pda_type = null
	l_ear = null
	l_pocket = /obj/item/weapon/wrench
	r_pocket = /obj/item/weapon/crowbar/prybar

/decl/hierarchy/outfit/job/castelnau/stowaway/post_equip(var/mob/living/carbon/human/H)
	..()

/decl/hierarchy/outfit/job/castelnau/ert
	name = OUTFIT_JOB_NAME("ERT - Castelnau")
	uniform = /obj/item/clothing/under/ert_outfit
	head = /obj/item/clothing/head/beret/centcom/officer
	gloves = /obj/item/clothing/gloves/thick/combat/marine
	id_type = /obj/item/weapon/card/id/centcom/ERT
	pda_type = /obj/item/modular_computer/pda/ert
	l_ear = /obj/item/device/radio/headset/ert
	shoes = /obj/item/clothing/shoes/combat/marine

/decl/hierarchy/outfit/job/castelnau/ert/leader
	name = OUTFIT_JOB_NAME("ERT Leader - Castelnau")
	head = /obj/item/clothing/head/beret/centcom/captain

