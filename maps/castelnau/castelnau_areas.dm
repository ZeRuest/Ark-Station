/datum/map/castelnau

	base_floor_type = /turf/simulated/floor/reinforced/airless
	base_floor_area = /area/maintenance/exterior

	post_round_safe_areas = list (
		/area/centcom,
		/area/shuttle/escape/centcom,
		/area/shuttle/escape_pod6/station,
		/area/shuttle/escape_pod7/station,
		/area/shuttle/escape_pod8/station,
		/area/shuttle/escape_pod9/station,
		/area/shuttle/administration/centcom,
		/area/shuttle/specops/centcom
	)

//First Deck (Z-3)




/area/shuttle/escape_pod6/station
	name = "Escape Pod One"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod7/station
	name = "Escape Pod Two"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod8/station
	name = "Escape Pod Three"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod9/station
	name = "Escape Pod Four"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//Castelnau

// Ninja areas
/area/ninja_dojo
	name = "Ninja Base"
	icon_state = "green"
	requires_power = 0
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/ninja_dojo/dojo
	name = "Clan Dojo"
	dynamic_lighting = 0

/area/ninja_dojo/start
	name = "Clan Dojo"
	icon_state = "shuttlered"
	base_turf = /turf/simulated/floor/plating

//Merchant

/area/shuttle/merchant/home
	name = "Merchant Vessel"
	icon_state = "shuttlegrn"
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//Merc

/area/syndicate_mothership
	name = "Mercenary Base"
	icon_state = "syndie-ship"
	requires_power = 0
	dynamic_lighting = 0
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/syndicate_station/start
	name = "Mercenary Forward Operating Base"
	icon_state = "yellow"
	requires_power = 0
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//Skipjack

/area/skipjack_station
	name = "Raider Outpost"
	icon_state = "yellow"
	requires_power = 0
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//NT rescue shuttle

/area/rescue_base
	name = "Response Team Base"
	icon_state = "yellow"
	requires_power = 0
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/rescue_base/base
	name = "Barracks"
	icon_state = "yellow"
	dynamic_lighting = 0

/area/rescue_base/start
	name = "Response Team Base"
	icon_state = "shuttlered"
	base_turf = /turf/unsimulated/floor/rescue_base

// Command

/area/maintenance/exterior
	name = "Exterior Reinforcements"
	icon_state = "maint_security_starboard"
	area_flags = AREA_FLAG_EXTERNAL
	has_gravity = FALSE
	turf_initializer = /decl/turf_initializer/maintenance/space


// Crew areas

// Medbay



// Shield Rooms

/area/teleporter
	name = "Teleporter"
	icon_state = "teleporter"
	sound_env = SMALL_ENCLOSED


// Command


// CentCom

/area/centcom/control
	name = "Centcom Control"

/area/centcom/creed
	name = "Creed's Office"

/area/centcom/evac
	name = "Centcom Emergency Shuttle"

/area/centcom/ferry
	name = "Centcom Transport Shuttle"

/area/centcom/living
	name = "Centcom Living Quarters"

/area/centcom/suppy
	name = "Centcom Supply Shuttle"

/area/centcom/test
	name = "Centcom Testing Facility"

/area/shuttle/administration/centcom
	name = "Administration Shuttle"
	icon_state = "shuttlered"


// Merchant
/area/merchant_station
	name = "Merchant Station"
	icon_state = "LP"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

// Syndicate
/area/syndicate_mothership/raider_base
	name = "Raider Base"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

// ACTORS GUILD
/area/acting
	name = "Centcom Acting Guild"
	icon_state = "red"
	dynamic_lighting = 0
	requires_power = 0

/area/acting/backstage
	name = "Backstage"

/area/acting/stage
	name = "Stage"
	dynamic_lighting = 1
	icon_state = "yellow"

// Thunderdome

/area/tdome
	name = "Thunderdome"
	icon_state = "thunder"
	requires_power = 0
	dynamic_lighting = 0
	sound_env = ARENA

/area/tdome/tdome1
	name = "Thunderdome (Team 1)"
	icon_state = "green"

/area/tdome/tdome2
	name = "Thunderdome (Team 2)"
	icon_state = "yellow"

/area/tdome/tdomeadmin
	name = "Thunderdome (Admin.)"
	icon_state = "purple"

/area/tdome/tdomeobserve
	name = "Thunderdome (Observer.)"
	icon_state = "purple"

/area/tdome/testing
	name = "Thunderdome (TESTING AREA)"
	icon_state = "purple"

/area/tdome/testing/engineering
	requires_power = 0
	dynamic_lighting = 1

/area/tdome/testing/engineering/unpowered
	requires_power = 1

//Z 1
/area/shuttle/administration/centcom
	name = "\improper Administration Shuttle"
	icon_state = "shuttlered"
	req_access = list(access_cent_general)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/shuttle/escape_pod1/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod2/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod3/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod5/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/transport1/centcom
	icon_state = "shuttle"
	name = "\improper Transport Shuttle Centcom"

/area/prison/solitary
	name = "Solitary Confinement"
	icon_state = "brig"
	req_access = list(access_brig)

//MEDICAL


//CARGO

//Kitchen
/area/kitchen
	name = "Kitchen"
	icon_state = "kitchen"

/area/kitchen/backroom
	icon = 'maps/castelnau/icons/areas.dmi'
	name = "Kitchen Storage"
	icon_state = "kitchen_back"

//lounge
/area/lounge
	name = "\improper Lounge"
	icon_state = "crew_quarters"
	sound_env = MEDIUM_SOFTFLOOR

/////////////////
//  CASTELNAU  //
/////////////////

//SHUTTLES	

/area/shuttle/castelnau
	icon = 'maps/castelnau/icons/areas.dmi'
	base_turf = /turf/space
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

//	Prometeus

/area/shuttle/castelnau
	requires_power = 1

/area/shuttle/castelnau/prometeus/cockpit
	icon_state = "pro_crew"
	name = "Prometeus - Cockpit"

/area/shuttle/castelnau/prometeus/external
	icon_state = "pro_ext"
	name = "Prometeus - External Storage"

/area/shuttle/castelnau/prometeus/power
	icon_state = "pro_eng"
	name = "Prometeus - Power Compartment"

/area/shuttle/castelnau/prometeus/medical
	icon_state = "pro_med"
	name = "Prometeus - Medical Compartment"

/area/shuttle/castelnau/prometeus/airlock
	icon_state = "pro_ext"
	name = "Prometeus - Airlock Compartment"

/area/shuttle/castelnau/prometeus/hall
	icon_state = "pro_hall"
	name = "Prometeus - Hall"

/area/shuttle/castelnau/prometeus/rnd
	icon_state = "pro_rnd"
	name = "Prometeus - Research"

/area/shuttle/castelnau/prometeus/robotic
	icon_state = "pro_robo"
	name = "Prometeus - Robotic Lab"

/area/shuttle/castelnau/prometeus/anomaly
	icon_state = "pro_ano"
	name = "Prometeus - Anomaly Lab"

/area/shuttle/castelnau/prometeus/botany
	icon_state = "pro_bot"
	name = "Prometeus - Xenobotany"

/area/shuttle/castelnau/prometeus/equip
	icon_state = "pro_lock"
	name = "Prometeus - Equipment"

/area/shuttle/castelnau/prometeus/eva
	icon_state = "pro_eva"
	name = "Prometeus - EVA"

//	Perseus

/area/shuttle/castelnau/perseus/cockpit
	icon_state = "per_helm"
	name = "Perseus - cockpit"

/area/shuttle/castelnau/perseus/power
	icon_state = "per_eng"
	name = "Perseus - Power Compartment"

/area/shuttle/castelnau/perseus/cargo
	icon_state = "per_carg"
	name = "Perseus - Cargo Bay"

//	Bixie

/area/shuttle/castelnau/bixie/cockpit
	icon_state = "bix_helm"
	name = "Bixie - Cockpit"

/area/shuttle/castelnau/bixie/power
	icon_state = "bix_eng"
	name = "Bixie - Power Compartment"

/area/shuttle/castelnau/bixie/cargo
	icon_state = "bix_carg"
	name = "Bixie - Cargo Bay"


//THIRD_DECK(Z-1)

/area/hallway/primary/thirddeck/fore
	name = "Third Deck Fore Hallway"
	icon_state = "hallF"
	
/area/hallway/primary/thirddeck/aft
	name = "Third Deck Aft Hallway"
	icon_state = "hallA"

/area/maintenance/thirddeck/starboard
	name = "Third Deck Starboard Maintenance"
	icon_state = "smaint"

/area/maintenance/thirddeck/port
	name = "Third Deck Port Maintenance"
	icon_state = "pmaint"

/area/janitor
	name = "Custodial Closet"
	icon_state = "janitor"

/area/storage/expedition
	name = "Expedition Storage"
	icon_state = "storage"
	sound_env = SMALL_ENCLOSED

/area/storage/cargo
	name = "Cargo Storage"
	icon_state = "quartstorage"
	sound_env = SMALL_ENCLOSED

/area/quartermaster/hangar
	name = "Hangar Deck"
	icon_state = "hangar"
	sound_env = LARGE_ENCLOSED

//SECOND_DECK(Z-2)

/area/quartermaster/office
	name = "Supply Office"
	icon_state = "quartoffice"

/area/quartermaster/storage
	name = "Warehouse"
	icon_state = "quartstorage"
	sound_env = LARGE_ENCLOSED

/area/maintenance/seconddeck/forestarboard
	name = "Second Deck Fore Starboard Maintenance"
	icon_state = "fsmaint"

/area/maintenance/seconddeck/aftstarboard
	name = "Second Deck Aft Starboard Maintenance"
	icon_state = "asmaint"

/area/maintenance/seconddeck/starboard
	name = "Second Deck Starboard Maintenance"
	icon_state = "smaint"

/area/maintenance/seconddeck/port
	name = "Second Deck Port Maintenance"
	icon_state = "pmaint"

/area/hallway/primary/seconddeck/center
	name = "Second Deck Central Hallway"
	icon_state = "hallC3"

/area/hallway/primary/seconddeck/central_stairwell
	name = "Second Deck Central Stairwell"
	icon_state = "hallC2"

/area/engineering/storage
	name = "Engineering Storage"
	icon_state = "engineering_storage"

/area/engineering/hardstorage
	name = "Engineering Hard Storage"
	icon_state = "engineering_storage"
	sound_env = SMALL_ENCLOSED

/area/engineering/hallway
	name = "Engineering Hallway"
	icon_state = "engineering_workshop"

/area/engineering/atmos
 	name = "Atmospherics"
 	icon_state = "atmos"
 	sound_env = LARGE_ENCLOSED

/area/storage/tech
	name = "Technical Storage"
	icon_state = "storage"

/area/engineering/engine_room
	name = "Engine Room"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED
	area_flags = AREA_FLAG_ION_SHIELDED

/area/engineering/engine_smes
	name = "Engineering SMES"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED

/area/engineering/engineering_monitoring
	name = "Engineering Monitoring Room"
	icon_state = "engine_monitoring"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/thruster
	icon_state = "thruster"

/area/thruster/d1port
	name = "First Deck Port Nacelle"

/area/thruster/d1starboard
	name = "First Deck Starboard Nacelle"

/area/thruster/d2port
	name = "Second Deck Port Nacelle"

/area/thruster/d2starboard
	name = "Second Deck Starboard Nacelle"

/area/engineering/foyer
	name = "Engineering Foyer"
	icon_state = "engineering_foyer"

/area/security/
	icon = 'maps/castelnau/icons/areas.dmi'

/area/security/equip
	name = "Security - Equipment"
	icon_state = "security_equip"

/area/security/processing
	name = "Security - Processing"
	icon_state = "security_processing"

/area/security/hall
	name = "Security - Hall"
	icon_state = "security"

/area/security/brig
	name = "Security - Brig"
	icon_state = "security_brig"

//FIRST_DECK(Z-3)


/area/maintenance/firstdeck/aftstarboard
	name = "First Deck Aft Starboard Maintenance"
	icon_state = "asmaint"

/area/maintenance/firstdeck/aftport
	name = "First Deck Aft Port Maintenance"
	icon_state = "apmaint"

/area/maintenance/firstdeck/forestarboard
	name = "First Deck Fore Starboard Maintenance"
	icon_state = "fsmaint"

/area/maintenance/firstdeck/centralstarboard
	name = "First Deck Starboard Maintenance"
	icon_state = "smaint"

/area/maintenance/firstdeck/foreport
	name = "First Deck Fore Maintenance"
	icon_state = "fpmaint"
	name = "First Deck Aft Starboard Maintenance"
	icon_state = "asmaint"

/area/maintenance/firstdeck/aftport
	name = "First Deck Aft Port Maintenance"
	icon_state = "apmaint"

/area/maintenance/firstdeck/forestarboard
	name = "First Deck Fore Starboard Maintenance"
	icon_state = "fsmaint"

/area/maintenance/firstdeck/centralstarboard
	name = "First Deck Starboard Maintenance"
	icon_state = "smaint"

	name = "First Deck Fore Maintenance"
	icon_state = "fpmaint"

/area/shield
	name = "Shield Generator"
	icon_state = "engineering"
	sound_env = SMALL_ENCLOSED

/area/medical/maintenance_equipstorage
	name = "Infirmary Maintenance Storage"
	icon_state = "medbay4"

/area/medical/chemistry
	name = "Chemistry"
	icon_state = "chem"

/area/medical/infirmreception
	name = "Infirmary Reception"
	icon_state = "medbay2"

area/medical/subacute
	name = "Sub-Acute Ward"
	icon_state = "patients"

/area/medical/morgue
	name = "Morgue"
	icon_state = "morgue"
	ambience = list('sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg','sound/music/main.ogg')

/area/medical/sleeper
	name = "Emergency Treatment Center"
	icon_state = "exam_room"

/area/medical/surgery
	name = "Operating Theatre"
	icon_state = "surgery"

/area/tcommsat/chamber
	name = "Telecoms Central Compartment"
	icon_state = "tcomsatcham"

/area/hallway/primary/firstdeck/fore
	name = "First Deck Fore Hallway"
	icon_state = "hallF"

/area/hallway/primary/firstdeck/center
	name = "First Deck Central Hallway"
	icon_state = "hallC1"

/area/hallway/primary/firstdeck/aft
	name = "First Deck Aft Hallway"
	icon_state = "hallA"

/area/maintenance/substation/firstdeck
	name = "Substation"

/area/bar
	name = "Bar"
	icon_state = "bar"
	sound_env = LARGE_SOFTFLOOR

/area/restroom
	name = "Restroom"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED

/area/laundry
	name = "Laundry Room"
	icon_state = "Sleep"

/area/sleep/bunk
	name = "Dormitory"
	icon_state = "Sleep"
	sound_env = SMALL_SOFTFLOOR
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/sleep/cryo
	name = "Dormitory"
	icon_state = "Sleep"
	sound_env = SMALL_SOFTFLOOR
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/captain
	name = "Command - Captain's Office"
	icon_state = "captain"
	sound_env = MEDIUM_SOFTFLOOR

/area/storage/eva
	name = "EVA Storage"
	icon_state = "eva"

/area/bridge
	name = "Bridge"
	icon_state = "bridge"

/area/storage/primary
	name = "Primary Tool Storage"
	icon_state = "primarystorage"
