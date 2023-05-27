CinnabarLab_Script:
	call EnableAutoTextBoxDrawing
	ret

CinnabarLab_TextPointers:
	dw Lab1Text1
	dw Lab1TextAide
	dw Lab1Text2
	dw Lab1Text3
	dw Lab1Text4
	dw Lab1Text5
	
Lab1Text1:
	text_far _Lab1Text1
	text_end
	
Lab1TextAide:
	text_asm
	CheckEvent EVENT_LAB_MASTER_BALL
	jr nz, .got_item
	ld a, 100
	ldh [hOaksAideRequirement], a
	ld a, MASTER_BALL
	ldh [hOaksAideRewardItem], a
	ld [wd11e], a
	call GetItemName
	ld hl, wcd6d
	ld de, wOaksAideRewardItemName
	ld bc, ITEM_NAME_LENGTH
	call CopyData
	predef OaksAideScript
	ldh a, [hOaksAideResult]
	cp OAKS_AIDE_GOT_ITEM
	jr nz, .no_item
	SetEvent EVENT_LAB_MASTER_BALL
.got_item
	ld hl, Lab1TextAideExplain
	call PrintText
.no_item
	jp TextScriptEnd

Lab1TextAideExplain:
	text_far _Lab1TextAideExplain
	text_end

Lab1Text2:
	text_far _Lab1Text2
	text_end

Lab1Text3:
	text_far _Lab1Text3
	text_end

Lab1Text4:
	text_far _Lab1Text4
	text_end

Lab1Text5:
	text_far _Lab1Text5
	text_end
