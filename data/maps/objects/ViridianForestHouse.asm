ViridianForestHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, VIRIDIAN_FOREST, 7
	warp_event  3,  7, VIRIDIAN_FOREST, 7

	def_bg_events
	bg_event  5,  0, 2
	
	def_object_events
	object_event  2,  3, SPRITE_SILPH_PRESIDENT, STAY, RIGHT, 1 ; person

	def_warps_to VIRIDIAN_FOREST_HOUSE
