Route1_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route1TrainerHeaders
	ld de, Route1_ScriptPointers
	ld a, [wRoute1CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute1CurScript], a
	ret
	
Route1_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

Route1_TextPointers:
	dw Route1Text1
	dw Route1Text2
	dw Route1Text4
	dw Route1Text3

Route1Text1:
	text_asm
	farcall Func_f1ad2
	jp TextScriptEnd

Route1Text2:
	text_asm
	farcall Func_f1b0f
	jp TextScriptEnd
	
Route1TrainerHeaders:
	def_trainers 7
Route1TrainerHeader0:
	trainer EVENT_BEAT_ROUTE_1_TRAINER_0, 1, Route1BattleYesText1, Route1EndBattleText1, Route1AfterBattleText1
	db -1 ; end
	
Route1Text4:
	text_asm
	ld hl, Route1BattleText1
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ld hl, Route1BattleYesText1
	jr nz, .no
	jr nc, .yes
	call PrintText
.no
	ld hl, Route1BattleNoText1
	call PrintText
	jp TextScriptEnd
.yes
	ld hl, Route1TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route1BattleText1:
	text_far _Route1BattleText1
	text_end
	
Route1BattleYesText1:
	text_far _Route1BattleYesText1
	text_end
	
Route1BattleNoText1:
	text_far _Route1BattleNoText1
	text_end

Route1EndBattleText1:
	text_far _Route1EndBattleText1
	text_end

Route1AfterBattleText1:
	text_far _Route1AfterBattleText1
	text_end
	
Route1Text3:
	text_asm
	farcall Func_f1b1b
	jp TextScriptEnd