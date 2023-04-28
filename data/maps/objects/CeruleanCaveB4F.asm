CeruleanCaveB4F_Object:
	db $7d ; border block

	def_warp_events
	warp_event  7, 29, CERULEAN_CAVE_B1F, 2

	def_bg_events
	bg_event 5,  29, 2
	
	def_object_events
	object_event  9, 1, SPRITE_OAK, STAY, UP, 1, OPP_PROF_OAK, 1	; Prof. Oak sprite

	def_warps_to CERULEAN_CAVE_B4F
