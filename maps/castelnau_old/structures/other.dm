/obj/structure/bookcase/manuals/security
	name = "Law Manuals bookcase"

	New()
		..()
		new /obj/item/weapon/book/manual/detective(src)
		new /obj/item/weapon/book/manual/nt_regs(src)
		new /obj/item/weapon/book/manual/solgov_law(src)
		new /obj/item/weapon/book/manual/nt_sop(src)
		new /obj/item/weapon/book/manual/nt_tc(src)
		new /obj/item/weapon/book/manual/military_law(src)
		update_icon()

/obj/structure/mattress_clean
	name = "mattress"
	desc = "A clean mattress. Not so comfortable, but enought."
	icon = 'icons/obj/infinity_object.dmi'
	icon_state = "mattress"
	anchored = 0

/obj/machinery/floor_light/prebuilt/bar/red
	icon = 'icons/turf/flooring/circuit.dmi'
	icon_state = "rcircuit"
	light_outer_range = 3
	light_max_bright = 1
	light_color = "#ee0000"
	default_light_colour = "#ee0000"
	on = 1

/obj/machinery/floor_light/prebuilt/bar/blue
	light_outer_range = 3
	icon_state = "base"
	light_max_bright = 0.75
	light_color = "#1E90FF"
	default_light_colour = "#1E90FF"
	on = 1

/obj/machinery/floor_light/prebuilt/bar/violet
	icon = 'icons/turf/flooring/circuit.dmi'
	light_outer_range = 3
	icon_state = "vcircuit"
	light_max_bright = 1
	light_color = "#9400D3"
	default_light_colour = "#9400D3"
	on = 1