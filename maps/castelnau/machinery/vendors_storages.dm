//MEDICAL
/obj/machinery/smartfridge/secure/medbay
	req_access = list(access_castelnau_medical)

/obj/machinery/vending/medical
	req_access = list(access_castelnau_medical)

/obj/machinery/suit_storage_unit/medical
	req_access = list(access_castelnau_medical)

/obj/machinery/suit_cycler/medical
	req_access = list(access_castelnau_medical)

//ENGINEERING
/obj/machinery/vending/engivend
	req_access = list(access_castelnau_engineering)

/obj/machinery/suit_storage_unit/engineering
	req_access = list(access_castelnau_engineering)

/obj/machinery/suit_cycler/engineering
	req_access = list(access_castelnau_engineering)

//SECURITY
/obj/machinery/vending/security
	req_access = list(access_castelnau_security)
	products = list(/obj/item/weapon/handcuffs = 14,/obj/item/weapon/grenade/flashbang = 4,/obj/item/weapon/grenade/chem_grenade/teargas = 4,/obj/item/device/flash = 7,
				/obj/item/weapon/reagent_containers/spray/pepper = 4, /obj/item/weapon/reagent_containers/food/snacks/donut/normal = 12,/obj/item/weapon/storage/box/evidence = 8)

/obj/machinery/suit_storage_unit/security
	req_access = list(access_castelnau_security)

/obj/machinery/suit_cycler/security
	req_access = list(access_castelnau_security)

//MINING
/obj/machinery/suit_storage_unit/mining
	req_access = list(access_castelnau_supply)

/obj/machinery/suit_cycler/mining
	req_access = list(access_castelnau_supply)

//SCIENCE
/obj/machinery/suit_storage_unit/science
	req_access = list(access_castelnau_prometeus)

//MISC
/obj/machinery/vending/boozeomat
	req_access = list(access_castelnau_bar)

