/*
 * Sierra Medical
 */

/obj/structure/closet/secure_closet/medical_sierrasenior
	name = "surgeon's locker"
	req_access = list()
	icon_state = "securesenmed1"
	icon_closed = "securesenmed"
	icon_locked = "securesenmed1"
	icon_opened = "securesenmedopen"
	icon_off = "securesenmedoff"

/obj/structure/closet/secure_closet/medical_sierrasenior/WillContain()
	return list(
		/obj/item/clothing/under/sterile,
		/obj/item/clothing/accessory/storage/white_vest,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/suit/surgicalapron,
		/obj/item/clothing/shoes/white,
		/obj/item/device/radio/headset/headset_med,
		/obj/item/taperoll/medical,
		/obj/item/weapon/storage/belt/medical,
		/obj/item/clothing/mask/surgical,
		/obj/item/device/flashlight/pen,
		/obj/item/clothing/accessory/stethoscope,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/weapon/storage/firstaid/adv,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/medic, /obj/item/weapon/storage/backpack/satchel/med)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag/med, /obj/item/weapon/storage/backpack/messenger/med)),
		RANDOM_SCRUBS = 2
	)

/obj/structure/closet/secure_closet/medical_sierra
	name = "doctor's locker"
	req_access = list()
	icon_state = "securemed1"
	icon_closed = "securemed"
	icon_locked = "securemed1"
	icon_opened = "securemedopen"
	icon_off = "securemedoff"

/obj/structure/closet/secure_closet/medical_sierra/WillContain()
	return list(
		/obj/item/clothing/under/sterile,
		/obj/item/clothing/accessory/storage/white_vest,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/suit/storage/toggle/fr_jacket,
		/obj/item/clothing/shoes/white,
		/obj/item/device/radio/headset/headset_med,
		/obj/item/taperoll/medical,
		/obj/item/weapon/storage/belt/medical/emt,
		/obj/item/device/flashlight/pen,
		/obj/item/clothing/mask/gas/half,
		/obj/item/weapon/tank/emergency/oxygen/engi,
		/obj/item/weapon/storage/box/autoinjectors,
		/obj/item/device/healthanalyzer,
		/obj/item/clothing/accessory/stethoscope,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/weapon/storage/firstaid/adv,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/medic, /obj/item/weapon/storage/backpack/satchel/med)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag/med, /obj/item/weapon/storage/backpack/messenger/med))
	)

/obj/structure/closet/wardrobe/medic_sierra
	name = "medical wardrobe"
	icon_state = "white"
	icon_closed = "white"

/obj/structure/closet/wardrobe/medic_sierra/WillContain()
	return list(
		RANDOM_SCRUBS = 2,
		/obj/item/clothing/suit/surgicalapron = 2,
		/obj/item/clothing/shoes/white = 3,
		/obj/item/clothing/suit/storage/toggle/labcoat = 3,
		/obj/item/clothing/under/sterile = 3
	)
