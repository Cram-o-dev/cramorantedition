Route21House_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  5, LAST_MAP, 1
	warp_event  3,  5, LAST_MAP, 1

	def_bg_events
	bg_event  2,  0, 3 ; SeaWindowText
	bg_event  3,  0, 3
	bg_event  4,  0, 3
	bg_event  5,  0, 3

	def_object_events
	object_event  2,  2, SPRITE_NURSE, STAY, RIGHT, 1 ; person
	object_event  5,  4, SPRITE_OFFICER_JENNY, WALK, ANY_DIR, 2

	def_warps_to ROUTE_21_HOUSE
