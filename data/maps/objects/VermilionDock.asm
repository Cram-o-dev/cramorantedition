VermilionDock_Object:
	db $f ; border block

	def_warp_events
	warp_event 14,  0, LAST_MAP, 6
	warp_event 14,  2, SS_ANNE_1F, 2

	def_bg_events
	bg_event  1,  1, 2 ; CratesText
	bg_event  1,  0, 2
	bg_event 26,  0, 2
	bg_event 26,  1, 2
	bg_event 27,  1, 2
	bg_event 26, 10, 2
	bg_event 27, 10, 2
	bg_event 27,  5, 3 ; SignText
	bg_event 20,  0, 4 ; TruckText
	
	def_object_events
	object_event 21, 0, SPRITE_BLANK, STAY, NONE, 1, MEW, 50
	
	def_warps_to VERMILION_DOCK
