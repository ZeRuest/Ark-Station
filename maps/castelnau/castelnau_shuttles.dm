/datum/shuttle/autodock/ferry/escape_pod/castelnaupod
	category = /datum/shuttle/autodock/ferry/escape_pod/castelnaupod
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'
	var/number

/datum/shuttle/autodock/ferry/escape_pod/castelnaupod/New()
	name = "Escape Pod [number]"
	dock_target = "escape_pod_[number]"
	arming_controller = "escape_pod_[number]_berth"
	waypoint_station = "escape_pod_[number]_start"
	landmark_transition = "escape_pod_[number]_internim"
	waypoint_offsite = "escape_pod_[number]_out"
	..()

/obj/effect/shuttle_landmark/escape_pod/
	var/number

/obj/effect/shuttle_landmark/escape_pod/start
	name = "Docked"

/obj/effect/shuttle_landmark/escape_pod/start/New()
	landmark_tag = "escape_pod_[number]_start"
	docking_controller = "escape_pod_[number]_berth"
	..()

/obj/effect/shuttle_landmark/escape_pod/transit
	name = "In transit"

/obj/effect/shuttle_landmark/escape_pod/transit/New()
	landmark_tag = "escape_pod_[number]_internim"
	..()

/obj/effect/shuttle_landmark/escape_pod/out
	name = "Escaped"

/obj/effect/shuttle_landmark/escape_pod/out/New()
	landmark_tag = "escape_pod_[number]_out"
	..()

//Pods

/datum/shuttle/autodock/ferry/escape_pod/castelnaupod/escape_pod6
	warmup_time = 10
	shuttle_area = /area/shuttle/escape_pod6/station
	number = 6
/obj/effect/shuttle_landmark/escape_pod/start/pod6
	number = 6
/obj/effect/shuttle_landmark/escape_pod/out/pod6
	number = 6
/obj/effect/shuttle_landmark/escape_pod/transit/pod6
	number = 6

/datum/shuttle/autodock/ferry/escape_pod/castelnaupod/escape_pod7
	warmup_time = 10
	shuttle_area = /area/shuttle/escape_pod7/station
	number = 7
/obj/effect/shuttle_landmark/escape_pod/start/pod7
	number = 7
/obj/effect/shuttle_landmark/escape_pod/out/pod7
	number = 7
/obj/effect/shuttle_landmark/escape_pod/transit/pod7
	number = 7

/datum/shuttle/autodock/ferry/escape_pod/castelnaupod/escape_pod8
	warmup_time = 10
	shuttle_area = /area/shuttle/escape_pod8/station
	number = 8
/obj/effect/shuttle_landmark/escape_pod/start/pod8
	number = 8
/obj/effect/shuttle_landmark/escape_pod/out/pod8
	number = 8
/obj/effect/shuttle_landmark/escape_pod/transit/pod8
	number = 8

//Prometeus

/datum/shuttle/autodock/overmap/prometeus
	name = "Prometeus"
	move_time = 90
	shuttle_area = list(
		/area/shuttle/castelnau/prometeus/cockpit,
		/area/shuttle/castelnau/prometeus/external,
		/area/shuttle/castelnau/prometeus/power,
		/area/shuttle/castelnau/prometeus/medical,
		/area/shuttle/castelnau/prometeus/airlock,
		/area/shuttle/castelnau/prometeus/hall,
		/area/shuttle/castelnau/prometeus/rnd,
		/area/shuttle/castelnau/prometeus/robotic,
		/area/shuttle/castelnau/prometeus/anomaly,
		/area/shuttle/castelnau/prometeus/botany,
		/area/shuttle/castelnau/prometeus/equip,
		/area/shuttle/castelnau/prometeus/eva
	)
	dock_target = "prometeus_shuttle_airlock"
	current_location = "nav_prometeus_dock"
	landmark_transition = "nav_prometeus_transit"
	range = 1
	fuel_consumption = 4
	logging_home_tag = "nav_prometeus_dock"
	//logging_access = access_castelnau_prometeus_helm
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/obj/effect/shuttle_landmark/castelnau/hangar/prometeus
	name = "Prometeus Hangar"
	landmark_tag = "nav_prometeus_dock"
	docking_controller = "prometeus_shuttle_dock"
	base_area = /area/space
	base_turf = /turf/space


/obj/effect/shuttle_landmark/castelnau/transit/prometeus
	name = "Transit"
	landmark_tag = "nav_prometeus_transit"

//bixie
/datum/shuttle/autodock/overmap/bixie
	name = "Bixie"
	move_time = 90
	shuttle_area = list(
		/area/shuttle/castelnau/bixie/cockpit,
		/area/shuttle/castelnau/bixie/power,
		/area/shuttle/castelnau/bixie/cargo
	)
	dock_target = "bixie_shuttle"
	current_location = "nav_bixie_dock"
	landmark_transition = "nav_bixie_transit"
	range = 1
	fuel_consumption = 4
	logging_home_tag = "nav_bixie_dock"
	//logging_access = access_hangar
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/obj/effect/shuttle_landmark/castelnau/hangar/bixie
	name = "Bixie Hangar"
	landmark_tag = "nav_bixie_dock"
	docking_controller = "bixie_shuttle_dock"
	base_area = /area/space
	base_turf = /turf/space

/obj/effect/shuttle_landmark/castelnau/transit/bixie
	name = "Transit"
	landmark_tag = "nav_bixie_transit"

//Perseus

/datum/shuttle/autodock/overmap/perseus
	name = "Perseus"
	move_time = 90
	shuttle_area = list(
		/area/shuttle/castelnau/perseus/cockpit,
		/area/shuttle/castelnau/perseus/power,
		/area/shuttle/castelnau/perseus/cargo
	)
	dock_target = "perseus_shuttle"
	current_location = "nav_perseus_dock"
	landmark_transition = "nav_perseus_transit"
	range = 1
	fuel_consumption = 4
	logging_home_tag = "nav_perseus_dock"
	//logging_access = access_hangar
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/obj/effect/shuttle_landmark/castelnau/hangar/perseus
	name = "Perseus Hangar"
	landmark_tag = "nav_perseus_dock"
	docking_controller = "perseus_shuttle_dock"
	base_area = /area/space
	base_turf = /turf/space

/obj/effect/shuttle_landmark/castelnau/transit/perseus
	name = "Transit"
	landmark_tag = "nav_perseus_transit"

/obj/effect/shuttle_landmark/castelnau/simple_mark
	name = "Simple mark"
	landmark_tag = "nav_space_near_third_deck"

/obj/effect/shuttle_landmark/castelnau/first_deck/one
	name = "Simple mark - first deck north"
	landmark_tag = "nav_space_first_0"

/obj/effect/shuttle_landmark/castelnau/first_deck/two
	name = "Simple mark - first deck south"
	landmark_tag = "nav_space_first_1"

/obj/effect/shuttle_landmark/castelnau/second_deck/one
	name = "Simple mark - second deck north"
	landmark_tag = "nav_space_second_0"

/obj/effect/shuttle_landmark/castelnau/second_deck/two
	name = "Simple mark - second deck south"
	landmark_tag = "nav_space_second_1"

/obj/effect/shuttle_landmark/castelnau/third_deck/one
	name = "Simple mark - third deck north"
	landmark_tag = "nav_space_third_0"

/obj/effect/shuttle_landmark/castelnau/third_deck/two
	name = "Simple mark - third deck south"
	landmark_tag = "nav_space_third_1"