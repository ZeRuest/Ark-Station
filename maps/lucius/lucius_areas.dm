/area/lucius
	icon = 'icons/areas.dmi'

//Second Deck (Z-1)
/area/lucius/storage
	name = "Lucius - Main Storage"
	icon_state = "storage"
	req_access = list("SOL_GENERAL")

/area/lucius/hallway/second
	name = "Lucius - Second Deck Hallway"
	icon_state = "hallway"

/area/lucius/hangar
	name = "Lucius - Hangar"
	icon_state = "hangar"
	req_access = list("SOL_GENERAL")
	sound_env = LARGE_ENCLOSED

/area/lucius/maintenance/second
	name = "Lucius - Second Deck Aft Maintenance"
	icon_state = "maint"
	req_access = list("SOL_MAINT")

/area/lucius/engineering
	name = "Lucius - Engineering"
	icon_state = "eng"
	req_access = list("SOL_ENG")

/area/lucius/fuel
	name = "Lucius - Fuel Bay"
	icon_state = "eng"
	req_access = list("SOL_ENG")

/area/lucius/fuel
	name = "Lucius - Engines Bay"
	icon_state = "eng"
	req_access = list("SOL_ENG")

//First Deck (Z-2)
/area/lucius/bridge
	name = "Lucius - Bridge"
	icon_state = "bridge"
	req_access = list("SOL_COMMAND")

/area/lucius/captain
	name = "Lucius - Captain's Office"
	icon_state = "bridge"
	req_access = list("SOL_HIGH_COMMAND")
	sound_env = SMALL_ENCLOSED

/area/lucius/hallway/first/fore
	name = "Lucius - First Deck Fore Hallway"
	icon_state = "hallway"

/area/lucius/hallway/first/aft
	name = "Lucius - First Deck Aft Hallway"
	icon_state = "hallway"

/area/lucius/maintenance/first/port
	name = "Lucius - First Deck Port Maintenance"
	icon_state = "maint"
	req_access = list("SOL_MAINT")

/area/lucius/maintenance/first/starboard
	name = "Lucius - First Deck Starboard Maintenance"
	icon_state = "maint"
	req_access = list("SOL_MAINT")

/area/lucius/med
	name = "Lucius - Medbay"
	icon_state = "med"
	req_access = list("SOL_MED")

/area/lucius/crew_quarters
	name = "Lucius - Crew Quarters"
	icon_state = "crew"

/area/lucius/cryo
	name = "Lucius - Cryo Bay"
	icon_state = "cryo"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/lucius/telecomms
	name = "Lucius - Telecommunications"
	icon_state = "telecomms"
	req_access = list("SOL_ENG")
	ambience = list('sound/ambience/ambisin2.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/ambigen10.ogg')

/area/lucius/atmos
	name = "Lucius - Atmospherics"
	icon_state = "telecomms"
	req_access = list("SOL_ENG")

/area/lucius/xeno
	name = "Lucius - Xenolife Bay"
	icon_state = "xeno"
	req_access = list("SOL_EXP")

/area/lucius/ano
	name = "Lucius - Anomalous Materials Bay"
	icon_state = "ano"
	req_access = list("SOL_EXP")

//SHUTTLE

/area/lucius/yermak/main
	name = "Yermak - Main Compartment"
	icon_state = "yermak"
	req_access = list("SOL_GENERAL")

/area/lucius/yermak/main
	name = "Yermak - Helm"
	icon_state = "yermak"
	req_access = list("SOL_COMMAND")