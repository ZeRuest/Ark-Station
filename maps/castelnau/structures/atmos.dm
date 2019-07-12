//
//SENSORS FOR ATMOSPHERICS
//

/obj/machinery/air_sensor/atmos
	output = 127
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
//SENSORS FOR GENERATOR
//

/obj/machinery/air_sensor/gen
	output = 127
	frequency = 1441

/obj/machinery/air_sensor/gen/chamber
	id_tag = "gen_chamber"

/obj/machinery/air_sensor/gen/hydrogen
	id_tag = "gen_h2"

/obj/machinery/air_sensor/gen/oxygen
	id_tag = "gen_o2"

//
//SENSORS FOR REACTOR
//

/obj/machinery/air_sensor/reactor
	output = 127
	frequency = 1441

/obj/machinery/air_sensor/reactor/one
	id_tag = "reac_chamber_1"

/obj/machinery/air_sensor/reactor/two
	id_tag = "reac_chamber_2"


//
//COMPUTERS FOR ATMOSPHERICS
//

/obj/machinery/computer/general_air_control/large_tank_control/atmos/air
	name = "Air Tank Control"
	input_tag = "air_in"
	output_tag = "air_out"
	sensors = list("air" = "Air Tank")

/obj/machinery/computer/general_air_control/large_tank_control/atmos/nitrogen
	name = "Nitrogen Tank Control"
	input_tag = "n2_in"
	output_tag = "n2_out"
	sensors = list("n2" = "Nitrogen Tank")

/obj/machinery/computer/general_air_control/large_tank_control/atmos/oxygen
	name = "Oxygen Tank Control"
	input_tag = "o2_in"
	output_tag = "o2_out"
	sensors = list("o2" = "Oxygen Tank")

/obj/machinery/computer/general_air_control/large_tank_control/atmos/carbon_dioxide
	name = "Carbon Dioxide Tank Control"
	input_tag = "co2_in"
	output_tag = "co2_out"
	sensors = list("co2" = "Carbon Dioxide Tank")

/obj/machinery/computer/general_air_control/large_tank_control/atmos/nitrous_oxide
	name = "Nitrous Oxide Tank Control"
	input_tag = "n2o_in"
	output_tag = "n2o_out"
	sensors = list("n2o" = "Nitrous Oxide Tank")

/obj/machinery/computer/general_air_control/large_tank_control/atmos/hydrogen
	name = "Hydrogen Tank Control"
	input_tag = "h2_in"
	output_tag = "h2_out"
	sensors = list("h2" = "Hydrogen Tank")

//
//COMPUTERS FOR GENERATOR
//

/obj/machinery/computer/general_air_control/large_tank_control/gen/chamber
	name = "Generator Chamber Control"
	input_tag = "gen_chamber_in"
	sensors = list("gen_chamber" = "Generator Chamber")

/obj/machinery/computer/general_air_control/large_tank_control/gen/hydrogen
	name = "Generator Hydrogen Tank Control"
	input_tag = "gen_h2_in"
	output_tag = "gen_h2_out"
	sensors = list("gen_h2" = "Generator Hydrogen Tank")

/obj/machinery/computer/general_air_control/large_tank_control/gen/oxygen
	name = "Generator Oxygen Tank Control"
	input_tag = "gen_o2_in"
	output_tag = "gen_o2_out"
	sensors = list("gen_o2" = "Generator Oxygen Tank")

//
//COMPUTERS FOR REACTOR
//

/obj/machinery/computer/general_air_control/large_tank_control/reactor/one
	name = "Circulation Pumps 1 Control"
	input_tag = "reac_chamber_in_1"
	output_tag = "reac_chamber_out_2"
	sensors = list("reac_chamber_1" = "Reactor Chamber")

/obj/machinery/computer/general_air_control/large_tank_control/reactor/two
	name = "Generator Hydrogen Tank Control"
	input_tag = "reac_chamber_in_2"
	output_tag = "reac_chamber_out_2"
	sensors = list("reac_chamber_2" = "Reactor Chamber")

//
//GENERAL
//

/obj/machinery/atmospherics/unary/vent_pump/siphon/on/atmos
	frequency = 1441

/obj/machinery/atmospherics/unary/outlet_injector
	frequency = 1441
	injecting = 1