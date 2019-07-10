/datum/gear/instrument
	display_name = "Musical instrument selection"
	path = /obj/item/device/synthesized_instrument/guitar/multi

/datum/gear/instrument/New()
	..()
	var/instrument_type = list()
	instrument_type["Electric Guitar"] = /obj/item/device/synthesized_instrument/guitar/multi
	instrument_type["Classical Guitar"] = /obj/item/device/synthesized_instrument/guitar
	instrument_type["Synthenizer Mini"] = /obj/item/device/synthesized_instrument/synthesizer
	instrument_type["Trumpet"] = /obj/item/device/synthesized_instrument/trumpet
	instrument_type["Violin"] = /obj/item/device/synthesized_instrument/violin
	gear_tweaks += new/datum/gear_tweak/path(instrument_type)