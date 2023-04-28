CeladonMansion2F_Script:
	call EnableAutoTextBoxDrawing
	ret

CeladonMansion2F_TextPointers:
	dw CeladonMansion2MeText
	dw CeladonMansion2Text1
	dw CeladonMansion2PCText

CeladonMansion2MeText:
	text_far _CeladonMansion2MeText
	text_end
	
CeladonMansion2Text1:
	text_far _CeladonMansion2Text1
	text_end
	
CeladonMansion2PCText:
	text_far _CeladonMansion2PCText
	text_end