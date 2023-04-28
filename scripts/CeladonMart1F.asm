CeladonMart1F_Script:
	call EnableAutoTextBoxDrawing
	ret

CeladonMart1F_TextPointers:
	dw CeladonMart1Text1
	dw CeladonMart1Text2
	dw CeladonMart1Text3
	dw CeladonMartPhoneText

CeladonMart1Text1:
	text_far _CeladonMart1Text1
	text_end

CeladonMart1Text2:
	text_far _CeladonMart1Text2
	text_end

CeladonMart1Text3:
	text_far _CeladonMart1Text3
	text_end
	
CeladonMartPhoneText:
	text_far _CeladonMartPhoneText
	text_end
