HallOfFame_Script:
	call EnableAutoTextBoxDrawing
	ld hl, HallOfFame_ScriptPointers
	ld a, [wHallOfFameCurScript]
	jp CallFunctionInTable

HallofFameRoomScript_5a4aa:
	xor a
	ld [wJoyIgnore], a
	ld [wHallOfFameCurScript], a
	ret

HallOfFame_ScriptPointers:
	dw HallofFameRoomScript0
	dw HallofFameRoomScript1
	dw HallofFameRoomScript2
	dw HallofFameRoomScript3

HallofFameRoomScript3:
	ret

HallofFameRoomScript2:
	callfar GBCSetCPU1xSpeed
	call Delay3
	ld a, [wLetterPrintingDelayFlags]
	push af
	xor a
	ld [wJoyIgnore], a
	predef HallOfFamePC
	pop af
	ld [wLetterPrintingDelayFlags], a
	ld hl, wFlags_D733
	res 1, [hl]
	inc hl
	set 0, [hl]
	xor a
	ld hl, wLoreleisRoomCurScript
	ld [hli], a ; wLoreleisRoomCurScript
	ld [hli], a ; wBrunosRoomCurScript
	ld [hl], a ; wAgathasRoomCurScript
	ld [wLancesRoomCurScript], a
	ld [wHallOfFameCurScript], a
	; Elite 4 events
	ResetEventRange EVENT_BEAT_CERULEAN_CAVEB4F_TRAINER_0, INDIGO_PLATEAU_EVENTS_START, INDIGO_PLATEAU_EVENTS_END, 1
	ResetEvent EVENT_BEAT_ARTICUNO, 1
	ResetEvent EVENT_BEAT_ZAPDOS, 1
	ResetEvent EVENT_BEAT_MOLTRES, 1
	ResetEvent EVENT_BEAT_MEWTWO, 1
	ResetEvent EVENT_BEAT_MEW, 1
	ResetEvent EVENT_BEAT_ROUTE_1_TRAINER_0, 1
	ResetEvent EVENT_SS_ANNE_LEFT, 1
	xor a
	ld [wHallOfFameCurScript], a
	ld a, PALLET_TOWN
	ld [wLastBlackoutMap], a
	farcall SaveSAVtoSRAM
	ld b, 5
.delayLoop
	ld c, 600 / 5
	call DelayFrames
	dec b
	jr nz, .delayLoop
	call WaitForTextScrollButtonPress
	jp Init

HallofFameRoomScript0:
	ld a, $ff
	ld [wJoyIgnore], a
	ld hl, wSimulatedJoypadStatesEnd
	ld de, RLEMovement5a528
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, $1
	ld [wHallOfFameCurScript], a
	ret

RLEMovement5a528:
	db D_UP, 5
	db -1 ; end

HallofFameRoomScript1:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	ld a, PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	ld a, $1
	ldh [hSpriteIndex], a
	call SetSpriteMovementBytesToFF
	ld a, SPRITE_FACING_LEFT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	call Delay3
	xor a
	ld [wJoyIgnore], a
	inc a ; PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	ld a, $1
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld a, $ff
	ld [wJoyIgnore], a
	ld a, HS_CERULEAN_CAVE_GUY
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_CELADON_CITY_TM_GUY
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_CELADON_MANSION_2F_ME1
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_CELADON_MANSION_2F_ME2
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, HS_ARTICUNO
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, HS_ZAPDOS
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, HS_MOLTRES
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, HS_MEWTWO
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, HS_SAFFRON_SHADY_HOUSE_GUY1
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_SAFFRON_SHADY_HOUSE_GUY2
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_SAFFRON_SHADY_HOUSE_GUY3
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, HS_SAFFRON_SHADY_HOUSE_GUY4
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, HS_REDS_HOUSE_2F_CRAM_PLUSH
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, $2
	ld [wHallOfFameCurScript], a
	ret

HallOfFame_TextPointers:
	dw HallofFameRoomText1

HallofFameRoomText1:
	text_far _HallofFameRoomText1
	text_end
