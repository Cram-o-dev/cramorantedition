CeladonCity_Object:
	db $f ; border block

	def_warp_events
	warp_event  8, 13, CELADON_MART_1F, 1
	warp_event 10, 13, CELADON_MART_1F, 3
	warp_event 24,  9, CELADON_MANSION_1F, 1
	warp_event 24,  3, CELADON_MANSION_1F, 3
	warp_event 25,  3, CELADON_MANSION_1F, 3
	warp_event 41,  9, CELADON_POKECENTER, 1
	warp_event 12, 27, CELADON_GYM, 1
	warp_event 30, 19, GAME_CORNER, 1
	warp_event 27, 19, GAME_CORNER, 4
	warp_event 33, 19, GAME_CORNER_PRIZE_ROOM, 1
	warp_event 31, 27, CELADON_DINER, 1
	warp_event 35, 27, CELADON_CHIEF_HOUSE, 1
	warp_event 43, 27, CELADON_HOTEL, 1
	warp_event 43, 27, CELADON_HOTEL, 1
	warp_event 21, 15, TM_PLACE, 1
	
	def_bg_events
	bg_event 27, 15, 12 ; CeladonCityText10
	bg_event 19, 15, 13 ; CeladonCityText11
	bg_event 42,  9, 14 ; PokeCenterSignText
	bg_event 13, 29, 15 ; CeladonCityText13
	bg_event 21,  9, 16 ; CeladonCityText14
	bg_event 12, 13, 17 ; CeladonCityText15
	bg_event 39, 21, 18 ; CeladonCityText16
	bg_event 33, 21, 19 ; CeladonCityText17
	bg_event 27, 21, 20 ; CeladonCityText18

	def_object_events
	object_event  9, 17, SPRITE_LITTLE_GIRL, WALK, ANY_DIR, 1 ; person
	object_event 11, 28, SPRITE_GRAMPS, STAY, UP, 2 ; person
	object_event 14, 19, SPRITE_GIRL, WALK, UP_DOWN, 3 ; person
	object_event 25, 22, SPRITE_GRAMPS, STAY, DOWN, 4 ; person
	object_event 22, 28, SPRITE_GRAMPS, STAY, NONE, 5 ; person
	object_event 32, 12, SPRITE_FISHER, STAY, LEFT, 6 ; person
	object_event 30, 12, SPRITE_MONSTER, STAY, RIGHT, 7 ; person
	object_event 32, 29, SPRITE_ROCKET, WALK, LEFT_RIGHT, 8 ; person
	object_event 42, 14, SPRITE_ROCKET, WALK, LEFT_RIGHT, 9 ; person
	object_event 21, 16, SPRITE_FISHER, STAY, DOWN, 10
	object_event  5, 20, SPRITE_GIRL, WALK, ANY_DIR, 11

	def_warps_to CELADON_CITY
