#if !defined(using_map_DATUM)

	#include "castelnau_announcements.dm"
	#include "castelnau_antagonism.dm"
	//#include "castelnau_areas.dm"
	#include "areas_new.dm"
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

	#include "items/cards_ids.dm"
	#include "items/encryption_keys.dm"
	#include "items/headsets.dm"
	#include "items/items.dm"
	#include "items/lighting.dm"
	#include "items/machinery.dm"
	#include "items/random.dm"
	#include "items/mobile_ladders.dm"
	#include "items/exploration_suit.dm"
//	#include "items/manuals.dm"
//	#include "items/uniform_vendor.dm"

	#include "items/clothing/solgov-accessory.dm"
	#include "items/clothing/solgov-armor.dm"
	#include "items/clothing/solgov-feet.dm"
	#include "items/clothing/solgov-hands.dm"
	#include "items/clothing/solgov-head.dm"
	#include "items/clothing/solgov-suit.dm"
	#include "items/clothing/solgov-under.dm"
	#include "items/clothing/terran-accessory.dm"
	#include "items/clothing/terran-feet.dm"
	#include "items/clothing/terran-hands.dm"
	#include "items/clothing/terran-head.dm"
	#include "items/clothing/terran-suit.dm"
	#include "items/clothing/terran-under.dm"

	#include "datums/cardmod.dm"

	#include "job/access.dm"

	#include "job/jobs.dm"
	#include "job/jobs_cargo.dm"
	#include "job/jobs_command.dm"
	#include "job/jobs_engineering.dm"
	#include "job/jobs_medical.dm"
	#include "job/jobs_misc.dm"
	#include "job/jobs_research.dm"
	#include "job/jobs_security.dm"
	#include "job/jobs_service.dm"

	#include "job/outfits/castelnau_outfits.dm"
	#include "job/outfits/command_outfits.dm"
	#include "job/outfits/engineering_outfits.dm"
	#include "job/outfits/medical_outfits.dm"
	#include "job/outfits/misc_outfits.dm"
	#include "job/outfits/research_outfits.dm"
	#include "job/outfits/security_outfits.dm"
	#include "job/outfits/service_outfits.dm"
	#include "job/outfits/supply_outfits.dm"

	#include "machinery/apc.dm"
	#include "machinery/keycard authentication.dm"
	#include "machinery/lighting.dm"

	#include "structures/closets/command.dm"
	#include "structures/sofa.dm"
//	#include "structures/signs.dm"
	#include "structures/thrusters.dm"
	#include "structures/atmos.dm"
	#include "structures/navlights.dm"

	#include "structures/closets/command.dm"
//	#include "structures/closets/engineering.dm"
	#include "structures/closets/research.dm"
	#include "structures/closets/security.dm"
	#include "structures/closets/supply.dm"
//	#include "structures/closets/random.dm"

	#include "loadout/_defines.dm"
	#include "loadout/loadout_accessories.dm"
	#include "loadout/loadout_eyes.dm"
	#include "loadout/loadout_gloves.dm"
	#include "loadout/loadout_guns.dm"
	#include "loadout/loadout_head.dm"
	#include "loadout/loadout_shoes.dm"
	#include "loadout/loadout_suit.dm"
	#include "loadout/loadout_uniform.dm"
	#include "loadout/loadout_xeno.dm"
	#include "loadout/~defines.dm"

	#include "castelnau-1.dmm"
	#include "castelnau-2.dmm"
	#include "castelnau-3.dmm"
	#include "z1-admin.dmm"
	#include "z2-transit.dmm"
	#include "../away/empty.dmm"
	#include "../away/bearcat/bearcat.dm"
	#include "../away/blueriver/blueriver.dm"
	#include "../away/casino/casino.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/icarus/icarus.dm"
	#include "../away/lar_maria/lar_maria.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/mining/mining.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/skrellscoutship/skrellscoutship.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/unishi/unishi.dm"
	#include "../away/voxship/voxship.dm"
	#include "../away/yacht/yacht.dm"

	#define using_map_DATUM /datum/map/castelnau

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Castelnau

#endif
