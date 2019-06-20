var/list/nrods = list()


/obj/machinery/power/nuclear_rod   //Дефайн стержня. Да, слова Ядерный, Стержень и Реактор тут повсеместно.
	name = "Nuclear rod"
	desc = "A nuclear rod, that generates radiation, thermal energy and some problems ."
	icon = 'icons/obj/machines/nuclearcore.dmi'
	icon_state = "base_rod"
	anchored = 0
	density = 1
	var/sealed = 0
	use_power = 0
	var/accepted_rads = 0
	var/own_rads = 0
	var/rodtemp = 293
	var/sealcoeff = 0
	var/raddecay = 0.003
	var/list/reactants
	var/integrity = 100
	var/broken = 0
	var/id_tag
	var/list/possible_reactions = list()

/obj/machinery/power/nuclear_rod/New()  // Тут все по идее понятно
	..()
	nrods += src


/obj/machinery/power/nuclear_rod/Destroy()
	nrods -= src
	return ..()


/obj/machinery/power/nuclear_rod/examine(mob/user)
	if (..(user, 3))
		to_chat(user, "The thermometer placed on the rod indicates that \the [src] has the temperature of [rodtemp] K.")
		return 1

/obj/machinery/power/nuclear_rod/attackby(var/obj/item/weapon/nuclearfuel/F, var/mob/user)  //Погрузка топлива
	if(!reactants)
		playsound(src.loc, 'sound/machines/click.ogg', 50, 1)
		reactants = F.reactants
		qdel(F)

/obj/machinery/power/nuclear_rod/attack_hand(mob/user)   //И его выгрузка
	add_fingerprint(user)
	if(reactants && do_after(user, 10,src))

		var/obj/item/weapon/nuclearfuel/pellet/F = new(get_turf(src), reactants)
		user.put_in_hands(F)
		reactants = null


/obj/machinery/power/nuclear_rod/attackby(obj/item/weapon/W, mob/user)  // А тут реакция на инструменты.
	if(rodtemp < 2000)
		if(!broken)
			src.add_fingerprint(user)
			if(isCrowbar(W))
				playsound(src.loc, 'sound/machines/click.ogg', 50, 1)
				user.visible_message("<span class='notice'>[user] begins to switch sealing on the rod.</span>")
				if(do_after(user, 50,src))
					switch(sealed)
						if(1.0)
							sealed = 0
						if(0.0)
							sealed = 1
					playsound(src.loc, 'sound/items/Deconstruct.ogg', 50, 1)
					user.visible_message("<span class='notice'>[user] switched sealing on the rod.</span>")
					return
				return

			else if(isWrench(W))
				playsound(src.loc, 'sound/items/Ratchet.ogg', 75, 1)
				switch(anchored)
					if(1.0)
						user.visible_message("<span class='notice'>[user] unwrenched rod from the ground.</span>")
						anchored = 0
					if(0.0)
						user.visible_message("<span class='notice'>[user] wrenched rod into place.</span>")
						anchored = 1
				return
			else if(isWelder(W))
				to_chat(user, "<span class='notice'>You are fixing the rod with [W].</span>")
				playsound(src, 'sound/items/Welder.ogg', 10, 1)
				if(do_after(user, 40,src))
					integrity = 100
		else
			if(isWelder(W))
				to_chat(user, "<span class='notice'>You are removing molten rod with [W].</span>")
				playsound(src, 'sound/items/Welder.ogg', 10, 1)
				if(do_after(user, 100,src))
					qdel(src)
	else
		to_chat(user, "<span class='notice'>Rod is too hot to operate.</span>")




/obj/machinery/power/nuclear_rod/proc/check_state()   // Можно было и в процесс, но и так работает.
	if (rodtemp > 4000)
		integrity -= (rodtemp - 4000)/10
	if (integrity <= 0 && broken == 0)
		explosion(src, -1, -1, rodtemp/ 500, rodtemp / 200)
		SSradiation.radiate (src, 500)
		sealed = 0
		broken = 1
		reactants = null
		own_rads = 200


/obj/machinery/power/nuclear_rod/Process()     // проки и теплообмен с облучением
	React()
	var/raddecay = rand(109,121)
	var/datum/gas_mixture/environment = loc.return_air()
	if(sealed == 0)
		set_light(rodtemp/200, (rodtemp-500)/200, (rodtemp-500)/100, 2, 1)
		SSradiation.radiate(src, own_rads)
		var/ratio = min(environment.return_pressure()/ONE_ATMOSPHERE, 1)
		var/chamb_temp = environment.temperature
		if (rodtemp > chamb_temp)
			environment.add_thermal_energy((rodtemp-chamb_temp)*ratio*400)
			rodtemp -= (rodtemp-chamb_temp) * ratio / 40


	else
		SSradiation.radiate(src, round (own_rads * sealcoeff))    
	own_rads = own_rads/raddecay*100
	check_state()
	on_update_icon()
	update_icon()


/obj/machinery/power/nuclear_rod/on_update_icon()
	if (broken == 1)
		icon_state = "broken_rod"
	else
		if (sealed == 0)
			switch(rodtemp)
				if(0 to 500)
					icon_state = "base_rod"
				if(500 to 1000)
					icon_state = "heat_rod"
				if(1000 to 3500)
					icon_state = "optimal_rod"
				else
					icon_state = "overheat_rod"
		else
			icon_state = "sealed_rod"

/obj/machinery/power/nuclear_rod/proc/AddReact(var/name, var/quantity = 1)  //Нужно для Реакта.
	if(name in reactants)
		reactants[name] += quantity
	else
		reactants.Add(name)
		reactants[name] = quantity


/obj/machinery/power/nuclear_rod/proc/React()  // А вот тот самый проблемный прок.
	var/accepted_rads = SSradiation.get_rads_at_turf(get_turf(src)) - own_rads
	if (accepted_rads < 0)
		accepted_rads = 0



	if(reactants.len)
		var/list/produced_reactants
		possible_reactions = typesof(/decl/nuclear_reaction)
		for (var/decl/nuclear_reaction/p_reaction in typesof(/decl/nuclear_reaction))   //Создаем список возм. реакций из всех реакций

			if(p_reaction.substance in reactants && accepted_rads >= p_reaction.required_rads)
			//	possible_reactions.Add(p_reaction)
			else
				possible_reactions.Remove(p_reaction)  //Для изначально полного списка


		while(possible_reactions.len)                 //А теперь пройдемся по ним и последовательно выполним
			var/decl/nuclear_reaction/cur_reaction = pick(possible_reactions)
			var/max_num_reactants = 0
			if(accepted_rads > cur_reaction.required_rads)
				continue




			if (reactants[cur_reaction.substance] > 0.01)  //Определение количества вступаемого в реакцию
				if (cur_reaction.required_rads > 0)
					max_num_reactants = (10 + accepted_rads/cur_reaction.required_rads) * reactants[cur_reaction.substance] / 2000
				else
					max_num_reactants = reactants[cur_reaction.substance] / 1000
			else
				max_num_reactants =	reactants[cur_reaction.substance]

			if(max_num_reactants <= 0)
				continue


			var/amount_reacting = rand(max_num_reactants * 0.9, max_num_reactants)  


			if( reactants[cur_reaction.substance] - amount_reacting >= 0 )  //Убираем из списка реактантов
				reactants[cur_reaction.substance] -= amount_reacting
			else
				amount_reacting = reactants[cur_reaction.substance]
				reactants[cur_reaction.substance] = 0

			rodtemp += amount_reacting * cur_reaction.heat_production
			own_rads +=   amount_reacting * cur_reaction.radiation


			for(var/pr_reactant in cur_reaction.products)   //И добавляем продукты реакции
				var/success = 0
				for(var/check_reactant in produced_reactants)
					if(check_reactant == pr_reactant)
						produced_reactants[pr_reactant] += cur_reaction.products[pr_reactant] * amount_reacting
						success = 1
						break
				if(!success)
					produced_reactants[pr_reactant] = cur_reaction.products[pr_reactant] * amount_reacting

			possible_reactions.Remove(cur_reaction)





		for(var/prreactant in produced_reactants)
			AddReact(prreactant, produced_reactants[prreactant])  //а теперь все произведенное идет обратно в ректанты



















/obj/machinery/power/nuclear_rod/setupexample  //для тестов
	rodtemp = 2000
	anchored = 1
	accepted_rads = 200
	reactants = list("U235" = 1000)
	id_tag = "pripyat"



