CeladonHotel_Script:
	jp EnableAutoTextBoxDrawing

CeladonHotel_TextPointers:
	dw CeladonHotelText1
	dw CeladonHotelText2
	dw CeladonHotelText3
	dw CeladonHotelPCText

CeladonHotelText1:
	text_far _CeladonHotelText1
	text_end

CeladonHotelText2:
	text_far _CeladonHotelText2
	text_end

CeladonHotelText3:
	text_far _CeladonHotelText3
	text_end
	
CeladonHotelPCText:
	text_far _CeladonHotelPCText
	text_end