VermilionCity_Object:
	db $43 ; border block

	def_warp_events
	warp_event 11,  3, VERMILION_POKECENTER, 1
	warp_event  9, 13, POKEMON_FAN_CLUB, 1
	warp_event 23, 13, VERMILION_MART, 1
	warp_event 12, 19, VERMILION_GYM, 1
	warp_event 23, 19, VERMILION_PIDGEY_HOUSE, 1
	warp_event 18, 31, VERMILION_DOCK, 1
	warp_event 19, 31, VERMILION_DOCK, 1
	warp_event 15, 13, VERMILION_TRADE_HOUSE, 1
	warp_event  7,  3, VERMILION_OLD_ROD_HOUSE, 1
	warp_event 21,  3, VERMILION_CITY_SOLO_GUY_HOUSE, 1
	warp_event 30,  9, CRAMORANT_FAN_CLUB, 1

	def_bg_events
	bg_event 27,  3,  8 ; VermilionCityText7
	bg_event 37, 13,  9 ; VermilionCityText8
	bg_event 24, 13, 10 ; MartSignText
	bg_event 12,  3, 11 ; PokeCenterSignText
	bg_event  7, 13, 12 ; VermilionCityText11
	bg_event  7, 19, 13 ; VermilionCityText12
	bg_event 29, 15, 14 ; VermilionCityText13
	bg_event 29, 27, 15 ; HarborCramSignText
	bg_event 27,  9, 16 ; CramFanClubSignText

	def_object_events
	object_event 19,  7, SPRITE_COOLTRAINER_F, WALK, LEFT_RIGHT, 1 ; person
	object_event 14,  6, SPRITE_GAMBLER, STAY, NONE, 2 ; person
	object_event 19, 30, SPRITE_SAILOR, STAY, UP, 3 ; person
	object_event 33, 11, SPRITE_GAMBLER, STAY, LEFT, 4 ; person
	object_event 33, 12, SPRITE_MONSTER, STAY, LEFT, 5 ; person
	object_event 25, 27, SPRITE_SAILOR, WALK, LEFT_RIGHT, 6 ; person
	object_event 19, 15, SPRITE_OFFICER_JENNY, STAY, NONE, 7 ; person

	def_warps_to VERMILION_CITY
