WayOfFish1F_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 6
	warp_event  3,  7, LAST_MAP, 6
	warp_event  3,  1, WAY_OF_FISH_BF, 1

	def_bg_events
	bg_event  5,  1, 2 ; TVText
	bg_event  7,  2, 3 ; SNESText
	bg_event  0,  2, 4 ; BedText
	bg_event  0,  3, 4 ; BedText
	
	def_object_events
	object_event  5,  6, SPRITE_COOLTRAINER_F, WALK, LEFT_RIGHT, 1

	def_warps_to WAY_OF_FISH_1F
