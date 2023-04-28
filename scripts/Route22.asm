Route22_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route22_ScriptPointers
	ld a, [wRoute22CurScript]
	jp CallFunctionInTable

Route22_ScriptPointers:
	dw Route22Script0
	dw Route22Script1
	dw Route22Script2
	dw Route22Script3
	dw Route22Script4
	dw Route22Script5
	dw Route22Script6
	dw Route22Script7

Route22Script_50ece:
	xor a
	ld [wJoyIgnore], a
	ld [wRoute22CurScript], a
Route22Script7:
	ret

Route22Script_50ed6:
	ld a, OPP_RIVAL1
	ld [wCurOpponent], a
	ld a, $2
	ld [wTrainerNo], a
	ret

Route22Script_50ee1:
	ld a, OPP_RIVAL2
	ld [wCurOpponent], a
	ld a, [wRivalStarter]
	add 7
	ld [wTrainerNo], a
	ret

Route22MoveRivalSprite:
	ld de, Route22RivalMovementData
	ld a, [wcf0d]
	cp $1
	jr z, .asm_50ef1
	inc de
.asm_50ef1
	call MoveSprite
	ld a, SPRITE_FACING_RIGHT
	ldh [hSpriteFacingDirection], a
	jp SetSpriteFacingDirectionAndDelay

Route22RivalMovementData:
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db -1 ; end

Route22Script0:
	CheckEvent EVENT_ROUTE22_RIVAL_WANTS_BATTLE
	ret z
	ld hl, .Route22RivalBattleCoords
	call ArePlayerCoordsInArray
	ret nc
	ld a, [wCoordIndex]
	ld [wcf0d], a
	xor a
	ldh [hJoyHeld], a
	ld a, $f0
	ld [wJoyIgnore], a
	ld a, PLAYER_DIR_LEFT
	ld [wPlayerMovingDirection], a
	CheckEvent EVENT_1ST_ROUTE22_RIVAL_BATTLE
	jr nz, .firstRivalBattle
	CheckEventReuseA EVENT_2ND_ROUTE22_RIVAL_BATTLE ; is this the rival at the end of the game?
	jp nz, Route22Script_5104e
	ret

.Route22RivalBattleCoords
	dbmapcoord 29,  4
	dbmapcoord 29,  5
	db -1 ; end

.firstRivalBattle
	ld a, $1
	ld [wEmotionBubbleSpriteIndex], a
	xor a ; EXCLAMATION_BUBBLE
	ld [wWhichEmotionBubble], a
	predef EmotionBubble
	ld a, [wWalkBikeSurfState]
	and a
	jr z, .asm_50f4e
	call StopAllMusic
.asm_50f4e
	ld c, BANK(Music_MeetRival)
	ld a, MUSIC_MEET_RIVAL
	call PlayMusic
	ld a, $1
	ldh [hSpriteIndex], a
	call Route22MoveRivalSprite
	ld a, $1
	ld [wRoute22CurScript], a
	ret

Route22Script1:
	ld a, [wd730]
	bit 0, a
	ret nz
	ld a, [wcf0d]
	cp $1
	jr nz, .asm_50f78
	ld a, PLAYER_DIR_DOWN
	ld [wPlayerMovingDirection], a
	ld a, SPRITE_FACING_UP
	jr .asm_50f7a
.asm_50f78
	ld a, SPRITE_FACING_RIGHT
.asm_50f7a
	ldh [hSpriteFacingDirection], a
	ld a, $1
	ldh [hSpriteIndex], a
	call SetSpriteFacingDirectionAndDelay
	xor a
	ld [wJoyIgnore], a
	ld a, $1
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, Route22RivalDefeatedText1
	ld de, Route22Text_511bc
	call SaveEndBattleTextPointers
	call Route22Script_50ed6
	ld a, $2
	ld [wRoute22CurScript], a
	ret

Route22RivalDefeatedText1:
	text_far _Route22RivalDefeatedText1
	text_end

Route22Text_511bc:
	text_far _Route22Text_511bc
	text_end

Route22Script2:
	ld a, [wIsInBattle]
	cp $ff
	jp z, Route22Script_50ece
	ld a, [wRivalStarter]
	cp RIVAL_STARTER_FLAREON
	jr nz, .keep_rival_starter
	ld a, RIVAL_STARTER_JOLTEON
	ld [wRivalStarter], a
.keep_rival_starter
	ld a, [wSpritePlayerStateData1FacingDirection]
	and a ; cp SPRITE_FACING_DOWN
	jr nz, .notDown
	ld a, SPRITE_FACING_UP
	jr .done
.notDown
	ld a, SPRITE_FACING_RIGHT
.done
	ldh [hSpriteFacingDirection], a
	ld a, $1
	ldh [hSpriteIndex], a
	call SetSpriteFacingDirectionAndDelay
	ld a, $f0
	ld [wJoyIgnore], a
	SetEvent EVENT_BEAT_ROUTE22_RIVAL_1ST_BATTLE
	ld a, $1
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	call StopAllMusic
	farcall Music_RivalAlternateStart
	ld a, [wcf0d]
	cp $1
	jr nz, .asm_50fff
	call Route22Script_51008
	jr .asm_51002
.asm_50fff
	call Route22Script_5100d
.asm_51002
	ld a, $3
	ld [wRoute22CurScript], a
	ret

Route22Script_51008:
	ld de, Route22RivalExitMovementData1
	jr Route22MoveRival1

Route22Script_5100d:
	ld de, Route22RivalExitMovementData2
Route22MoveRival1:
	ld a, $1
	ldh [hSpriteIndex], a
	jp MoveSprite

Route22RivalExitMovementData1:
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db -1 ; end

Route22RivalExitMovementData2:
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db -1 ; end

Route22Script3:
	ld a, [wd730]
	bit 0, a
	ret nz
	xor a
	ld [wJoyIgnore], a
	ld a, HS_ROUTE_22_RIVAL_1
	ld [wMissableObjectIndex], a
	predef HideObject
	call PlayDefaultMusic
	ResetEvents EVENT_1ST_ROUTE22_RIVAL_BATTLE, EVENT_ROUTE22_RIVAL_WANTS_BATTLE
	ld a, $0
	ld [wRoute22CurScript], a
	ret

Route22Script_5104e:
	ld a, $2
	ld [wEmotionBubbleSpriteIndex], a
	xor a ; EXCLAMATION_BUBBLE
	ld [wWhichEmotionBubble], a
	predef EmotionBubble
	ld a, [wWalkBikeSurfState]
	and a
	jr z, .skipYVisibilityTesta
	call StopAllMusic
.skipYVisibilityTesta
	call StopAllMusic
	farcall Music_RivalAlternateTempo
	ld a, $2
	ldh [hSpriteIndex], a
	call Route22MoveRivalSprite
	ld a, $4
	ld [wRoute22CurScript], a
	ret

Route22Script4:
	ld a, [wd730]
	bit 0, a
	ret nz
	ld a, $2
	ldh [hSpriteIndex], a
	ld a, [wcf0d]
	cp $1
	jr nz, .asm_510a1
	ld a, PLAYER_DIR_DOWN
	ld [wPlayerMovingDirection], a
	ld a, SPRITE_FACING_UP
	jr .asm_510a8
.asm_510a1
	ld a, PLAYER_DIR_LEFT
	ld [wPlayerMovingDirection], a
	ld a, SPRITE_FACING_RIGHT
.asm_510a8
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	xor a
	ld [wJoyIgnore], a
	ld a, $2
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, Route22RivalDefeatedText2
	ld de, Route22Text_511d0
	call SaveEndBattleTextPointers
	call Route22Script_50ee1
	ld a, $5
	ld [wRoute22CurScript], a
	ret

Route22RivalDefeatedText2:
	text_far _Route22RivalDefeatedText2
	text_end

Route22Text_511d0:
	text_far _Route22Text_511d0
	text_end

Route22Script5:
	ld a, [wIsInBattle]
	cp $ff
	jp z, Route22Script_50ece
	ld a, $2
	ldh [hSpriteIndex], a
	ld a, [wcf0d]
	cp $1
	jr nz, .asm_510fb
	ld a, PLAYER_DIR_DOWN
	ld [wPlayerMovingDirection], a
	ld a, SPRITE_FACING_UP
	jr .asm_51102
.asm_510fb
	ld a, PLAYER_DIR_LEFT
	ld [wPlayerMovingDirection], a
	ld a, SPRITE_FACING_RIGHT
.asm_51102
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, $f0
	ld [wJoyIgnore], a
	SetEvent EVENT_BEAT_ROUTE22_RIVAL_2ND_BATTLE
	ld a, $2
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	call StopAllMusic
	farcall Music_RivalAlternateStartAndTempo
	ld a, [wcf0d]
	cp $1
	jr nz, .asm_51134
	call Route22Script_5113d
	jr .asm_51137
.asm_51134
	call Route22Script_51142
.asm_51137
	ld a, $6
	ld [wRoute22CurScript], a
	ret

Route22Script_5113d:
	ld de, MovementData_5114c
	jr Route22MoveRival2

Route22Script_51142:
	ld de, MovementData_5114d
Route22MoveRival2:
	ld a, $2
	ldh [hSpriteIndex], a
	jp MoveSprite

MovementData_5114c:
	db NPC_MOVEMENT_LEFT
MovementData_5114d:
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db -1 ; end

Route22Script6:
	ld a, [wd730]
	bit 0, a
	ret nz
	xor a
	ld [wJoyIgnore], a
	ld a, HS_ROUTE_22_RIVAL_2
	ld [wMissableObjectIndex], a
	predef HideObject
	call PlayDefaultMusic
	ResetEvents EVENT_2ND_ROUTE22_RIVAL_BATTLE, EVENT_ROUTE22_RIVAL_WANTS_BATTLE
	ld a, $7
	ld [wRoute22CurScript], a
	ret

Route22_TextPointers:
	dw Route22Text1
	dw Route22Text2
	dw Route22FrontGateText

Route22Text1:
	text_asm
	farcall Func_f1b27
	jp TextScriptEnd

Route22Text2:
	text_asm
	farcall Func_f1b47
	jp TextScriptEnd

Route22FrontGateText:
	text_asm
	farcall Func_f1b67
	jp TextScriptEnd
