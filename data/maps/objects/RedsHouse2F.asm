RedsHouse2F_Object:
	db $a ; border block

	def_warp_events
	warp_event  7,  1, REDS_HOUSE_1F, 3
IF DEF(_DEBUG)
	warp_event  7,  2, MT_MOON_B2F, 4
	warp_event  7,  3, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event  7,  4, POKEMON_TOWER_7F, 1
	warp_event  7,  5, SILPH_CO_11F, 4
	warp_event  7,  6, CERULEAN_CAVE_B4F, 1;;;;;;;;;;;;;;;;;;;
ENDC

	def_bg_events
	bg_event  0,  6, 3 ; RedsHouse2FBedText
	bg_event  0,  7, 3
	bg_event  5,  0, 4
	
	def_object_events
	object_event  4, 1, SPRITE_PIKACHU, STAY, DOWN, 1
	object_event  6, 4, SPRITE_TROPHY, STAY, DOWN, 2

	def_warps_to REDS_HOUSE_2F
