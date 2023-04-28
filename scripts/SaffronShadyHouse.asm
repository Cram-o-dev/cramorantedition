SaffronShadyHouse_Script:
	jp EnableAutoTextBoxDrawing

SaffronShadyHouse_TextPointers:
	dw SaffronShadyHouseText1
	dw SaffronShadyHouseText2
	dw SaffronShadyHouseVendor1
	dw SaffronShadyHouseVendor2
	dw SaffronShadyHouseVendor3
	dw SaffronShadyHouseVendor4
	dw SaffronShadyHouseText3
	dw SaffronShadyHouseText4
	
SaffronShadyHouseText1:
	text_far _SaffronShadyHouseText1
	text_end

SaffronShadyHouseText2:
	text_far _SaffronShadyHouseText2
	text_end

SaffronShadyHouseVendor1::
	script_mart REVIVE, HYPER_POTION, ETHER, ELIXER, FULL_RESTORE, MAX_POTION, MAX_REVIVE, MAX_ETHER, MAX_ELIXER, HP_UP, PROTEIN, IRON, CARBOS, CALCIUM
	
SaffronShadyHouseVendor2::
	script_mart FULL_HEAL, AWAKENING, ANTIDOTE, PARLYZ_HEAL, BURN_HEAL, ICE_HEAL, X_ATTACK, X_DEFEND, X_SPEED, X_SPECIAL, DIRE_HIT, GUARD_SPEC, POKE_DOLL
	
SaffronShadyHouseVendor3::
	script_mart RARE_CANDY, REPEL, SUPER_REPEL, MAX_REPEL, FIRE_STONE, THUNDER_STONE, WATER_STONE, LEAF_STONE, MOON_STONE, LINK_CABLE, ESCAPE_ROPE, HELIX_FOSSIL, DOME_FOSSIL, OLD_AMBER
	
SaffronShadyHouseVendor4::
	script_mart  POKE_BALL, GREAT_BALL, ULTRA_BALL, SAFARI_BALL, MASTER_BALL

SaffronShadyHouseText3:
	text_far _SaffronShadyHouseText3
	text_end

SaffronShadyHouseText4:
	text_far _SaffronShadyHouseText4
	text_end