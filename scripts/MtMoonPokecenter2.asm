MagikarpSalesman::
	CheckEvent EVENT_BOUGHT_MAGIKARP, 1
	jp c, .alreadyBoughtMagikarp
	ld hl, .Text1
	call PrintText
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .choseNo
	; $003000
	xor a
	ldh [hMoney], a
	ldh [hMoney + 2], a
	ld a, $30
	ldh [hMoney + 1], a
	call HasEnoughMoney
	jr nc, .enoughMoney
	ld hl, .NoMoneyText
	jr .printText
.enoughMoney
	lb bc, ABRA, 5
	call GivePokemon
	jr nc, .done
	; $003000
	xor a
	ld [wPriceTemp], a
	ld [wPriceTemp + 2], a
	ld a, $30
	ld [wPriceTemp + 1], a
	ld hl, wPriceTemp + 2
	ld de, wPlayerMoney + 2
	ld c, $3
	predef SubBCDPredef
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	SetEvent EVENT_BOUGHT_MAGIKARP
	jr .done
.choseNo
	ld hl, .RefuseText
	jr .printText
.alreadyBoughtMagikarp
	ld hl, .Text2
.printText
	call PrintText
.done
	ret

.Text1
	text_far _MagikarpSalesmanText1
	text_end

.RefuseText
	text_far _MagikarpSalesmanNoText
	text_end

.NoMoneyText
	text_far _MagikarpSalesmanNoMoneyText
	text_end

.Text2
	text_far _MagikarpSalesmanText2
	text_end
