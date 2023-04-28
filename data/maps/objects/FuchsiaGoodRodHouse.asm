FuchsiaGoodRodHouse_Object:
	db $c ; border block

	def_warp_events
	warp_event  2,  0, LAST_MAP, 9
	warp_event  2,  7, LAST_MAP, 8
	warp_event  3,  7, LAST_MAP, 8

	def_bg_events
	bg_event 7,  7, 2
	bg_event 6,  1, 2
	bg_event 1,  2, 3

	def_object_events
	object_event  5,  3, SPRITE_FISHING_GURU, STAY, RIGHT, 1 ; person

	def_warps_to FUCHSIA_GOOD_ROD_HOUSE
