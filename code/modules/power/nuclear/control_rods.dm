var/list/control_rods = list()

/obj/machinery/control_rod
	name = "Control rods"
	desc = "A control rods, keeping reactor from meltdown ."
	icon = 'icons/obj/machines/nuclearcore.dmi'
	icon_state = "cr_0"
	anchored = 0
	density = 0
	use_power = 0
	var/base_accp = 10
	var/len = 0
	var/target = 0
	var/speed = 0.1
	rad_resistance = 0
	var/health = 200
	var/id_tag
	var/load = 0



/obj/machinery/control_rod/New()
	..()
	control_rods += src


/obj/machinery/control_rod/Destroy()
	control_rods -= src
	return ..()

/obj/machinery/control_rod/examine(mob/user)
	if (..(user, 3))
		to_chat(user, "The relative length of [src] is [len] meters.")
		return 1


/obj/machinery/control_rod/proc/power()  //пока только заготовка, но вы держитесь
	var/turf/T = src.loc

	var/obj/structure/cable/C = T.get_cable_node()
	var/datum/powernet/PN
	if(C)	PN = C.powernet

	if(PN)
//		var/load = 300
		load = PN.draw_power(load) //what we actually get


/obj/machinery/control_rod/Process()
	update_state_of_rod()
	move()
	update_icon()
	rad_resistance = len * base_accp





/obj/machinery/control_rod/proc/move()

	if (len - 0.01 > target )
		len -= speed
		load = 200
	else if (len + 0.01 < target)
		len += speed
		load = 300

//	else if (len == target)
//	load = 0

/obj/machinery/control_rod/proc/update_state_of_rod()
	switch(len)
		if (-1 to 0.1)
			icon_state = "cr_0"
			density = 0
		if (0.1 to 1)
			icon_state = "cr_1"
			density = 0
		if (1 to 2)
			icon_state = "cr_2"
			density = 1
		if (2 to 3)
			icon_state = "cr_3"
			density = 1
		if (3 to 4.2)
			icon_state = "cr_4"
			density = 1
		if (-1 to 0.001)
			len = 0


/obj/machinery/control_rod/setup_control
	base_accp = 200
	len = 4
	id_tag = "Chernobyl"
