	db DEX_ARROKUDA ; pokedex id

	db  45, 95,  65,  90, 50
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 255 ; catch rate
	db 88 ; base exp

	INCBIN "gfx/pokemon/front/arrokuda.pic", 0, 1 ; sprite dimensions
	dw ArrokudaPicFront, ArrokudaPicBack

	db BITE, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWIFT,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   SWORDS_DANCE, \
	     WATER_GUN,    ICE_BEAM,     SURF,         REFLECT,      RAGE,         \
	     REST,         SUBSTITUTE,   BIDE,         MIMIC,        DOUBLE_TEAM,  \ 
	; end

	db BANK(ArrokudaPicFront)
	assert BANK(ArrokudaPicFront) == BANK(ArrokudaPicBack)
