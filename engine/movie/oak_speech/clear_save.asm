DoClearSaveDialogue:
	call ClearScreen
	call RunDefaultPaletteCommand
	call LoadFontTilePatterns
	call LoadTextBoxTilePatterns
	ld hl, ClearSaveDataText
	call PrintText
	ld a, B_BUTTON
	ld [wJoyIgnore], a
	hlcoord 14, 7
	lb bc, 8, 15
	ld a, NO_YES_MENU
	ld [wTwoOptionMenuID], a
	ld a, TWO_OPTION_MENU
	ld [wTextBoxID], a
	call DisplayTextBoxID
	ld a, 0
	ld [wJoyIgnore], a
	ld a, [wCurrentMenuItem]
	and a
	jp z, Init
	farcall ClearSAV
	jp Init

ClearSaveDataText:
	text_far _ClearSaveDataText
	text_end
