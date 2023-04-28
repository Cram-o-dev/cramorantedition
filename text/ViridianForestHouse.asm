_SafariBallPreReceiveText::
	text "Oh hello!"
	line "What a surprise!"

	para "It's not often"
	line "I get a visitor!"
	
	para "I'm so happy,"
	line "I'll give you"
	cont "something nice!"
	prompt

_ReceivedSafariBallText::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_SafariBallExplanationText::
	text "I've heard these"
	line "SAFARI BALLs are"
	cont "quite decent at"
	cont "catching #MON!"
	
	para "Use them wisely."
	done

_SafariBallNoRoomText::
	text "You've got no room"
	line "for these, pal!"
	done

_ViridianForestHouseOutsideText::
	text "Nothing but dark"
	line "forest outside."
	done