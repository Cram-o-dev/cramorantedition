SSAnneB1F_Script:
	call EnableAutoTextBoxDrawing
	ret

SSAnneB1F_TextPointers:
	dw SSAnneTextNew
	
SSAnneTextNew:
	text_far _SSAnneTextNew
	text_end
