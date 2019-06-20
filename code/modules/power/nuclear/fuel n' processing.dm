/obj/item/weapon/nuclearfuel    //топливо для стержней, высчитывание радиоактивности под вопросом, ибо зачем
	var/list/reactants
	icon = 'icons/obj/machines/nuclearcore.dmi'

/obj/item/weapon/nuclearfuel/New(var/newloc, var/list/r)
	reactants = r
	..(newloc)

/obj/item/weapon/nuclearfuel/rod
	icon_state = "assembly"
	name = "Nuclear fuel assembly"
	desc = "A nuclear fuel assemby, necessery to refuel nuclear rods ."


/obj/item/weapon/nuclearfuel/pellet
	icon_state = "pellet"
	name = "Nuclear fuel pellet"
	desc = "A small pellet of nuclear fuel. ."



/obj/machinery/rod_fabricator   //весьма хтоничная штука, и она не работает
	name = "Fuel assembly fabricator"
	icon = 'icons/obj/machines/nuclearcore.dmi'
	icon_state = "fabricator"
	density = 1
	anchored = 1
	layer = 4
	var/list/areactants
	var/list/buffer
	var/summarymass
	var/transfering_sub
	use_power = 1
	idle_power_usage = 50
	active_power_usage = 1000

/obj/machinery/rod_fabricator/Process()   //Да-да, это по стути повторяющийся прок на перекачку

	summarymass = 0
	for(var/reactant in areactants)
		summarymass += areactants[reactant]
	if(transfering_sub && areactants[transfering_sub] > 0.01)
		for(var/reactant in areactants)
			if(reactant == transfering_sub)
				var/amount = 0.2 * areactants[reactant]
				areactants[reactant] -= amount
				if(reactant in buffer)
					areactants[reactant] += amount
				else
					buffer.Add(reactant)
					buffer[reactant] = amount
			else
				var/amount = 0.01 * areactants[reactant]
				areactants[reactant] -= amount
				if(reactant in buffer)
					buffer[reactant] += amount
				else
					buffer.Add(reactant)
					buffer[reactant] = amount



/obj/machinery/rod_fabricator/attack_ai(mob/user)
	attack_hand(user)

/obj/machinery/rod_fabricator/attack_hand(mob/user)
	add_fingerprint(user)
	interact(user)

/obj/machinery/rod_fabricator/attackby(var/obj/item/weapon/nuclearfuel/F, var/mob/user)   //погрузка материалов в стержень и буффер
	for (var/reactant in F.reactants)
		if ((summarymass + F.reactants[reactant]) <= 3000)
			if(reactant in areactants)
				areactants[reactant] += F.reactants[reactant]
			else
				areactants.Add(reactant)
				areactants[reactant] = F.reactants[reactant]
		else
			if(reactant in buffer)
				buffer[reactant] += F.reactants[reactant]
			else
				buffer.Add(reactant)
				buffer[reactant] = F.reactants[reactant]
	qdel(F)
	add_fingerprint(user)

/obj/machinery/rod_fabricator/interact(var/mob/user)                    //да, интерфейс как у консоли

	if(stat & NOPOWER)
		user.unset_machine()
		user << browse(null, "window=fuel_control")
		return

	if (get_dist(src, user) > 1)
		user.unset_machine()
		user << browse(null, "window=fuel_control")
		return
	var/dat = "<B>Assembly fabricator</B><BR>"

	dat += {"
		<hr>
		<table border=1 width='100%'>
		<tr>
		<td><b>Reactant</b></td>
		<td><b>Amount</b></td>
		</tr>"}
	dat += "<tr><b>Assembly</b></tr>"
	for(var/reac in areactants)

		dat += "<tr>"

		dat += "<td>[reac]</td>"
		dat += "<td>[areactants[reac]/summarymass*100] %</td>"
		dat += "</tr>"

	dat += "<tr><b>Buffer</b></tr>"

	for(var/reac in buffer)

		dat += "<tr>"

		dat += "<td>[reac]</td>"
		dat += "<td>[areactants[reac]] moles</td>"
		dat += "</tr>"

	dat += {"</table><hr>
		<A href='?src=\ref[src];transfer=1'>Transfer to buffer</A>
		<A href='?src=\ref[src];ctransfer=1'>Cease transfer</A>
		<A href='?src=\ref[src];create=1'>Create assembly</A>
		<A href='?src=\ref[src];eject=1'>Eject buffer</A>
		<A href='?src=\ref[src];close=1'>Close</A><BR>"}

	var/datum/browser/popup = new(user, "fuel_control", "Fusion Fuel Control Console", 800, 400, src)
	popup.set_content(dat)
	popup.open()
	user.set_machine(src)

/obj/machinery/rod_fabricator/OnTopic(var/mob/user, var/href_list, var/datum/topic_state/state)  //Хрефы  - отдельный разговор
	if(href_list["eject"])
		if(buffer)
			var/obj/item/weapon/nuclearfuel/pellet/F = new(get_turf(src), buffer)
			user.put_in_hands(F)
			buffer = null

	if(href_list["create"])
		if(areactants)
			var/obj/item/weapon/nuclearfuel/rod/F = new(get_turf(src), areactants)
			user.put_in_hands(F)
			areactants = null

	if(href_list["ctransfer"])
		transfering_sub = null

	if(href_list["transfer"])
		var/new_val = input("Enter reactant", "Processing", transfering_sub) as null|text
		if(new_val in areactants)
			new_val = transfering_sub


	if( href_list["close"] )
		user << browse(null, "window=fuel_control")
		user.unset_machine()

	return TOPIC_REFRESH



/obj/machinery/centrifuge
	name = "Uranium processing centrifuge"
	icon = 'icons/obj/machines/nuclearcore.dmi'
	icon_state = ""
	density = 1
	anchored = 1
	layer = 4
	use_power = 1
	idle_power_usage = 10
	active_power_usage = 5000


/obj/machinery/rod_fabricator/attackby(var/obj/item/stack/material/uranium/N, var/mob/user)
	if(N.amount >= 20)
		N.amount -= 20
		icon_state = ""
		spawn(50)
			icon_state = ""
			var/obj/item/weapon/nuclearfuel/pellet/P = new(get_turf(src), list("U235" = 50, "U238" = 600))
			update_icon()




/obj/item/weapon/nuclearfuel/pellet/enrichedU
	name = "Enriched uranium pellet"
	reactants = list("U235" = 200, "U238" = 500)


/obj/machinery/rod_fabricator/example
	areactants = list("U235" = 200, "U238" = 500)
	buffer = list("U238" = 500)