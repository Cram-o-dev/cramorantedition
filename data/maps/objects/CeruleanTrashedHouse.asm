CeruleanTrashedHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 1
	warp_event  3,  7, LAST_MAP, 1
	warp_event  3,  0, LAST_MAP, 8

	def_bg_events
	bg_event  3,  0, 3 ; CeruleanHouseTrashedText3
	bg_event  3,  4, 4 ; CeruleanHouseTrashedTable
	bg_event  6,  7, 5 ; CeruleanHouseTrashedPlant
	bg_event  7,  7, 5 ; CeruleanHouseTrashedPlant
	bg_event  6,  0, 6 ; CeruleanHouseTrashedCracks
	bg_event  7,  0, 6 ; CeruleanHouseTrashedCracks

	def_object_events
	object_event  2,  1, SPRITE_FISHING_GURU, STAY, DOWN, 1 ; person
	object_event  5,  6, SPRITE_GIRL, WALK, LEFT_RIGHT, 2 ; person

	def_warps_to CERULEAN_TRASHED_HOUSE
