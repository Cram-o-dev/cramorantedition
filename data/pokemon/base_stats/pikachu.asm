	db DEX_PIKACHU ; pokedex id

	db  75,  90,  60,  90,  90
	;   hp  atk  def  spd  spc

	db FLYING, WATER ; type
	db 45 ; catch rate
	db 166 ; base exp

	INCBIN "gfx/pokemon/front/pikachu.pic", 0, 1 ; sprite dimensions
	dw PikachuPicFront, PikachuPicBack

	db PECK, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,		 SKY_ATTACK,   \
	     SURF,         FLY,		     BLIZZARD,     RAZOR_WIND,   DOUBLE_TEAM,  \
	     BUBBLEBEAM,   GULP_MISSILE, BIDE,         SWIFT,        REST,    	   \
	     SUBSTITUTE,   ICE_BEAM,	 EGG_BOMB,     WATER_GUN,	 METRONOME,    \
	; end

	db BANK(PikachuPicFront)
	assert BANK(PikachuPicFront) == BANK(PikachuPicBack)
