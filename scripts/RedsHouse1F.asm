RedsHouse1F_Script:
	call EnableAutoTextBoxDrawing
	ret

RedsHouse1F_TextPointers:
	dw RedsHouse1FMomText
	dw RedsHouse1FTVText
	dw MomBedText

RedsHouse1FMomText:
	text_asm
	callfar Func_f1b73
	jp TextScriptEnd

RedsHouse1FTVText:
	text_asm
	callfar Func_f1bc4
	jp TextScriptEnd

MomBedText:
	text_far _MomBedText
	text_end