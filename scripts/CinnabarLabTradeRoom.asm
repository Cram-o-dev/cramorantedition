CinnabarLabTradeRoom_Script:
	jp EnableAutoTextBoxDrawing

CinnabarLabTradeRoom_TextPointers:
	dw Lab2Text1
	dw Lab2Text2
	dw Lab2Text3
	dw LabTradeRoomText

Lab2Text1:
	text_far _Lab2Text1
	text_end

Lab2Text2:
	text_asm
	ld a, TRADE_FOR_BUFFY
	ld [wWhichTrade], a
	jr Lab2DoTrade

Lab2Text3:
	text_asm
	ld a, TRADE_FOR_CEZANNE
	ld [wWhichTrade], a
Lab2DoTrade:
	predef DoInGameTradeDialogue
	jp TextScriptEnd

LabTradeRoomText:
	text_far _LabTradeRoomText
	text_end