Route11Gate1F_Script:
	jp EnableAutoTextBoxDrawing
	
Route11GateTrade_TextScriptEndingText:
	text_end

Route11Gate1F_TextPointers:
	dw Route11GateText1
	dw Route11GateTrade
	
Route11GateText1:
	text_far _Route11GateText1
	text_end
	
Route11GateTrade:
	text_asm
	ld a, TRADE_FOR_STINGER
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	ld hl, Route11GateTrade_TextScriptEndingText
	ret