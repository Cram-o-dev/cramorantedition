VermilionCitySoloGuyHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 10
	warp_event  3,  7, LAST_MAP, 10

	def_bg_events
	
	def_object_events
	object_event  5,  3, SPRITE_SUPER_NERD, STAY, LEFT, 1
	object_event  2,  4, SPRITE_MONSTER, STAY, RIGHT, 2 ; Machamp
	object_event  7,  5, SPRITE_MONSTER, STAY, NONE, 3 ; Golem
	object_event  0,  3, SPRITE_MONSTER, STAY, NONE, 4 ; Alakazam
	object_event  5,  1, SPRITE_MONSTER, STAY, DOWN, 5 ; Gengar
	

	def_warps_to VERMILION_CITY_SOLO_GUY_HOUSE
