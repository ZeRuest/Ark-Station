/obj/machinery/atmospherics/pipeturbine //Fixes overlay direction
	icon = 'code_ark/icons/obj/pipeturbine.dmi'

/obj/machinery/power/turbinemotor/updateConnection() //Fixes locating the turbine for the motor
	turbine = null
	if(src.loc && anchored)
		turbine = locate(/obj/machinery/atmospherics/pipeturbine) in get_step(src,dir)
		if (turbine.stat & (BROKEN) || !turbine.anchored || turbine.dir != dir)
			turbine = null