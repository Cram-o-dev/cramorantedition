VermilionMart_Script:
	jp EnableAutoTextBoxDrawing
	
VermilionCashierText::
	script_mart POKE_BALL, SUPER_POTION, ICE_HEAL, AWAKENING, PARLYZ_HEAL, REPEL

VermilionMart_TextPointers:
	dw VermilionCashierText
	dw VermilionMartText2
	dw VermilionMartText3

VermilionMartText2:
	text_far _VermilionMartText2
	text_end

VermilionMartText3:
	text_far _VermilionMartText3
	text_end
