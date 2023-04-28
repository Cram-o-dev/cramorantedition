MACRO vend_item
	db \1
	bcd3 \2
ENDM

VendingPrices:
	; item id, price
	vend_item FRESH_WATER, 500
	vend_item SODA_POP,    700
	vend_item LEMONADE,    750
