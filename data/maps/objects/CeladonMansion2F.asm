CeladonMansion2F_Object:
	db $f ; border block

	def_warp_events
	warp_event  6,  1, CELADON_MANSION_3F, 1
	warp_event  7,  1, CELADON_MANSION_1F, 4
	warp_event  2,  1, CELADON_MANSION_1F, 5
	warp_event  4,  1, CELADON_MANSION_3F, 4

	def_bg_events
	bg_event  4,  9, 3 ; CeladonMansion2Text1
	bg_event  1,  5, 4 ; CeladonMansion2PCText

	def_object_events
	object_event  0,  6, SPRITE_BIRD, STAY, UP, 1
	object_event  3,  4, SPRITE_BIRD, WALK, LEFT_RIGHT, 2 ; person

	def_warps_to CELADON_MANSION_2F
