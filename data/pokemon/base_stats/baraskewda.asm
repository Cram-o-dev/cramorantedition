	db DEX_BARASKEWDA ; pokedex id

	db  75, 140,  90,  150, 90
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db  90 ; catch rate
	db 172 ; base exp

	INCBIN "gfx/pokemon/front/baraskewda.pic", 0, 1 ; sprite dimensions
	dw BaraskewdaPicFront, BaraskewdaPicBack

	db BITE, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWIFT,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   SWORDS_DANCE, \
	     WATER_GUN,    ICE_BEAM,     SURF,         REFLECT,      RAGE,         \
	     REST,         SUBSTITUTE,   BIDE,         MIMIC,        DOUBLE_TEAM,  \
	     TOXIC, 	   DRAGON_RAGE,  BLIZZARD,     HYPER_BEAM,                 \
	; end

	db BANK(BaraskewdaPicFront)
	assert BANK(BaraskewdaPicFront) == BANK(BaraskewdaPicBack)
