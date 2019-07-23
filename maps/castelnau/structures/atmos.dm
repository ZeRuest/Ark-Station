//
//sensor_info FOR ATMOSPHERICS
//

/obj/machinery/air_sensor/atmos
	frequency = 1441

/obj/machinery/air_sensor/atmos/air
	id_tag = "air"

/obj/machinery/air_sensor/atmos/nitrogen
	id_tag = "n2"

/obj/machinery/air_sensor/atmos/oxygen
	id_tag = "o2"

/obj/machinery/air_sensor/atmos/carbon_dioxide
	id_tag = "co2"

/obj/machinery/air_sensor/atmos/nitrous_oxide
	id_tag = "n2o"

/obj/machinery/air_sensor/atmos/hydrogen
	id_tag = "h2"

//
//sensor_info FOR REACTOR
//

/obj/machinery/air_sensor/reactor
	frequency = 1441

/obj/machinery/air_sensor/reactor/one
	id_tag = "reac_chamber_1"

/obj/machinery/air_sensor/reactor/two
	id_tag = "reac_chamber_2"

//
//sensor_info FOR PROMETEUS
//

/obj/machinery/air_sensor/prometeus
	frequency = 1441

/obj/machinery/air_sensor/prometeus/xenobotany
	id_tag = "pro_xenobot"

/obj/machinery/air_sensor/prometeus/xenobiology
	id_tag = "pro_xenobio"

/obj/machinery/air_sensor/prometeus/anomaly
	id_tag = "pro_ano"

/obj/machinery/air_sensor/prometeus/gas
	id_tag = "pro_gas"

//
//COMPUTERS FOR ATMOSPHERICS
//

/obj/machinery/computer/air_control/large_tank_control/atmos/air
	name = "Air Tank Control"
	input_tag = "air_in"
	output_tag = "air_out"
	sensor_info = list("air" = "Air Tank")

/obj/machinery/computer/air_control/large_tank_control/atmos/nitrogen
	name = "Nitrogen Tank Control"
	input_tag = "n2_in"
	output_tag = "n2_out"
	sensor_info = list("n2" = "Nitrogen Tank")

/obj/machinery/computer/air_control/large_tank_control/atmos/oxygen
	name = "Oxygen Tank Control"
	input_tag = "o2_in"
	output_tag = "o2_out"
	sensor_info = list("o2" = "Oxygen Tank")

/obj/machinery/computer/air_control/large_tank_control/atmos/carbon_dioxide
	name = "Carbon Dioxide Tank Control"
	input_tag = "co2_in"
	output_tag = "co2_out"
	sensor_info = list("co2" = "Carbon Dioxide Tank")

/obj/machinery/computer/air_control/large_tank_control/atmos/nitrous_oxide
	name = "Nitrous Oxide Tank Control"
	input_tag = "n2o_in"
	output_tag = "n2o_out"
	sensor_info = list("n2o" = "Nitrous Oxide Tank")

/obj/machinery/computer/air_control/large_tank_control/atmos/hydrogen
	name = "Hydrogen Tank Control"
	input_tag = "h2_in"
	output_tag = "h2_out"
	sensor_info = list("h2" = "Hydrogen Tank")

//
//COMPUTERS FOR REACTOR
//

/obj/machinery/computer/air_control/large_tank_control/reactor/one
	name = "Circulation Pumps 1 Control"
	input_tag = "reac_in_1"
	output_tag = "reac_out_1"
	sensor_info = list("reac_chamber_1" = "Reactor Chamber")

/obj/machinery/computer/air_control/large_tank_control/reactor/two
	name = "Circulation Pumps 2 Control"
	input_tag = "reac_in_2"
	output_tag = "reac_out_2"
	sensor_info = list("reac_chamber_2" = "Reactor Chamber")

//
//COMPUTERS FOR PROMETEUS
//

/obj/machinery/computer/air_control/large_tank_control/prometeus/xenobotany
	name = "Isolation Chamber Atmosphere Control"
	input_tag = "pro_xenobot_in"
	output_tag = "pro_xenobot_out"
	sensor_info = list("pro_xenobot" = "Isolation Chamber")

/obj/machinery/computer/air_control/large_tank_control/prometeus/xenobiology
	name = "Isolation Chamber Atmosphere Control"
	input_tag = "pro_xenobio_in"
	output_tag = "pro_xenobio_out"
	sensor_info = list("pro_xenobio" = "Isolation Chamber")

/obj/machinery/computer/air_control/large_tank_control/prometeus/anomaly
	name = "Isolation Chamber Atmosphere Control"
	input_tag = "pro_ano_in"
	output_tag = "pro_ano_out"
	sensor_info = list("pro_ano" = "Isolation Chamber")

/obj/machinery/computer/air_control/large_tank_control/prometeus/gas
	name = "Combustion Chamber Atmosphere Control"
	input_tag = "pro_gas_in"
	output_tag = "pro_gas_out"
	sensor_info = list("pro_gas" = "Combustion Chamber")



//
//GENERAL
//

/obj/machinery/atmospherics/unary/vent_pump/siphon/on/atmos
	frequency = 1441

/obj/machinery/atmospherics/unary/outlet_injector
	frequency = 1441
	injecting = 1
