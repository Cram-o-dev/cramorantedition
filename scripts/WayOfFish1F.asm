WayOfFish1F_Script:
	jp EnableAutoTextBoxDrawing

WayOfFish1F_TextPointers:
	dw WayOfFish1FText1
	dw WayOfFish1FText2
	dw WayOfFish1FTVText
	dw WayOfFish1FSNESText
	dw WayOfFish1FBedText
	
WayOfFish1FText1:
	text_far _WayOfFish1FText1
	text_end
	
WayOfFish1FText2:
	text_far _WayOfFish1FText2
	text_end
	
WayOfFish1FTVText:
	text_far _WayOfFish1FTVText
	text_end
	
WayOfFish1FSNESText:
	text_far _WayOfFish1FSNESText
	text_end
	
WayOfFish1FBedText:
	text_far _WayOfFish1FBedText
	text_end