CeladonMansionRoof_Script:
	call EnableAutoTextBoxDrawing
	ret

CeladonMansionRoof_TextPointers:
	dw CeladonMansion4Text1
	dw CeladonMansionGraffiti
	dw CeladonMansionGraffitiYesText
	dw CeladonMansionGraffitiNoText
	
CeladonMansion4Text1:
	text_far _CeladonMansion4Text1
	text_end
	
CeladonMansionGraffiti:
	text_asm
	ld hl, CeladonMansionGraffitiText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ld hl, CeladonMansionGraffitiYesText
	jr nz, .no
	jr nc, .bag_full
	call PrintText
	jr .done
.no
	ld hl, CeladonMansionGraffitiNoText
	call PrintText
	jp TextScriptEnd
.bag_full
	ld hl, CeladonMansionGraffitiYesText
	call PrintText
	jr .done
.done
	jp TextScriptEnd
	
CeladonMansionGraffitiText:
	text_far _CeladonMansionGraffitiText
	text_end
	
CeladonMansionGraffitiYesText:
	text_far _CeladonMansionGraffitiYesChoiceText
	text_end
	
CeladonMansionGraffitiNoText:	
	text_far _CeladonMansionGraffitiNoChoiceText
	text_end