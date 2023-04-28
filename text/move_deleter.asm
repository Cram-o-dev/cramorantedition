_MoveDeleterGreetingText::
	text "Who was I again?"
	
	para "..."
	line "..."
	
	para "Oh yes! I'm the"
	line "MOVE DELETER."

	para "Should a #MON"
	line "forget a move?"
	done

_MoveDeleterSaidYesText::
	text "Which #MON"
	line "should forget a"
	cont "move?"
	prompt

_MoveDeleterWhichMoveText::
	text "Which move should"
	line "it forget, then?"
	done

_MoveDeleterConfirmText::
	text "Make it forget"
	line "@"
	text_ram wStringBuffer
	text "?"
	prompt

_MoveDeleterForgotText::
	text "@"
	text_ram wStringBuffer
	text " was"
	line "forgotten!"
	prompt

_MoveDeleterByeText::
	text "Thank you! Don't"
	line "forget to visit"
	cont "again sometime to"
	cont "delete your moves."
	done

_MoveDeleterOneMoveText::
	text "That #mon"
	line "has only one"
	cont "move. Choose"
	cont "another?"
	done