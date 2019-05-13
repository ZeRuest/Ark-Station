/datum/nano_module/program/card_mod/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1, var/datum/topic_state/state = GLOB.default_state)
	var/list/data = host.initial_data()

	data["src"] = "\ref[src]"
	data["station_name"] = station_name()
	data["manifest"] = html_crew_manifest()
	data["assignments"] = show_assignments
	if(program && program.computer)
		data["have_id_slot"] = !!program.computer.card_slot
		data["have_printer"] = !!program.computer.nano_printer
		data["authenticated"] = program.can_run(user)
		if(!program.computer.card_slot || !program.computer.card_slot.can_write)
			mod_mode = 0 //We can't modify IDs when there is no card reader
	else
		data["have_id_slot"] = 0
		data["have_printer"] = 0
		data["authenticated"] = 0
	data["mmode"] = mod_mode
	data["centcom_access"] = is_centcom
	if(program && program.computer && program.computer.card_slot)
		var/obj/item/weapon/card/id/id_card = program.computer.card_slot.stored_card
		data["has_id"] = !!id_card
		data["id_account_number"] = id_card ? id_card.associated_account_number : null
		data["id_email_login"] = id_card ? id_card.associated_email_login["login"] : null
		data["id_email_password"] = id_card ? stars(id_card.associated_email_login["password"], 0) : null
		data["id_rank"] = id_card && id_card.assignment ? id_card.assignment : "Unassigned"
		data["id_owner"] = id_card && id_card.registered_name ? id_card.registered_name : "-----"
		data["id_name"] = id_card ? id_card.name : "-----"
	data["command_jobs"] = format_jobs(GLOB.command_positions)
	data["support_jobs"] = format_jobs(GLOB.support_positions)
	data["engineering_jobs"] = format_jobs(GLOB.engineering_positions)
	data["medical_jobs"] = format_jobs(GLOB.medical_positions)
	data["science_jobs"] = format_jobs(GLOB.science_positions)
	data["security_jobs"] = format_jobs(GLOB.security_positions)
	data["exploration_jobs"] = format_jobs(GLOB.exploration_positions)
	data["service_jobs"] = format_jobs(GLOB.service_positions)
	data["supply_jobs"] = format_jobs(GLOB.supply_positions)
	data["civilian_jobs"] = format_jobs(GLOB.civilian_positions)
	data["centcom_jobs"] = format_jobs(get_all_centcom_jobs())

	data["all_centcom_access"] = is_centcom ? get_accesses(1) : null
	data["regions"] = get_accesses()

	if(program.computer.card_slot && program.computer.card_slot.stored_card)
		var/obj/item/weapon/card/id/id_card = program.computer.card_slot.stored_card
		if(is_centcom)
			var/list/all_centcom_access = list()
			for(var/access in get_all_centcom_access())
				all_centcom_access.Add(list(list(
					"desc" = replacetext(get_centcom_access_desc(access), " ", "&nbsp"),
					"ref" = access,
					"allowed" = (access in id_card.access) ? 1 : 0)))
			data["all_centcom_access"] = all_centcom_access
		else
			var/list/accesses = typesof(/datum/access/castelnau)
			accesses -= /datum/access
			var/list/regions = list()
			var/list/temp_reg = list()
			var/datum/access/A
			for (var/atype in accesses)
				A = new atype
				world << A.desc
				temp_reg[get_region_accesses_name(A.region)] += list(
						list("desc" = replacetext(get_access_desc(A.id), " ", "&nbsp"),
						"ref" = A.id,
						"allowed" = (A.id in id_card.access) ? 1 : 0)
					)
			for (var/i = 1; i <= 8; i++)
				regions.Add(list(list("name" = (get_region_accesses_name(i)), "accesses" = temp_reg[get_region_accesses_name(i)])))
			/*for(var/i = 1; i <= 8; i++)
				var/list/accesses = list()
				for(var/access in get_region_accesses(i))
					if (get_access_desc(access))
						accesses.Add(
							list(
								list("desc" = replacetext(get_access_desc(access), " ", "&nbsp"),
								"ref" = access,
								"allowed" = (access in id_card.access) ? 1 : 0)
							)
						)
			regions.Add(list(list("name" = get_region_accesses_name(i), "accesses" = accesses)))*/
			data["regions"] = regions

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if (!ui)
		ui = new(user, src, ui_key, "cardmod.tmpl", name, 600, 700, state = state)
		ui.auto_update_layout = 1
		ui.set_initial_data(data)
		ui.open()