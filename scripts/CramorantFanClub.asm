CramorantFanClub_Script:
	jp EnableAutoTextBoxDrawing

CramorantFanClub_TextPointers:
	dw CramorantFanClubText1
	dw CramorantFanClubText2
	dw CramorantFanClubText3
	dw CramorantFanClubText4
	dw CramorantFanClubText5
	dw CramorantFanClubText6
	dw CramorantFanClubText7
	dw CramorantFanClubText8
	dw CramorantFanClubText9
	dw MusicText
	dw PapersText
	dw FeatherText
	dw CramClubPictureText
	dw CramClubPicture2Text
	dw CramorantFanClubNoText
	
CramorantFanClubText1:
	text_asm
	CheckEvent EVENT_GOT_TM51
	jr nz, .got_item
	ld hl, TM51PreReceiveText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ld hl, CramorantFanClubNoText
	jr nz, .no
	lb bc, TM_GULP_MISSILE, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, ReceivedTM51Text
	call PrintText
	SetEvent EVENT_GOT_TM51
	jr .done
.no
	ld hl, CramorantFanClubNoText
	call PrintText
	jp TextScriptEnd
.bag_full
	ld hl, TM51NoRoomText
	call PrintText
	jr .done
.got_item
	ld hl, TM51ExplanationText
	call PrintText
.done
	jp TextScriptEnd

TM51PreReceiveText:
	text_far _TM51PreReceiveText
	text_end

ReceivedTM51Text:
	text_far _ReceivedTM51Text
	sound_get_item_1
	text_end

TM51ExplanationText:
	text_far _TM51ExplanationText
	text_end

TM51NoRoomText:
	text_far _TM51NoRoomText
	text_end
	
CramorantFanClubNoText:
	text_far _NoCramClub
	text_end

CramorantFanClubText2:
	text_far _CramorantFanClubText2
	text_end

CramorantFanClubText3:
	text_far _CramorantFanClubText3
	text_end

CramorantFanClubText4:
	text_far _CramorantFanClubText4
	text_end
	
CramorantFanClubText5:
	text_far _CramorantFanClubText5
	text_end
	
CramorantFanClubText6:
	text_far _CramorantFanClubText6
	text_end
	
CramorantFanClubText7:
	text_far _CramorantFanClubText7
	text_end
	
CramorantFanClubText8:
	text_far _CramorantFanClubText8
	text_end
	
CramorantFanClubText9:
	text_far _CramorantFanClubText9
	text_asm
	ld a, PIKACHU
	call PlayCry
	call WaitForSoundToFinish
	ld hl, CrammyDescription
	ret
	
CrammyDescription:
	text_far _CrammyDescription
	text_end

MusicText:
	text_far _MusicText
	text_end
	
PapersText:
	text_far _PapersText
	text_end
	
FeatherText:
	text_far _FeatherText
	text_end
	
CramClubPictureText:
	text_far _CramClubPictureText
	text_end
	
CramClubPicture2Text:
	text_far _CramClubPicture2Text
	text_end