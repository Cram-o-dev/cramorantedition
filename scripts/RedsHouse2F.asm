RedsHouse2F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, RedsHouse2F_ScriptPointers
	ld a, 0
	call CallFunctionInTable
	ret

RedsHouse2F_ScriptPointers:
	dw RedsHouse2FScript0
	dw RedsHouse2FScript1
	dw RedsHouse2FScript2
	dw RedsHouse2FScript3
	dw RedsHouse2FScript4

RedsHouse2FScript0:
RedsHouse2FScript1:
RedsHouse2FScript2:
RedsHouse2FScript3:
RedsHouse2FScript4:
	ret

RedsHouse2F_TextPointers:
	dw RedsHouse2FDollText
	dw RedsHouse2FTrophyText
	dw RedsHouse2FBedText
	dw RedsHouse2FWindowText
	
RedsHouse2FDollText:
	text_far _RedsHouse2FDollText
	text_end
	
RedsHouse2FTrophyText:
	text_asm
	CheckEvent EVENT_TROPHY_CANDY
	jr nz, .got_item
	ld hl, TrophyPreReceiveText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ld hl, TrophyYesText
	jr nz, .no
	call PrintText
	lb bc, RARE_CANDY, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, ReceivedTrophyText
	call PrintText
	jr .next
.no
	ld hl, TrophyNoText
	call PrintText
	jp TextScriptEnd
.bag_full
	ld hl, TrophyNoRoomText
	call PrintText
	jr .done2
.got_item
	call PrintText
.next
	ld hl, TrophyWantMoreText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ld hl, TrophyYesTwoText
	jr nz, .done
	call PrintText
	lb bc, RARE_CANDY, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, ReceivedTrophyText
	call PrintText
	jr .next
.done
	ld hl, TrophyNoTwoText
	call PrintText
	jp TextScriptEnd
.done2
	jp TextScriptEnd
	
TrophyPreReceiveText:
	text_far _TrophyPreReceiveText
	text_end

TrophyYesText:
	text_far _TrophyYesText
	text_end
	
TrophyYesTwoText:
	text_far _TrophyYesTwoText
	text_end
	
TrophyNoText:
	text_far _TrophyNoText
	text_end
	
TrophyNoTwoText:
	text_far _TrophyNoTwoText
	text_end

ReceivedTrophyText:
	text_far _ReceivedTrophyText
	sound_get_item_1
	text_end
	
TrophyNoRoomText:
	text_far _TrophyNoRoomText
	text_end
	
TrophyWantMoreText:
	text_far _TrophyWantMoreText
	text_end

RedsHouse2FBedText:
	text_far _RedsHouse2FBedText
	text_end

RedsHouse2FWindowText:
	text_far _RedsHouse2FWindowText
	text_end