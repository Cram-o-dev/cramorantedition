SafariZoneEastRestHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_EAST, 5
	warp_event  3,  7, SAFARI_ZONE_EAST, 5

	def_bg_events
	bg_event 2, 0, 4 ;middy text

	def_object_events
	object_event  1,  2, SPRITE_SCIENTIST, WALK, UP_DOWN, 1 ; person
	object_event  4,  2, SPRITE_ROCKER, STAY, NONE, 2 ; person
	object_event  5,  2, SPRITE_SILPH_WORKER, STAY, NONE, 3 ; person
	object_event  0,  4, SPRITE_GAMBLER, STAY, RIGHT, 5 ; person

	def_warps_to SAFARI_ZONE_EAST_REST_HOUSE
