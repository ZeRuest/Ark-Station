/obj/machinery/nreflector
	name = "neutron reflector"
	desc = "An industrial model of neutron reflecror, used to keep reaction running."
	icon = 'icons/obj/machines/nuclearcore.dmi'
	icon_state = "nr"
	anchored = 1
	use_power = 0
	density = 1
	var/own_rad = 0
	var/refcoeff = 0.2


/obj/machinery/nreflector/Process()
	own_rad = refcoeff * (SSradiation.get_rads_at_turf(get_turf(src)) - own_rad)
	SSradiation.radiate(src , own_rad)

/obj/machinery/nreflector/attackby(obj/item/weapon/W, mob/user)
	if(isWrench(W))
		playsound(src.loc, 'sound/items/Ratchet.ogg', 75, 1)
		switch(anchored)
			if(1.0)
				user.visible_message("<span class='notice'>[user] unwrenched reflector from the ground.</span>")
				anchored = 0
			if(0.0)
				user.visible_message("<span class='notice'>[user] wrenched reflector into place.</span>")
				anchored = 1


