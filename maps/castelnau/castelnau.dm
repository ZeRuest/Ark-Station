#if !defined(using_map_DATUM)

	#include "castelnau_announcements.dm"
	#include "castelnau_antagonism.dm"
	#include "castelnau_areas.dm"
	#include "castelnau_lobby.dm"
	#include "castelnau_overmap.dm"
	#include "castelnau_presets.dm"
	#include "castelnau_procs.dm"
	#include "castelnau_ranks.dm"
	#include "castelnau_renames.dm"
	#include "castelnau_security_state.dm"
	#include "castelnau_shuttles.dm"
//	#include "castelnau_unit_testing.dm"

	#include "datums/reports.dm"
//	#include "datums/cardmod.dm"

	#include "items/cards_ids.dm"
	#include "items/encryption_keys.dm"
	#include "items/headsets.dm"
//	#include "items/items.dm"
	#include "items/lighting.dm"
	#include "items/machinery.dm"
	#include "items/random.dm"
	#include "items/mobile_ladders.dm"
//	#include "items/manuals.dm"
//	#include "items/uniform_vendor.dm"

	#include "job/access.dm"
	#include "job/jobs.dm"
	#include "job/outfits.dm"

	#include "job/jobs_cargo.dm"
	#include "job/jobs_command.dm"
	#include "job/jobs_engineering.dm"
	#include "job/jobs_medical.dm"
	#include "job/jobs_misc.dm"
	#include "job/jobs_research.dm"
	#include "job/jobs_security.dm"
	#include "job/jobs_service.dm"

	#include "machinery/vendors.dm"
	#include "machinery/apc.dm"

//	#include "structures/closets.dm"
	#include "structures/closets/command.dm"
	#include "structures/sofa.dm"
//	#include "structures/signs.dm"
//	#include "structures/other.dm"
	#include "structures/thrusters.dm"
	#include "structures/atmos.dm"
	#include "structures/navlights.dm"

//	#include "structures/closets/armory.dm"
//	#include "structures/closets/command.dm"
//	#include "structures/closets/engineering.dm"
//	#include "structures/closets/medical.dm"
//	#include "structures/closets/misc.dm"
//	#include "structures/closets/research.dm"
//	#include "structures/closets/security.dm"
//	#include "structures/closets/services.dm"
//	#include "structures/closets/supply.dm"
//	#include "structures/closets/exploration.dm"

	#include "castelnau-1.dmm"
	#include "castelnau-2.dmm"
	#include "castelnau-3.dmm"
	#include "castelnau-5.dmm"

//	#include "../away/empty.dmm"

//	#include "../away/bearcat/bearcat.dm"
//	#include "../away/mining/mining.dm"
//	#include "../away/derelict/derelict.dm"
//	#include "../away/magshield/magshield.dm"
//	#include "../away/casino/casino.dm"
//	#include "../away/blueriver/blueriver.dm"
//	#include "../away/icarus/icarus.dm"
//	#include "../away/errant_pisces/errant_pisces.dm"
//	#include "../away/lar_maria/lar_maria.dm"
//	#include "../away/unishi/unishi.dm"
//	#include "../away/slavers/slavers_base.dm"

//	#include "crutch.dm"

	#define using_map_DATUM /datum/map/castelnau

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Castelnau

#endif