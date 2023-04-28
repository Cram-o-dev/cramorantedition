FuchsiaCity_Script:
	jp EnableAutoTextBoxDrawing

FuchsiaCity_TextPointers:
	dw FuchsiaCityText1
	dw FuchsiaCityText2
	dw FuchsiaCityText3
	dw FuchsiaCityText4
	dw FuchsiaCityText5
	dw FuchsiaCityText6
	dw FuchsiaCityText7
	dw FuchsiaCityText8
	dw FuchsiaCityText9
	dw FuchsiaCityText10
	dw FuchsiaCityText11
	dw FuchsiaCityText12
	dw FuchsiaCityText13
	dw MartSignText
	dw PokeCenterSignText
	dw FuchsiaCityText16
	dw FuchsiaCityText17
	dw FuchsiaCityText18
	dw FuchsiaCityText19
	dw FuchsiaCityText20
	dw FuchsiaCityText21
	dw FuchsiaCityText22
	dw FuchsiaCityText23
	dw FuchsiaCityText24
	dw FuchsiaCityPettingZooText
	dw FuchsiaCityCramKidText

FuchsiaCityText1:
	text_far _FuchsiaCityText1
	text_end

FuchsiaCityText2:
	text_far _FuchsiaCityText2
	text_end

FuchsiaCityText3:
	text_far _FuchsiaCityText3
	text_end

FuchsiaCityText4:
	text_far _FuchsiaCityText4
	text_end

FuchsiaCityText5:
	text_far _ChanseyText
	text_asm
	ld a, CHANSEY
	call PlayCry
	call WaitForSoundToFinish
	ld hl, ChanseyInvite
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ld hl, ChanseyHappy
	jr nz, .no
	jr nc, .bag_full
	call PrintText
	jr .done
.no
	ld hl, ChanseyNo
	call PrintText
	jp TextScriptEnd
.bag_full
	ld a, SMILE_BUBBLE
	ld [wWhichEmotionBubble], a
	ld a, $5
	ld [wEmotionBubbleSpriteIndex], a
	predef EmotionBubble
	ld a, CHANSEY
	call PlayCry
	call WaitForSoundToFinish
	ld hl, ChanseyHappy
	call PrintText
	jr .done
.done
	jp TextScriptEnd

ChanseyText:
	text_far _ChanseyText
	text_end
	
ChanseyInvite:
	text_far _ChanseyInvite
	text_end

ChanseyHappy:
	text_far _ChanseyHappy
	text_end

ChanseyNo:
	text_far _ChanseyNo
	text_end	
	
FuchsiaCityText6:
	text_far _VoltorbText
	text_asm
	ld a, VOLTORB
	call PlayCry
	call WaitForSoundToFinish
	ld hl, VoltorbInvite
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ld hl, VoltorbHappy
	jr nz, .no
	jr nc, .bag_full
	call PrintText
	jr .done
.no
	ld hl, VoltorbNo
	call PrintText
	jp TextScriptEnd
.bag_full
	ld a, SMILE_BUBBLE
	ld [wWhichEmotionBubble], a
	ld a, $6
	ld [wEmotionBubbleSpriteIndex], a
	predef EmotionBubble
	ld a, VOLTORB
	call PlayCry
	call WaitForSoundToFinish
	ld hl, VoltorbHappy
	call PrintText
	jr .done
.done
	jp TextScriptEnd

VoltorbText:
	text_far _VoltorbText
	text_end
	
VoltorbInvite:
	text_far _VoltorbInvite
	text_end

VoltorbHappy:
	text_far _VoltorbHappy
	text_end

VoltorbNo:
	text_far _VoltorbNo
	text_end	
	
FuchsiaCityText7:
	text_far _KangaskhanText
	text_asm
	ld a, KANGASKHAN
	call PlayCry
	call WaitForSoundToFinish
	ld hl, KangaskhanInvite
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ld hl, KangaskhanHappy
	jr nz, .no
	jr nc, .bag_full
	call PrintText
	jr .done
.no
	ld hl, KangaskhanNo
	call PrintText
	jp TextScriptEnd
.bag_full
	ld a, SMILE_BUBBLE
	ld [wWhichEmotionBubble], a
	ld a, $7
	ld [wEmotionBubbleSpriteIndex], a
	predef EmotionBubble
	ld a, KANGASKHAN
	call PlayCry
	call WaitForSoundToFinish
	ld hl, KangaskhanHappy
	call PrintText
	jr .done
.done
	jp TextScriptEnd

KangaskhanText:
	text_far _KangaskhanText
	text_end
	
KangaskhanInvite:
	text_far _KangaskhanInvite
	text_end

KangaskhanHappy:
	text_far _KangaskhanHappy
	text_end

KangaskhanNo:
	text_far _KangaskhanNo
	text_end	
	
FuchsiaCityText8:
	text_far _SlowpokeText
	text_asm
	ld a, SLOWPOKE
	call PlayCry
	call WaitForSoundToFinish
	ld hl, SlowpokeInvite
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ld hl, SlowpokeHappy
	jr nz, .no
	jr nc, .bag_full
	call PrintText
	jr .done
.no
	ld hl, SlowpokeNo
	call PrintText
	jp TextScriptEnd
.bag_full
	ld a, SMILE_BUBBLE
	ld [wWhichEmotionBubble], a
	ld a, $8
	ld [wEmotionBubbleSpriteIndex], a
	predef EmotionBubble
	ld a, SLOWPOKE
	call PlayCry
	call WaitForSoundToFinish
	ld hl, SlowpokeHappy
	call PrintText
	jr .done
.done
	jp TextScriptEnd

SlowpokeText:
	text_far _SlowpokeText
	text_end
	
SlowpokeInvite:
	text_far _SlowpokeInvite
	text_end

SlowpokeHappy:
	text_far _SlowpokeHappy
	text_end

SlowpokeNo:
	text_far _SlowpokeNo
	text_end	
	
FuchsiaCityText9:
	text_far _LaprasText
	text_asm
	ld a, LAPRAS
	call PlayCry
	call WaitForSoundToFinish
	ld hl, LaprasInvite
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ld hl, LaprasHappy
	jr nz, .no
	jr nc, .bag_full
	call PrintText
	jr .done
.no
	ld hl, LaprasNo
	call PrintText
	jp TextScriptEnd
.bag_full
	ld a, SMILE_BUBBLE
	ld [wWhichEmotionBubble], a
	ld a, $9
	ld [wEmotionBubbleSpriteIndex], a
	predef EmotionBubble
	ld a, LAPRAS
	call PlayCry
	call WaitForSoundToFinish
	ld hl, LaprasHappy
	call PrintText
	jr .done
.done
	jp TextScriptEnd

LaprasText:
	text_far _LaprasText
	text_end
	
LaprasInvite:
	text_far _LaprasInvite
	text_end

LaprasHappy:
	text_far _LaprasHappy
	text_end

LaprasNo:
	text_far _LaprasNo
	text_end	
	
FuchsiaCityText10:
	text_far _FossilText
	text_asm
	ld hl, FossilInvite
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ld hl, FossilHappy
	jr nz, .no
	jr nc, .bag_full
	call PrintText
	jr .done
.no
	ld hl, FossilNo
	call PrintText
	jp TextScriptEnd
.bag_full
	ld a, ZZZ_BUBBLE
	ld [wWhichEmotionBubble], a
	ld a, $a
	ld [wEmotionBubbleSpriteIndex], a
	predef EmotionBubble
	ld hl, FossilHappy
	call PrintText
	jr .done
.done
	jp TextScriptEnd

FossilText:
	text_far _FossilText
	text_end
	
FossilInvite:
	text_far _FossilInvite
	text_end

FossilHappy:
	text_far _FossilHappy
	text_end

FossilNo:
	text_far _FossilNo
	text_end

FuchsiaCityText12:
FuchsiaCityText11:
	text_far _FuchsiaCityText11
	text_end

FuchsiaCityText13:
	text_far _FuchsiaCityText13
	text_end

FuchsiaCityText16:
	text_far _FuchsiaCityText16
	text_end

FuchsiaCityText17:
	text_far _FuchsiaCityText17
	text_end

FuchsiaCityText18:
	text_far _FuchsiaCityText18
	text_end

FuchsiaCityText19:
	text_asm
	ld hl, FuchsiaCityChanseyText
	call PrintText
	ld a, CHANSEY
	call DisplayPokedex
	jp TextScriptEnd

FuchsiaCityChanseyText:
	text_far _FuchsiaCityChanseyText
	text_end

FuchsiaCityText20:
	text_asm
	ld hl, FuchsiaCityVoltorbText
	call PrintText
	ld a, VOLTORB
	call DisplayPokedex
	jp TextScriptEnd

FuchsiaCityVoltorbText:
	text_far _FuchsiaCityVoltorbText
	text_end

FuchsiaCityText21:
	text_asm
	ld hl, FuchsiaCityKangaskhanText
	call PrintText
	ld a, KANGASKHAN
	call DisplayPokedex
	jp TextScriptEnd

FuchsiaCityKangaskhanText:
	text_far _FuchsiaCityKangaskhanText
	text_end

FuchsiaCityText22:
	text_asm
	ld hl, FuchsiaCitySlowpokeText
	call PrintText
	ld a, SLOWPOKE
	call DisplayPokedex
	jp TextScriptEnd

FuchsiaCitySlowpokeText:
	text_far _FuchsiaCitySlowpokeText
	text_end

FuchsiaCityText23:
	text_asm
	ld hl, FuchsiaCityLaprasText
	call PrintText
	ld a, LAPRAS
	call DisplayPokedex
	jp TextScriptEnd

FuchsiaCityLaprasText:
	text_far _FuchsiaCityLaprasText
	text_end

FuchsiaCityText24:
	text_asm
	CheckEvent EVENT_GOT_DOME_FOSSIL
	jr nz, .asm_3b4e8
	CheckEventReuseA EVENT_GOT_HELIX_FOSSIL
	jr nz, .asm_667d5
	ld hl, FuchsiaCityText_19b2a
	call PrintText
	jr .asm_4343f
.asm_3b4e8
	ld hl, FuchsiaCityOmanyteText
	call PrintText
	ld a, OMANYTE
	jr .asm_81556
.asm_667d5
	ld hl, FuchsiaCityKabutoText
	call PrintText
	ld a, KABUTO
.asm_81556
	call DisplayPokedex
.asm_4343f
	jp TextScriptEnd

FuchsiaCityOmanyteText:
	text_far _FuchsiaCityOmanyteText
	text_end

FuchsiaCityKabutoText:
	text_far _FuchsiaCityKabutoText
	text_end

FuchsiaCityText_19b2a:
	text_far _FuchsiaCityText_19b2a
	text_end

FuchsiaCityPettingZooText:
	text_far _FuchsiaCityPettingZooText
	text_end
	
FuchsiaCityCramKidText:
	text_far _FuchsiaCityCramKidText
	text_end