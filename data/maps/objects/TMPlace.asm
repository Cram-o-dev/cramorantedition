TMPlace_Object:
	db $f ; border block

	def_warp_events
	warp_event  4,  7, LAST_MAP, 15
	warp_event  5,  7, LAST_MAP, 15

	def_bg_events
	bg_event  4,  4, 8 ; TMPlaceSign1
	bg_event  9,  4, 9 ; TMPlaceSign2

	def_object_events
	object_event  8,  6, SPRITE_FISHER, WALK, LEFT_RIGHT, 1 ; person
	object_event  0,  7, SPRITE_GIRL, STAY, UP, 2 ; person
	object_event  1,  4, SPRITE_GRAMPS, STAY, DOWN, 3 ; person
	object_event  5,  3, SPRITE_CLERK, STAY, DOWN, 4 ; person
	object_event  6,  3, SPRITE_CLERK, STAY, DOWN, 5 ; person
	object_event  7,  3, SPRITE_CLERK, STAY, DOWN, 6 ; person
	object_event  8,  3, SPRITE_CLERK, STAY, DOWN, 7 ; person

	def_warps_to TM_PLACE
