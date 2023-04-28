WayOfFishBF_Object:
	db $62 ; border block

	def_warp_events
	warp_event  8, 11, WAY_OF_FISH_1F, 3

	def_bg_events
	bg_event  8,  3, 5 ; StatueText
	bg_event 11,  3, 6 ; StatueText

	def_object_events
	object_event  5,  8, SPRITE_COOLTRAINER_M, STAY, DOWN, 1, OPP_COOLTRAINER_M, 11
	object_event  2,  2, SPRITE_LITTLE_BOY, STAY, DOWN, 2, OPP_YOUNGSTER, 15
	object_event  9,  3, SPRITE_ROCKER, STAY, DOWN, 3, OPP_ROCKER, 3
	object_event 10,  2, SPRITE_POKE_BALL, STAY, NONE, 4

	def_warps_to WAY_OF_FISH_BF
