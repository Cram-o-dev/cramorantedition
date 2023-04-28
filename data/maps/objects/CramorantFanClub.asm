CramorantFanClub_Object:
	db $17 ; border block

	def_warp_events
	warp_event  6,  9, LAST_MAP, 11
	warp_event  7,  9, LAST_MAP, 11

	def_bg_events
	bg_event  1,  1, 10 ; MusicText
	bg_event  8,  3, 11 ; PapersText
	bg_event  9,  3, 11 ; PapersText
	bg_event 10,  3, 12 ; FeatherText
	bg_event 11,  3, 12 ; FeatherText
	bg_event  5,  0, 13 ; CramClubPictureText
	bg_event  9,  0, 14 ; CramClubPicture2Text

	def_object_events
	object_event  6, 1, SPRITE_SAILOR, STAY, DOWN, 1
	object_event  8, 7, SPRITE_BRUNETTE_GIRL, STAY, NONE, 2
	object_event 11, 7, SPRITE_SCIENTIST, STAY, UP, 3
	object_event  0, 2, SPRITE_FISHER, STAY, NONE, 4
	object_event  1, 7, SPRITE_YOUNGSTER, STAY, UP, 5
	object_event  1, 4, SPRITE_FISHING_GURU, STAY, DOWN, 6
	object_event  3, 7, SPRITE_LITTLE_GIRL, STAY, UP, 7
	object_event  3, 4, SPRITE_OFFICER_JENNY, STAY, DOWN, 8
	object_event  5, 4, SPRITE_PIKACHU, WALK, ANY_DIR, 9

	def_warps_to CRAMORANT_FAN_CLUB
