CeruleanMart_Script:
	jp EnableAutoTextBoxDrawing

CeruleanCashierText::
	script_mart POKE_BALL, POTION, ESCAPE_ROPE, REPEL, ANTIDOTE, BURN_HEAL, AWAKENING, PARLYZ_HEAL
	
CeruleanMart_TextPointers:
	dw CeruleanCashierText
	dw CeruleanMartText2
	dw CeruleanMartText3

CeruleanMartText2:
	text_far _CeruleanMartText2
	text_end

CeruleanMartText3:
	text_far _CeruleanMartText3
	text_end
