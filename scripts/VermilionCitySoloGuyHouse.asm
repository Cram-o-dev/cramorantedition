VermilionCitySoloGuyHouse_Script:
	jp EnableAutoTextBoxDrawing

VermilionCitySoloGuyHouse_TextPointers:
	dw VermilionCitySoloGuyHouseManText
	dw VermilionCitySoloGuyHouseMachampText
	dw VermilionCitySoloGuyHouseGolemText
	dw VermilionCitySoloGuyHouseAlakazamText
	dw VermilionCitySoloGuyHouseGengarText
	
VermilionCitySoloGuyHouseManText:
	text_far _VermilionCitySoloGuyHouseManText
	text_end
	
VermilionCitySoloGuyHouseMachampText:
	text_far _VermilionCitySoloGuyHouseMachampText
	text_asm
	ld a, MACHAMP
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd
	
VermilionCitySoloGuyHouseGolemText:
	text_far _VermilionCitySoloGuyHouseGolemText
	text_asm
	ld a, GOLEM
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd
	
VermilionCitySoloGuyHouseAlakazamText:
	text_far _VermilionCitySoloGuyHouseAlakazamText
	text_asm
	ld a, ALAKAZAM
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd
	
VermilionCitySoloGuyHouseGengarText:
	text_far _VermilionCitySoloGuyHouseGengarText
	text_asm
	ld a, GENGAR
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd