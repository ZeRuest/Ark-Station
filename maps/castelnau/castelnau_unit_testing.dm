/datum/map/castelnau
	// Unit test exemptions
	apc_test_exempt_areas = list(
		/area/space = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/castelnau/maintenance/thirddeck/port = NO_SCRUBBER,
		/area/shuttle/castelnau/prometeus/external = NO_SCRUBBER,
		/area/shuttle/castelnau/bixie/power = NO_SCRUBBER|NO_VENT,
		/area/shuttle/castelnau/perseus/power = NO_SCRUBBER|NO_VENT,
		/area/shuttle/castelnau/prometeus/power = NO_SCRUBBER|NO_VENT,
		/area/castelnau/thruster/d2port = NO_SCRUBBER,
		/area/castelnau/maintenance = NO_SCRUBBER|NO_VENT,
		/area/castelnau/maintenance/seconddeck/port = NO_SCRUBBER|NO_VENT,
		/area/castelnau/maintenance/seconddeck/forestarboard = NO_SCRUBBER,
		/area/castelnau/maintenance/seconddeck/starboard = NO_SCRUBBER|NO_VENT
	)

	area_coherency_test_exempt_areas = list(
	)

	area_usage_test_exempted_areas = list(
		/area/overmap
	)

/datum/unit_test/zas_area_test/bridge
	name = "ZAS: Bridge"
	area_path = /area/castelnau/command/bridge

/datum/unit_test/zas_area_test/warehouse
	name = "ZAS: Warehouse"
	area_path = /area/castelnau/supply/storage
