/obj/machinery/computer/reactor_control
	name = "Reactor monitor computer"
	icon_keyboard = "rd_key"
	icon_screen = "power"
	light_color = COLOR_BLUE
	idle_power_usage = 250
	active_power_usage = 500

	var/id_tag
	var/scan_range = 50

/obj/machinery/computer/reactor_control/attack_ai(mob/user)
	attack_hand(user)

/obj/machinery/computer/reactor_control/attack_hand(mob/user)
	add_fingerprint(user)
	interact(user)

/obj/machinery/computer/reactor_control/Process()
	updateDialog()

/obj/machinery/computer/reactor_control/interact(var/mob/user)

	if(stat & (BROKEN|NOPOWER))
		user.unset_machine()
		user << browse(null, "window=fuel_control")
		return

	if (!istype(user, /mob/living/silicon) && get_dist(src, user) > 1)
		user.unset_machine()
		user << browse(null, "window=fuel_control")
		return

	if(!id_tag)
		to_chat(user, "<span class='warning'>This console has not been assigned to any reactor. Please, input console id with a multitool.</span>")
		return

	var/dat = "<B>Reactor Control #[id_tag]</B><BR>"
	dat += {"
		<hr>
		<table border=1 width='100%'>
		<tr>
		<td><b>Rod</b></td>
		<td><b>Neutron Emission Rate</b></td>
		<td><b>Temperature</b></td>
		</tr>"}

	for(var/obj/machinery/power/nuclear_rod/I in nrods)
		if(!id_tag || !I.id_tag || I.id_tag != id_tag || get_dist(src, I) > scan_range)
			continue

		dat += "<tr>"
		dat += "<td>[I.name]</td>"

		if(I.broken == 1)
			dat += "<td><span class='danger'>ERROR</span></td>"
			dat += "<td><span class='danger'>ERROR</span></td>"
		else
			dat += "<td>[I.own_rads]</td>"
			dat += "<td>[I.rodtemp] K </td>"

		dat += "</tr>"

	dat += {"</table><hr>
		<A href='?src=\ref[src];close=1'>Close</A><BR>"}

	var/datum/browser/popup = new(user, "rod_control", "Reactor Control Console", 800, 400, src)
	popup.set_content(dat)
	popup.open()
	add_fingerprint(user)
	user.set_machine(src)

/obj/machinery/computer/reactor_control/OnTopic(var/mob/user, var/href_list, var/datum/topic_state/state)



	if( href_list["close"] )
		user << browse(null, "window=rod_control")
		user.unset_machine()

	return TOPIC_REFRESH


/obj/machinery/computer/reactor_control/attackby(var/obj/item/W, var/mob/user)
	if(isMultitool(W))
		var/new_ident = input("Enter a new ID.", "Rod Control", id_tag) as null|text
		if(new_ident && user.Adjacent(src))
			id_tag = new_ident
		return
	return ..()


/obj/machinery/computer/reactor_control/setupexample
	id_tag = "pripyat"