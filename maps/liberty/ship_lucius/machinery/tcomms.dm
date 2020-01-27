var/const/SOL_COMM_FREQ = 1363
#define	COMMS_COLOR_SOL_COMMAND    "#ff00ff"

// channel_color_presets += list("Negotiating Blue" = COMMS_COLOR_SOL_COMMAND)

/*radiochannels = list(
	"Common"		= PUB_FREQ,
	"Science"		= SCI_FREQ,
	"Command"		= COMM_FREQ,
	"Medical"		= MED_FREQ,
	"Engineering"	= ENG_FREQ,
	"Security" 		= SEC_FREQ,
	"Response Team" = ERT_FREQ,
	"Special Ops" 	= DTH_FREQ,
	"Mercenary" 	= SYND_FREQ,
	"Raider"		= RAID_FREQ,
	"Exploration"	= EXP_FREQ,
	"Supply" 		= SUP_FREQ,
	"Service" 		= SRV_FREQ,
	"AI Private"	= AI_FREQ,
	"Entertainment" = ENT_FREQ,
	"Medical(I)"	= MED_I_FREQ,
	"Security(I)"	= SEC_I_FREQ,
	"Recon"			= SKRELL_FREQ,
	"Sol Command"   = SOL_COMM_FREQ
) */


// IT IS SUPER IMPORTANT TO ADD THIS FREQUENCY TO THE LIST OF FREQUENCIES! SEE COMMUNICATIONS.DM!
// ASSIGN A COLOR!
// ADD AN ENCRYPTION KEY!
// SET THE ACCESS!


/obj/machinery/telecomms/server/presets/lucius_command
	id = "Command Server"
	freq_listening = list(SOL_COMM_FREQ)
	channel_tags = list(list(SOL_COMM_FREQ, "Sol Command", COMMS_COLOR_SOL_COMMAND))
	autolinkers = list("commandLucius")
	network = "lucius"

/obj/machinery/telecomms/server/presets/lucius_general
	id = "General Server"
	freq_listening = list(PUB_FREQ)
	channel_tags = list(list(PUB_FREQ, "General", COMMS_COLOR_COMMON))
	autolinkers = list("generalLucius")
	network = "lucius"

/obj/machinery/telecomms/receiver/preset_lucius
	id = "Lucius Receiver"
	network = "lucius"
	autolinkers = list("receiverLucius")
	freq_listening = list(PUB_FREQ, SOL_COMM_FREQ)

/obj/machinery/telecomms/bus/preset_lucius
	id = "Lucius Mainframe"
	network = "lucius"
	autolinkers = list("receiverLucius", "processorLucius", "generalLucius", "commandLucius")
	freq_listening = list(PUB_FREQ, SOL_COMM_FREQ)

/obj/machinery/telecomms/processor/preset_lucius
	id = "Lucius Processor"
	network = "lucius"
	autolinkers = list("processorPrometeus")
	freq_listening = list(PUB_FREQ, SOL_COMM_FREQ)

/obj/machinery/telecomms/broadcaster/preset_lucius
	id = "Lucius Broadcaster"
	network = "lucius"
	autolinkers = list("broadcasterLucius")
	freq_listening = list(PUB_FREQ, SOL_COMM_FREQ)
