Museum1F_Object:
	db $a ; border block

	def_warp_events
	warp_event 10,  7, LAST_MAP, 1
	warp_event 11,  7, LAST_MAP, 1
	warp_event 16,  7, LAST_MAP, 2
	warp_event 17,  7, LAST_MAP, 2
	warp_event  7,  7, MUSEUM_2F, 1

	def_bg_events
	bg_event 9,  0, 6 ;Fossil Exhibit Sign
	bg_event 7,  0, 6 ;Fossil Exhibit Sign
	bg_event 17,  1, 7 ;Fossil Books
	bg_event 18,  1, 7 ;Fossil Books
	bg_event 19,  1, 7 ;Fossil Books
	bg_event 12,  1, 7 ;Fossil Books
	bg_event 13,  1, 7 ;Fossil Books
	bg_event 14,  1, 7 ;Fossil Books
	
	def_object_events
	object_event 12,  4, SPRITE_SCIENTIST, STAY, LEFT, 1 ; person
	object_event  1,  4, SPRITE_GAMBLER, STAY, NONE, 2 ; person
	object_event 15,  2, SPRITE_SCIENTIST, STAY, DOWN, 3 ; person
	object_event 17,  4, SPRITE_SCIENTIST, STAY, NONE, 4 ; person
	object_event 16,  2, SPRITE_OLD_AMBER, STAY, NONE, 5 ; person

	def_warps_to MUSEUM_1F
