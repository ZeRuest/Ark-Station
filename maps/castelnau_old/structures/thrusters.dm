/obj/machinery/air_sensor/nacelle
	frequency = 1441

/obj/machinery/air_sensor/nacelle/first
	id_tag = "ReacEng1"

/obj/machinery/air_sensor/nacelle/first/fuel
	id_tag = "ReacEngFuel1"

/obj/machinery/air_sensor/nacelle/second
	id_tag = "ReacEng2"

/obj/machinery/air_sensor/nacelle/second/fuel
	id_tag = "ReacEngFuel2"



/obj/machinery/computer/general_air_control/engines_tanks
	name = "Nacelles Tank Monitoring"
	sensors = list("ReacEngFuel1" = "Engine 1 Fuel (H2+O2)",
				"ReacEngFuel2" = "Engine 2 Fuel (H2+O2)")

/obj/machinery/computer/general_air_control/engines_flame
	name = "Nacelles Chamber Monitoring"
	sensors = list("ReacEng1" = "Engine 1 Chamber",
 				"ReacEng2" = "Engine 2 Chamber")

/obj/machinery/computer/general_air_control/large_tank_control/nacelle/fuel
	name = "Fuel Supply Control"

/obj/machinery/computer/general_air_control/large_tank_control/nacelle/chamber
	name = "Engine Chamber Control"

/obj/machinery/computer/general_air_control/large_tank_control/nacelle/fuel/first
	input_tag = "fuel1_in"
	output_tag = "fuel1_out"
	sensors = list("ReacEngFuel1" = "Engine 1 Fuel (H2+O2)")

/obj/machinery/computer/general_air_control/large_tank_control/nacelle/fuel/second
	input_tag = "fuel2_in"
	output_tag = "fuel2_out"
	sensors = list("ReacEngFuel2" = "Engine 2 Fuel (H2+O2)")

/obj/machinery/computer/general_air_control/large_tank_control/nacelle/chamber/first
	input_tag = "chamber1_in"
	sensors = list("ReacEng1" = "Engine 1 Chamber")

/obj/machinery/computer/general_air_control/large_tank_control/nacelle/chamber/second
	input_tag = "chamber2_in"
	sensors = list("ReacEng2" = "Engine 2 Chamber")
