PrizeDifferentMenuPtrs:
	dw PrizeMenuMon1Entries, PrizeMenuMon1Cost
	dw PrizeMenuMon2Entries, PrizeMenuMon2Cost
	dw PrizeMenuTMsEntries,  PrizeMenuTMsCost

PrizeMenuMon1Entries:
	db FARFETCHD
	db HITMONCHAN
	db HITMONLEE
	db "@"

PrizeMenuMon1Cost:
	bcd2 200
	bcd2 1500
	bcd2 1500
	db "@"

PrizeMenuMon2Entries:
	db EEVEE
	db TAUROS
	db PORYGON
	db "@"

PrizeMenuMon2Cost:
	bcd2 1200
	bcd2 3500
	bcd2 5000
	db "@"

PrizeMenuTMsEntries:
	db SNORLAX
	db DRATINI
	db MEW
	db "@"

PrizeMenuTMsCost:
	bcd2 4500
	bcd2 5500
	bcd2 9999
	db "@"
