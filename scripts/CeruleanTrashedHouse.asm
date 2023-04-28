CeruleanTrashedHouse_Script:
	call EnableAutoTextBoxDrawing
	ret

CeruleanTrashedHouse_TextPointers:
	dw CeruleanHouseTrashedText1
	dw CeruleanHouseTrashedText2
	dw CeruleanHouseTrashedText3
	dw CeruleanHouseTrashedTable
	dw CeruleanHouseTrashedPlant
	dw CeruleanHouseTrashedCracks

CeruleanHouseTrashedText1:
	text_asm
	ld b, TM_DIG
	predef GetQuantityOfItemInBag
	and b
	jr z, .no_dig_tm
	ld hl, CeruleanHouseTrashedText_1d6b0
	call PrintText
	jr .done
.no_dig_tm
	ld hl, CeruleanHouseTrashedText_1d6ab
	call PrintText
.done
	jp TextScriptEnd

CeruleanHouseTrashedText_1d6ab:
	text_far _CeruleanTrashedText_1d6ab
	text_end

CeruleanHouseTrashedText_1d6b0:
	text_far _CeruleanTrashedText_1d6b0
	text_end

CeruleanHouseTrashedText2:
	text_far _CeruleanHouseTrashedText2
	text_end

CeruleanHouseTrashedText3:
	text_far _CeruleanHouseTrashedText3
	text_end
	
CeruleanHouseTrashedTable:
	text_far _CeruleanHouseTrashedTable
	text_end
	
CeruleanHouseTrashedPlant:
	text_far _CeruleanHouseTrashedPlant
	text_end
	
CeruleanHouseTrashedCracks:
	text_far _CeruleanHouseTrashedCracks
	text_end
