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
		/area/shuttle/escape_pod10/station,
		/area/shuttle/escape_pod12/station,
		/area/shuttle/escape_pod13/station,
		/area/shuttle/escape_pod14/station,
		/area/shuttle/escape_pod15/station,
		/area/shuttle/escape_pod16/station,
		/area/shuttle/escape_pod17/station,
		/area/shuttle/administration/centcom,
		/area/shuttle/specops/centcom,
	)

//Third Deck (Z-1)
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


//Second Deck (Z-2)
/area/hallway/primary/seconddeck/center
	name = "Second Deck Central Hallway"
	icon_state = "hallC3"

/area/hallway/primary/seconddeck/central_stairwell
	name = "Second Deck Central Stairwell"
	icon_state = "hallC2"

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

//First Deck (Z-3)
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
	name = "First Deck Substation"


//sierra large pods
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

/area/shuttle/escape_pod10/station
	name = "Escape Pod Five"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//sierra small pods
/area/shuttle/escape_pod12/station
	name = "Escape Pod Seven"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod13/station
	name = "Escape Pod Eight"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod14/station
	name = "Escape Pod Nine"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod15/station
	name = "Escape Pod Ten"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod16/station
	name = "Escape Pod Eleven"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod17/station
	name = "Escape Pod Twelve"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//Castelnau

/area/shuttle/castelnau
	icon = 'maps/castelnau/icons/areas.dmi'
	base_turf = /turf/space
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

//Prometeus

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

//Perseus

/area/shuttle/castelnau/perseus/cockpit
	icon_state = "per_helm"
	name = "Perseus - cockpit"

/area/shuttle/castelnau/perseus/power
	icon_state = "per_eng"
	name = "Perseus - Power Compartment"

/area/shuttle/castelnau/perseus/cargo
	icon_state = "per_carg"
	name = "Perseus - Cargo Bay"

//Bixie

/area/shuttle/castelnau/bixie/cockpit
	icon_state = "bix_helm"
	name = "Bixie - Cockpit"

/area/shuttle/castelnau/bixie/power
	icon_state = "bix_eng"
	name = "Bixie - Power Compartment"

/area/shuttle/castelnau/bixie/cargo
	icon_state = "bix_carg"
	name = "Bixie - Cargo Bay"

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

// Elevator areas.
/area/turbolift/sierra_top
	name = "lift (first deck)"
	lift_floor_label = "Deck 1"
	lift_floor_name = "Main Deck"
	lift_announce_str = "Arriving at Command Deck: Bridge. Meeting Room. Infirmary. AI Core. Landing Area. Auxiliary EVA."

/area/turbolift/sierra_middle
	name = "lift (second deck)"
	lift_floor_label = "Deck 2"
	lift_floor_name = "Living Deck"
	lift_announce_str = "Arriving at Operations Deck: Research Wing. Auxiliary Cryogenic Storage. Emergency Armory. Diplomatic Quarters. Captain's Mess. Exploration Leader's Office."

/area/turbolift/sierra_ground
	name = "lift (third deck)"
	lift_floor_label = "Deck 3"
	lift_floor_name = "Hangar Deck"
	lift_announce_str = "Arriving at Hangar Deck: Shuttle Docks. Cargo Storage. Main Hangar. Supply Office. Expedition Preparation. Mineral Processing."
	base_turf = /turf/simulated/floor

// Command
/area/crew_quarters/heads/office/captain
	name = "Command - Captain's Office"
	icon_state = "captain"
	sound_env = MEDIUM_SOFTFLOOR

/area/ai_monitored/storage/eva
	name = "EVA Storage"
	icon_state = "eva"

/area/maintenance/exterior
	name = "Exterior Reinforcements"
	icon_state = "maint_security_starboard"
	area_flags = AREA_FLAG_EXTERNAL
	has_gravity = FALSE
	turf_initializer = /decl/turf_initializer/maintenance/space

// Engineering
/area/engineering/hallway
	name = "Engineering Hallway"
	icon_state = "engineering_workshop"

/area/engineering/hardstorage
	name = "Engineering Hard Storage"
	icon_state = "engineering_storage"
	sound_env = SMALL_ENCLOSED

// Storage
/area/storage/cargo
	name = "Cargo Storage"
	icon_state = "quartstorage"
	sound_env = SMALL_ENCLOSED

/area/storage/expedition
	name = "Expedition Storage"
	icon_state = "storage"
	sound_env = SMALL_ENCLOSED

// Supply
/area/quartermaster/hangar
	name = "Hangar Deck"
	icon_state = "hangar"
	sound_env = LARGE_ENCLOSED

// Crew areas
/area/crew_quarters/bar
	name = "Bar"
	icon_state = "bar"
	sound_env = LARGE_SOFTFLOOR

/area/crew_quarters/head
	name = "Head"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED

/area/crew_quarters/galley
	name = "Galley"
	icon_state = "kitchen"

/area/crew_quarters/galleybackroom
	name = "Galley Cold Storage"
	icon_state = "kitchen"

/area/crew_quarters/laundry
	name = "Laundry Room"
	icon_state = "Sleep"

/area/crew_quarters/lounge
	name = "Lounge"
	icon_state = "crew_quarters"
	sound_env = MEDIUM_SOFTFLOOR

/area/crew_quarters/sleep/bunk
	name = "Dormitory"
	icon_state = "Sleep"
	sound_env = SMALL_SOFTFLOOR
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

// Medbay
/area/medical/maintenance_equipstorage
	name = "Infirmary Maintenance Storage"
	icon_state = "medbay4"

/area/medical/infirmreception
	name = "Infirmary Reception"
	icon_state = "medbay2"

area/medical/subacute
	name = "Sub-Acute Ward"
	icon_state = "patients"

// Shield Rooms
/area/shield
	name = "Shield Generator"
	icon_state = "engineering"
	sound_env = SMALL_ENCLOSED

/area/shield/firstdeck
	name = "First Deck Shield Generator"

// Misc
/area/deity_spawn
	name = "Deity Spawn"
	icon_state = "yellow"
	requires_power = 0
	dynamic_lighting = 0

/area/teleporter
	name = "Teleporter"
	icon_state = "teleporter"
	sound_env = SMALL_ENCLOSED

/area/thruster
	icon_state = "thruster"

/area/thruster/d1port
	name = "First Deck Port Nacelle"

/area/thruster/d1starboard
	name = "First Deck Starboard Nacelle"

/area/thruster/d3port
	name = "Third Deck Port Nacelle"

/area/thruster/d3starboard
	name = "Third Deck Starboard Nacelle"

// Command

/area/bridge
	name = "Bridge"
	icon_state = "bridge"

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

// Storage

/area/storage/primary
	name = "Primary Tool Storage"
	icon_state = "primarystorage"

/area/storage/tech
	name = "Technical Storage"
	icon_state = "storage"

// Holodecks

/area/holodeck
	name = "Holodeck"
	icon_state = "Holodeck"
	dynamic_lighting = 0
	sound_env = LARGE_ENCLOSED

/area/holodeck/alphadeck
	name = "Holodeck Alpha"

/area/holodeck/source_plating
	name = "Holodeck - Off"

/area/holodeck/source_emptycourt
	name = "Holodeck - Empty Court"
	sound_env = ARENA

/area/holodeck/source_boxingcourt
	name = "Holodeck - Boxing Court"
	sound_env = ARENA

/area/holodeck/source_basketball
	name = "Holodeck - Basketball Court"
	sound_env = ARENA

/area/holodeck/source_thunderdomecourt
	name = "Holodeck - Thunderdome Court"
	sound_env = ARENA

/area/holodeck/source_courtroom
	name = "Holodeck - Courtroom"
	sound_env = AUDITORIUM

/area/holodeck/source_beach
	name = "Holodeck - Beach"
	sound_env = PLAIN

/area/holodeck/source_wildlife
	name = "Holodeck - Wildlife Simulation"

/area/holodeck/source_military
	name = "Holodeck - Military Parade Ground"
	sound_env = AUDITORIUM

/area/holodeck/source_meetinghall
	name = "Holodeck - Meeting Hall"
	sound_env = AUDITORIUM

/area/holodeck/source_theatre
	name = "Holodeck - Theatre"
	sound_env = CONCERT_HALL

/area/holodeck/source_picnicarea
	name = "Holodeck - Picnic Area"
	sound_env = PLAIN

/area/holodeck/source_snowfield
	name = "Holodeck - Snow Field"
	sound_env = FOREST

/area/holodeck/source_desert
	name = "Holodeck - Desert"
	sound_env = PLAIN

/area/holodeck/source_space
	name = "Holodeck - Space"
	has_gravity = 0
	sound_env = SPACE

/area/holodeck/source_cafe
	name = "Holodeck - Cafe"
	sound_env = PLAIN

/area/holodeck/source_volleyball
	name = "Holodeck - Volleyball"
	sound_env = PLAIN


// Engineering
/area/engineering/engine_room
	name = "Engine Room"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED
	area_flags = AREA_FLAG_ION_SHIELDED

/area/engineering/engine_monitoring
	name = "Engine Monitoring Room"
	icon_state = "engine_monitoring"

/area/engineering/engine_smes
	name = "Engineering SMES"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED

/area/engineering/engineering_monitoring
	name = "Engineering Monitoring Room"
	icon_state = "engine_monitoring"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/engineering/foyer
	name = "Engineering Foyer"
	icon_state = "engineering_foyer"

/area/engineering/storage
	name = "Engineering Storage"
	icon_state = "engineering_storage"

/area/engineering/atmos
 	name = "Atmospherics"
 	icon_state = "atmos"
 	sound_env = LARGE_ENCLOSED

// Medical
/area/medical/chemistry
	name = "Chemistry"
	icon_state = "chem"

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

/area/alien
	name = "Alien base"
	icon_state = "yellow"
	requires_power = 0

/area/shuttle/alien/base
	icon_state = "shuttle"
	name = "Alien Shuttle Base"
	requires_power = 1

/area/admin_prison
	name = "Admin Prison"
	dynamic_lighting = 0
	requires_power = 0


// Shuttles
/area/shuttle/administration/centcom
	name = "Administration Shuttle"
	icon_state = "shuttlered"

/area/supply/dock
	name = "Supply Shuttle"
	icon_state = "shuttle3"
	requires_power = 0

// Cargo
/area/quartermaster/office
	name = "Supply Office"
	icon_state = "quartoffice"

/area/quartermaster/storage
	name = "Warehouse"
	icon_state = "quartstorage"
	sound_env = LARGE_ENCLOSED

// Crew
/area/crew_quarters/sleep/cryo
	name = "Cryogenic Storage"
	icon_state = "Sleep"

/area/janitor
	name = "Custodial Closet"
	icon_state = "janitor"

// Tcomm
/area/tcommsat/chamber
	name = "Telecoms Central Compartment"
	icon_state = "tcomsatcham"
	ambience = list('sound/ambience/ambisin2.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/ambigen10.ogg')

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