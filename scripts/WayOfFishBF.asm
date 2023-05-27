WayOfFishBF_Script:
	call EnableAutoTextBoxDrawing
	ld hl, WayOfFishBFTrainerHeaders
	ld de, WayOfFishBF_ScriptPointers
	ld a, [wWayOfFishBFCurScript]
	call ExecuteCurMapScriptInTable
	ld [wWayOfFishBFCurScript], a
	ret
	
WayOfFishBF_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

WayOfFishBF_TextPointers:
	dw WayOfFishBFText1
	dw WayOfFishBFText2
	dw WayOfFishBFText3
	dw WayOfFishBFText4
	dw WayOfStatueText
	dw WayOfStatueText2
	
WayOfFishBFTrainerHeaders:
	def_trainers 1
WayOfFishBFTrainerHeader0:
	trainer EVENT_BEAT_WAY_OF_FISH_BF_TRAINER_0, 1, WayOfFishBFBattleText1, WayOfFishBFEndBattleText1, WayOfFishBFAfterBattleText1
WayOfFishBFTrainerHeader1:
	trainer EVENT_BEAT_WAY_OF_FISH_BF_TRAINER_1, 1, WayOfFishBFBattleText2, WayOfFishBFEndBattleText2, WayOfFishBFAfterBattleText2
WayOfFishBFTrainerHeader2:
	trainer EVENT_BEAT_WAY_OF_FISH_BF_TRAINER_2, 2, WayOfFishBFBattleText3, WayOfFishBFEndBattleText3, WayOfFishBFAfterBattleText3
	db -1 ; end
	
WayOfFishBFText1:
	text_asm
	ld hl, WayOfFishBFTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd
	
WayOfFishBFBattleText1:
	text_far _WayOfFishBFBattleText1
	text_end
	
WayOfFishBFEndBattleText1:
	text_far _WayOfFishBFEndBattleText1
	text_end
	
WayOfFishBFAfterBattleText1:
	text_far _WayOfFishBFAfterBattleText1
	text_end

WayOfFishBFText2:
	text_asm
	ld hl, WayOfFishBFTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd
	
WayOfFishBFBattleText2:
	text_far _WayOfFishBFBattleText2
	text_end

WayOfFishBFEndBattleText2:
	text_far _WayOfFishBFEndBattleText2
	text_end

WayOfFishBFAfterBattleText2:
	text_far _WayOfFishBFAfterBattleText2
	text_end
	
WayOfFishBFText3:
	text_asm
	ld hl, WayOfFishBFTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd
	
WayOfFishBFBattleText3:
	text_far _WayOfFishBFBattleText3
	text_end

WayOfFishBFEndBattleText3:
	text_far _WayOfFishBFEndBattleText3
	text_end

WayOfFishBFAfterBattleText3:
	text_far _WayOfFishBFAfterBattleText3
	text_end
	
WayOfFishBFText4:
	text_asm
	lb bc, ARROKUDA, 37
	call GivePokemon
	jr nc, .party_full
	ld a, HS_WAY_OF_FISH_BF_ARROKUDA
	ld [wMissableObjectIndex], a
	predef HideObject
.party_full
	jp TextScriptEnd
	
WayOfStatueText:
	text_far _WayOfStatueText
	text_end
	
WayOfStatueText2:
	text_far _WayOfStatueText2
	text_end