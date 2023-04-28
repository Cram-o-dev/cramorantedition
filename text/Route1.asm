_Route1ViridianMartSampleText::
	text "Hi! I work at a"
	line "#MON MART."

	para "It's a convenient"
	line "shop, so please"
	cont "visit us in"
	cont "VIRIDIAN CITY."

	para "I know, I'll give"
	line "you a sample!"
	cont "Here you go!"
	prompt

_Route1Text_1cae8::
	text "<PLAYER> got"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_Route1Text_1caee::
	text "We also carry"
	line "# BALLs for"
	cont "catching #MON!"
	done

_Route1Text_1caf3::
	text "You have too much"
	line "stuff with you!"
	done

_Route1Text2::
	text "See those ledges"
	line "along the road?"

	para "It's a bit scary,"
	line "but you can jump"
	cont "from them."

	para "You can get back"
	line "to PALLET TOWN"
	cont "quicker that way."
	done
	
_Route1BattleText1::
	text "Hello hello..."
	line "Would you like to"
	cont "experience the"
	cont "might of..."
	
	para "My CRAMORANTs?"
	done
	
_Route1BattleYesText1::
	text "Aww Yeah!"
	
	para "IT'S CRAMMIN'"
	line "TIME!"
	done
	
_Route1BattleNoText1::
	text "I totally get it."

	para "Most folks are"
	line "intimidated by"
	cont "their power."
	done

_Route1EndBattleText1::
	text "NO!"
	line "My beloved CRAMO-"
	cont "RANT!"
	prompt

_Route1AfterBattleText1::
	text "Wait, didn't I"
	line "already ask you"
	cont "about that"
	
	para "Whoops! I'm so"
	line "sorry!"
	
	para "I tend to emulate"
	line "my CRAMORANTs"
	cont "forgetfulness!"
	done
	
_Route1Text3::
	text "ROUTE 1"
	line "PALLET TOWN -"
	cont "VIRIDIAN CITY"
	done