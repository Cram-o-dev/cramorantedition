ViridianForestHouse_Script:
	jp EnableAutoTextBoxDrawing

ViridianForestHouse_TextPointers:
	dw ViridianForestHouseText
	dw ViridianForestHouseOutsideText
	
ViridianForestHouseText:
	text_asm
	CheckEvent EVENT_GOT_SAFARI_BALLS
	jr nz, .got_item
	ld hl, SafariBallPreReceiveText
	call PrintText
	lb bc, SAFARI_BALL, 10
	call GiveItem
	jr nc, .bag_full
	ld hl, ReceivedSafariBallText
	call PrintText
	SetEvent EVENT_GOT_SAFARI_BALLS
	jr .done
.bag_full
	ld hl, SafariBallNoRoomText
	call PrintText
	jr .done
.got_item
	ld hl, SafariBallExplanationText
	call PrintText
.done
	jp TextScriptEnd

SafariBallPreReceiveText:
	text_far _SafariBallPreReceiveText
	text_end

ReceivedSafariBallText:
	text_far _ReceivedSafariBallText
	sound_get_item_1
	text_end

SafariBallExplanationText:
	text_far _SafariBallExplanationText
	text_end

SafariBallNoRoomText:
	text_far _SafariBallNoRoomText
	text_end
	
ViridianForestHouseOutsideText:
	text_far _ViridianForestHouseOutsideText
	text_end