/*******************
castelnau specific items
*******************/

/obj/item/modular_computer/pda/heads/hop
	stored_pen = /obj/item/weapon/pen/multi/cmd/hop

/obj/item/modular_computer/pda/captain
	stored_pen = /obj/item/weapon/pen/multi/cmd/captain

/***********
Unique items
***********/

/obj/item/weapon/pen/multi/cmd/hop
	name = "head of personnel's pen"
	icon = 'maps/castelnau/icons/obj/uniques.dmi'
	icon_state = "pen_xo"
	desc = "A slightly bulky pen with a silvery case. Twisting the top allows you to switch the nib for different colors."

/obj/item/weapon/pen/multi/cmd/captain
	name = "captain's pen"
	icon = 'maps/castelnau/icons/obj/uniques.dmi'
	icon_state = "pen_co"
	desc = "A slightly bulky pen with a golden case. Twisting the top allows you to switch the nib for different colors."

/obj/item/weapon/pen/multi/cmd/attack_self(mob/user)
	if(++selectedColor > 3)
		selectedColor = 1
	colour = colors[selectedColor]
	to_chat(user, "<span class='notice'>Changed color to '[colour].'</span>")

/obj/item/weapon/storage/fakebook
	name = "Workplace Crisis Management"
	desc = "Also known as 'I fucked up, what do?'. A very popular book among the NanoTrasen management."
	icon = 'icons/obj/library.dmi'
	icon_state = "booknanoregs"
	attack_verb = list("bashed", "whacked", "educated")
	throw_speed = 1
	throw_range = 5
	w_class = ITEM_SIZE_NORMAL
	max_w_class = ITEM_SIZE_SMALL
	max_storage_space = 4
	startswith = list(
			/obj/item/weapon/gun/projectile/pistol/liaison,
			/obj/item/weapon/reagent_containers/pill/tox
	)

/******
Weapons
******/

/obj/item/weapon/gun/projectile/revolver/webley/captain
	desc = "A shiny al-Maliki & Mosley Autococker automatic revolver, with black accents. Marketed as the 'Revolver for the Modern Era'. Uses .44 magnum rounds. This one has 'To the Captain of MOTV Castelnau' engraved."

/obj/item/weapon/gun/projectile/pistol/liaison
	magazine_type = /obj/item/ammo_magazine/mc9mm/oneway

/obj/item/ammo_magazine/mc9mm/oneway
	initial_ammo = 1

/obj/effect/paint/hull
	color = COLOR_HULL

/obj/item/device/boombox/anchored //for bar's private rooms
	name = "stationary boombox"
	anchored = 1

/obj/item/device/boombox/anchored/attack_hand(var/mob/user)
	interact(user)

/****
Other
****/
/*
/obj/item/rolled_towel
	name = "rolled big towel"
	desc = "A collapsed big towel - looks like you can't use it as a normal one... Try it on a beach."
	icon = 'maps/castelnau/icons/obj/towels.dmi'
	icon_state = "rolled_towel"
	w_class = 2
	var/beach_towel = /obj/structure/towel

/obj/item/rolled_towel/attack_self(mob/living/user as mob)
	var/obj/item/rolled_towel/R = new beach_towel(user.loc)
	R.add_fingerprint(user)
	qdel(src)

/obj/structure/towel
	name = "big towel"
	icon = 'maps/castelnau/icons/obj/towels.dmi'
	icon_state = "beach_towel"
	anchored = 0
	var/rolled_towel = /obj/item/rolled_towel

/obj/structure/towel/attack_hand(mob/living/user as mob)
	..()
	if(!ishuman(user))
		return 0
	visible_message("<span class='notice'>[usr] rolled up [src].</span>")
	var/obj/item/rolled_towel/B = new rolled_towel(get_turf(src))
	usr.put_in_hands(B)
	qdel(src)

/obj/item/rolled_towel/black
	name = "black rolled towel"
	icon_state = "black_rolled_towel"
	beach_towel = /obj/structure/towel/black

/obj/structure/towel/black
	name = "black big towel"
	icon_state = "black_beach_towel"
	rolled_towel = /obj/item/rolled_towel/black

/obj/item/rolled_towel/blue_stripped
	name = "blue rolled towel"
	icon_state = "bluestripp_towel"
	beach_towel = /obj/structure/towel/blue_stripped

/obj/structure/towel/blue_stripped
	name = "blue big towel"
	icon_state = "bluestripp_beach"
	rolled_towel = /obj/item/rolled_towel/blue_stripped

/obj/item/rolled_towel/red_stripped
	name = "red rolled towel"
	icon_state = "redstripp_towel"
	beach_towel = /obj/structure/towel/red_stripped

/obj/structure/towel/red_stripped
	name = "red big towel"
	icon_state = "redstripp_beach"
	rolled_towel = /obj/item/rolled_towel/red_stripped

/obj/item/rolled_towel/green_stripped
	name = "green rolled towel"
	icon_state = "greenstripp_towel"
	beach_towel = /obj/structure/towel/green_stripped

/obj/structure/towel/green_stripped
	name = "green big towel"
	icon_state = "greenstripp_beach"
	rolled_towel = /obj/item/rolled_towel/green_stripped

/obj/item/rolled_towel/yellow_stripped
	name = "yellow rolled towel"
	icon_state = "yellowstripp_towel"
	beach_towel = /obj/structure/towel/yellow_stripped

/obj/structure/towel/yellow_stripped
	name = "green big towel"
	icon_state = "yellowstripp_beach"
	rolled_towel = /obj/item/rolled_towel/yellow_stripped

/obj/item/rolled_towel/pink_stripped
	name = "pink rolled towel"
	icon_state = "pinkstripp_towel"
	beach_towel = /obj/structure/towel/pink_stripped

/obj/structure/towel/pink_stripped
	name = "green big towel"
	icon_state = "pinkstripp_beach"
	rolled_towel = /obj/item/rolled_towel/pink_stripped

/obj/item/rolled_towel/ilove
	name = "*i <3 you* rolled towel"
	icon_state = "rolled_towel"
	beach_towel = /obj/structure/towel/ilove

/obj/structure/towel/ilove
	name = "*i <3 you* big towel"
	icon_state = "ilove_beach"
	rolled_towel = /obj/item/rolled_towel/ilove

/obj/item/rolled_towel/fitness
	name = "rolled fitness mat"
	desc = "A fitness mat - place it in a gym for better training.."
	icon_state = "rolled_gym_beach"
	beach_towel = /obj/structure/towel/fitness

/obj/structure/towel/fitness
	name = "fitness mat"
	icon_state = "gym_beach"
	rolled_towel = /obj/item/rolled_towel/fitness */