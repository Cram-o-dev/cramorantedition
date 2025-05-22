CeruleanCaveB4F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, CeruleanCaveB4FTrainerHeaders
	ld de, CeruleanCaveB4F_ScriptPointers
	ld a, [wCeruleanCaveB4FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wCeruleanCaveB4FCurScript], a
	ret

CeruleanCaveB4FThing:
	xor a
	ld [wJoyIgnore], a
	ld [wCeruleanCaveB4FCurScript], a
	ld [wCurMapScript], a
	ret

CeruleanCaveB4F_ScriptPointers:
	dw CeruleanCaveB4FScript0
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	dw CeruleanCaveB4FScript3
	dw CeruleanCaveB4FScript4

CeruleanCaveB4FScript0:
	CheckEvent EVENT_GOT_PP_UP
	jp nz, CheckFightingMapTrainers
	ld hl, CoordsData_CCave
	call ArePlayerCoordsInArray
	jp nc, CheckFightingMapTrainers
	xor a
	ldh [hJoyHeld], a
	ld a, $1
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	CheckAndResetEvent EVENT_PP_UP_REWARD_AVAILABLE
	ret z
	ld a, D_DOWN
	ld [wSimulatedJoypadStatesEnd], a
	ld a, $1
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, $4
	ld [wCeruleanCaveB4FCurScript], a
	ld [wCurMapScript], a
	ret

CoordsData_CCave:
	dbmapcoord 0, 0
	db -1 ; end

CeruleanCaveB4FScript4:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3
	ld a, $0
	ld [wCeruleanCaveB4FCurScript], a
	ld [wCurMapScript], a
	ret

CeruleanCaveB4FScript3:
	ld a, [wIsInBattle]
	cp $ff
	jp z, CeruleanCaveB4FThing
	call UpdateSprites
	ld a, $f0
	ld [wJoyIgnore], a
	SetEvent EVENT_BEAT_CERULEAN_CAVEB4F_TRAINER_0
	ld a, HS_REDS_HOUSE_2F_TROPHY
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, $1
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	xor a
	ld [wJoyIgnore], a
	ld a, $0
	ld [wCeruleanCaveB4FCurScript], a
	ld [wCurMapScript], a
	ret
	
CeruleanCaveB4F_TextPointers:
	dw OakBattleText
	dw CeruleanCaveB4FSignText

CeruleanCaveB4FTrainerHeaders:
	def_trainers 2
CeruleanCaveB4FTrainerHeader0:
	trainer EVENT_BEAT_CERULEAN_CAVEB4F_TRAINER_0, 0, CeruleanCaveB4FBattleText, CeruleanCaveB4FEndBattleText, CeruleanCaveB4FAfterBattleText
	db -1 ;end
	
OakBattleText:
	text_asm
	ResetEvent EVENT_PP_UP_REWARD_AVAILABLE
	CheckEvent EVENT_GOT_PP_UP
	jr nz, .got_item
	ld hl, CeruleanCaveB4FText_51510
	call PrintText
	lb bc, PP_UP, 1
	call GiveItem
	jr nc, .bag_full
	SetEvent EVENT_GOT_PP_UP
	ld hl, CeruleanCaveB4FText_5151a
	call PrintText
	ld a, 10
	ld [wAudioFadeOutControl], a
	call StopAllMusic
	ld hl, CeruleanCaveB4FText_51526
	call PrintText
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, CeruleanCaveB4FText_5152b
	ld de, CeruleanCaveB4FOakBeatText_5152b
	call SaveEndBattleTextPointers
	ldh a, [hSpriteIndexOrTextID]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	xor a
	ldh [hJoyHeld], a
	ld a, $3
	ld [wCeruleanCaveB4FCurScript], a
	ld [wCurMapScript], a
	jp TextScriptEnd
.got_item
	ld hl, CeruleanCaveB4FText_51530
	call PrintText
	jp TextScriptEnd
.bag_full
	ld hl, CeruleanCaveB4FText_51521
	call PrintText
	SetEvent EVENT_PP_UP_REWARD_AVAILABLE
	jp TextScriptEnd

CeruleanCaveB4FBattleText:
	text_far _CeruleanCaveB4FBattleText
	text_end

CeruleanCaveB4FEndBattleText:
	text_far _CeruleanCaveB4FEndBattleText
	text_end

CeruleanCaveB4FAfterBattleText:
	text_far _CeruleanCaveB4FAfterBattleText
	text_end

CeruleanCaveB4FText_51510:
	text_far _CeruleanCaveB4FText_51510
	text_far _CeruleanCaveB4FText_51515
	text_end

CeruleanCaveB4FText_5151a:
	text_far _CeruleanCaveB4FText_5151a
	sound_get_item_1
	text_promptbutton
	text_end

CeruleanCaveB4FText_51521:
	text_far _CeruleanCaveB4FText_51521
	text_end

CeruleanCaveB4FText_51526:
	text_far _CeruleanCaveB4FText_51526
	text_end

CeruleanCaveB4FText_5152b:
	text_far _CeruleanCaveB4FText_5152b
	text_end
	
CeruleanCaveB4FOakBeatText_5152b:
	text_far _CeruleanCaveB4FOakBeatText_5152b
	text_end

CeruleanCaveB4FText_51530:
	text_far _CeruleanCaveB4FText_51530
	text_end
	
CeruleanCaveB4FSignText:
	text_far _CeruleanCaveB4FSignText
	text_end