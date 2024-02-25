CeladonMansion2F_Script:
	call EnableAutoTextBoxDrawing
	ret

CeladonMansion2F_TextPointers:
	dw CeladonMansion2MeText
	dw CDGettingText
	dw CeladonMansion2Text1
	dw CeladonMansion2PCText

CeladonMansion2MeText:
	text_far _CeladonMansion2MeText
	text_end
	
CDGettingText:
	text_asm
	CheckEvent EVENT_GOT_CD_PLAYER
	jr nz, .got_item
	ld hl, CDPreReceiveText
	call PrintText
	lb bc, CD_PLAYER, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, ReceivedCDPlayerText
	call PrintText
	SetEvent EVENT_GOT_CD_PLAYER
	jr .done
.bag_full
	ld hl, CDPlayerNoRoomText
	call PrintText
	jr .done
.got_item
	ld hl, GiveAdviceText
	call PrintText
.done
	jp TextScriptEnd

CDPreReceiveText:
	text_far _CDPreReceiveText
	text_end

ReceivedCDPlayerText:
	text_far _ReceivedCDPlayerText
	sound_get_item_1
	text_end

CDPlayerNoRoomText:
	text_far _CDPlayerNoRoomText
	text_end

GiveAdviceText:
	text_asm
	ld hl, AdviceText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ld hl, NoAdviceText
	jr nz, .no
	ld hl, YesAdviceText
	call PrintText
	jr .done
.no
	ld hl, NoAdviceText
	call PrintText
	jp TextScriptEnd
.done
	jp TextScriptEnd
	
AdviceText:
	text_far _AdviceText
	text_end
	
NoAdviceText:
	text_far _NoAdviceText
	text_end
	
YesAdviceText:
	text_far _YesAdviceText
	text_end
	
CeladonMansion2Text1:
	text_far _CeladonMansion2Text1
	text_end
	
CeladonMansion2PCText:
	text_far _CeladonMansion2PCText
	text_end