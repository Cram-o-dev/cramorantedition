Route21House_Script:
	jp EnableAutoTextBoxDrawing
	
Route21HouseTrade_TextScriptEndingText:
	text_end

Route21House_TextPointers:
	dw Route21HouseText
	dw Route21HouseTrade
	dw SeaWindowText

Route21HouseText:
	text_far _Route21HouseText
	text_end

Route21HouseTrade:
	text_asm
	ld a, TRADE_FOR_BART
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	ld hl, Route21HouseTrade_TextScriptEndingText
	ret

SeaWindowText:
	text_far _SeaWindowText
	text_end