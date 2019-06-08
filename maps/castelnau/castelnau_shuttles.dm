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
	dock_target = "prometeus_shuttle"
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