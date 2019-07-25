/datum/map/castelnau
	// Unit test exemptions
	apc_test_exempt_areas = list(
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
