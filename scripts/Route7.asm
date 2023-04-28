Route7_Script:
	call EnableAutoTextBoxDrawing
	ret

Route7_TextPointers:
	dw Route7Text1
	dw WayOfFishSign

Route7Text1:
	text_far _Route7Text1
	text_end

WayOfFishSign:
	text_far _WayOfFishSign
	text_end