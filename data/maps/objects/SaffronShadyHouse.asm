SaffronShadyHouse_Object:
	db $17 ; border block

	def_warp_events
	warp_event  2,  9, LAST_MAP, 9
	warp_event  3,  9, LAST_MAP, 9

	def_bg_events

	def_object_events
	object_event  2,  6, SPRITE_CLERK, STAY, DOWN, 1
	object_event  3,  6, SPRITE_CLERK, STAY, DOWN, 2
	object_event  0,  3, SPRITE_GENTLEMAN, STAY, UP, 3 ; person
	object_event  4,  5, SPRITE_SCIENTIST, STAY, UP, 4 ; person
	object_event  0,  5, SPRITE_ERIKA, STAY, UP, 5 ; person
	object_event  4,  3, SPRITE_SILPH_WORKER, STAY, UP, 6 ; person
	object_event  1,  7, SPRITE_CLERK, STAY, RIGHT, 7
	object_event  4,  7, SPRITE_CLERK, STAY, LEFT, 8

	def_warps_to SAFFRON_SHADY_HOUSE
