ViridianForestSouthGate_Script:
	call EnableAutoTextBoxDrawing
	ld hl, ViridianForestSouthGate_ScriptPointers
	ld a, [wViridianForestSouthGateCurScript]
	call CallFunctionInTable
	ret
	
ViridianForestSouthGate_ScriptPointers:
	dw ViridianForestSouthGateScript0

ViridianForestSouthGateScript0:
	CheckEventHL EVENT_02D
	ret z
	CheckAndSetEventReuseHL EVENT_02C
	ret nz
	ld a, HS_OLD_MAN
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_OLD_MAN_1
	ld [wMissableObjectIndex], a
	predef ShowObject
	ret
	
ViridianForestSouthGate_TextPointers:
	dw ViridianForestEntranceText1
	dw ViridianForestEntranceText2

ViridianForestEntranceText1:
	text_far _ViridianForestEntranceText1
	text_end

ViridianForestEntranceText2:
	text_far _ViridianForestEntranceText2
	text_end
