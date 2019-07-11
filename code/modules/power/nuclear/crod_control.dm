/obj/machinery/computer/rod_control
	name = "Reactor control computer"
	icon_keyboard = "rd_key"
	icon_screen = "power"
	light_color = COLOR_BLUE
	idle_power_usage = 250
	active_power_usage = 500

	var/id_tag
	var/scan_range = 50

/obj/machinery/computer/rod_control/attack_ai(mob/user)
	attack_hand(user)

/obj/machinery/computer/rod_control/attack_hand(mob/user)
	add_fingerprint(user)
	interact(user)

/obj/machinery/computer/rod_control/Process()
	updateDialog()


/obj/machinery/computer/rod_control/interact(var/mob/user)

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

	var/dat = "<B>Reactor Control #[id_tag]</B>"
	dat += "<hr><b><A href='?src=\ref[src];setall=1'>Set overall target length</b>"
	dat += {"
		<hr>
		<table border=1 width='100%'>
		<tr>
		<td><b>Target Length</b></td>
		<td><b>Current Length</b></td>
		</tr>"}

	for(var/obj/machinery/control_rod/I in control_rods)
		if(!id_tag || !I.id_tag || I.id_tag != id_tag || get_dist(src, I) > scan_range)
			continue

		dat += "<tr>"

		if(I.nocontrol)
			dat += "<td><span class='danger'>ERROR</span></td>"
			dat += "<td><span class='danger'>ERROR</span></td>"
		else
			dat += "<td><a href='?src=\ref[src];machine=\ref[I];set_targ=1'>\[[I.target] meters\]</a></td>"
			dat += "<td>[I.len] meters </td>"

		dat += "</tr>"

	dat += {"</table><hr>
		<A href='?src=\ref[src];close=1'>Close</A>"}

	var/datum/browser/popup = new(user, "rod_control", "Reactor Control Console", 800, 400, src)
	popup.set_content(dat)
	popup.open()
	add_fingerprint(user)
	user.set_machine(src)

/obj/machinery/computer/rod_control/OnTopic(var/mob/user, var/href_list, var/datum/topic_state/state)
	var/obj/machinery/control_rod/I = locate(href_list["machine"])
	if(href_list["set_targ"])
		var/new_val = input("Enter new target length", "Setting new length", I.target) as num
		if(!new_val)
			to_chat(user, "<span class='warning'>That's not a valid number.</span>")
			return TOPIC_REFRESH
		I.target = Clamp(new_val, 0, 4)
		updateUsrDialog()
		return TOPIC_REFRESH

	if( href_list["close"] )
		user << browse(null, "window=rod_control")
		user.unset_machine()

	if( href_list["setall"] )
		var/new_overall = input("Enter new overall length", "Setting new length", 0) as num
		for(var/obj/machinery/control_rod/C in control_rods)
			if(C.target != new_overall)
				C.target = new_overall
		return TOPIC_REFRESH

	return TOPIC_REFRESH


/obj/machinery/computer/rod_control/attackby(var/obj/item/W, var/mob/user)
	if(isMultitool(W))
		var/new_ident = input("Enter a new ID.", "Rod Control", id_tag) as null|text
		if(new_ident && user.Adjacent(src))
			id_tag = new_ident
		return
	return ..()


/obj/machinery/computer/rod_control/setupexample
	id_tag = "Chernobyl"
