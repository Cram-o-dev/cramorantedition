Route5_Script:
	jp EnableAutoTextBoxDrawing

Route5_TextPointers:
	dw Route5Text1
	dw MonBrosText

Route5Text1:
	text_far _Route5Text1
	text_end

MonBrosText:
	text_far _MonBrosText
	text_end