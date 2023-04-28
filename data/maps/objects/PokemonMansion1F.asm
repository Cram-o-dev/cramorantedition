PokemonMansion1F_Object:
	db $2e ; border block

	def_warp_events
	warp_event  4, 27, LAST_MAP, 1
	warp_event  5, 27, LAST_MAP, 1
	warp_event  6, 27, LAST_MAP, 1
	warp_event  7, 27, LAST_MAP, 1
	warp_event  5, 10, POKEMON_MANSION_2F, 1
	warp_event 21, 23, POKEMON_MANSION_B1F, 1
	warp_event 26, 27, LAST_MAP, 1
	warp_event 27, 27, LAST_MAP, 1

	def_bg_events
	bg_event  27, 19, 5

	def_object_events
	object_event 17, 17, SPRITE_SCIENTIST, STAY, LEFT, 1, OPP_SCIENTIST, 4
	object_event 14,  3, SPRITE_POKE_BALL, STAY, NONE, 2, ESCAPE_ROPE
	object_event 18, 21, SPRITE_POKE_BALL, STAY, NONE, 3, CARBOS
	object_event 25,  8, SPRITE_POKEDEX, STAY, NONE, 4 ; person

	def_warps_to POKEMON_MANSION_1F
