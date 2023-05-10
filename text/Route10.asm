_Route10BattleText1::
	text "Wow, are you a"
	line "#MANIAC too?"
	cont "Want to see my"
	cont "collection?"
	done

_Route10EndBattleText1::
	text "Humph."
	line "I'm not angry!"
	prompt

_Route10AfterBattleText1::
	text "I have more rare"
	line "#MON at home!"
	done

_Route10BattleText2::
	text "Ha-hahah-ah-ha!"
	done

_Route10EndBattleText2::
	text "Ha-haha!"
	line "Not laughing!"
	cont "Ha-hay fever!"
	cont "Haha-ha-choo!"
	prompt

_Route10AfterBattleText2::
	text "Haha-ha-choo!"
	line "Ha-choo!"
	cont "Snort! Snivel!"
	done

_Route10BattleText3::
	text "Hi, kid, want to"
	line "see my #MON?"
	done

_Route10EndBattleText3::
	text "Oh no!"
	line "My #MON!"
	prompt

_Route10AfterBattleText3::
	text "I don't like you"
	line "for beating me!"
	done

_Route10BattleText4::
	text "I've been to a"
	line "#MON GYM a few"
	cont "times. But, I"
	cont "lost each time."
	done

_Route10EndBattleText4::
	text "Ohh!"
	line "Blew it again!"
	prompt

_Route10AfterBattleText4::
	text "I noticed some"
	line "#MANIACs"
	cont "prowling around."
	done

_Route10BattleText5::
	text "Ah! This mountain"
	line "air is delicious!"
	done

_Route10EndBattleText5::
	text "That"
	line "cleared my head!"
	prompt

_Route10AfterBattleText5::
	text "I feel bloated on"
	line "mountain air!"
	done

_Route10BattleText6::
	text "I'm feeling a bit"
	line "faint from this"
	cont "tough hike."
	done

_Route10EndBattleText6::
	text "I'm"
	line "not up to it!"
	prompt

_Route10AfterBattleText6::
	text "The #MON here"
	line "are so chunky!"
	cont "There should be a"
	cont "pink one with a"
	cont "floral pattern!"
	done
	
_CoinPreReceiveText::
	text "Hello TRAINER! I"
	line "see you've found"
	cont "my home!"
	
	para "Yes, I live out"
	line "here in the wild"
	cont "with #MON."
	cont "This life suits"
	cont "me more than"
	cont "living in the"
	cont "city."
	
	para "People who come"
	line "across me receive"
	cont "the last of my"
	cont "worldly effects!"
	
	para "Today is your"
	line "lucky day!"
	prompt
	
_ReceivedCoinText::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end
	
_CoinNoRoomText::
	text "You got no room!"
	line "Please take this"
	cont "off my hands!"
	done
	
_CoinExplanationText::
	text "That COIN has no"
	line "more value to me."
	cont "I have no further"
	cont "need for things"
	cont "like money."
	
	para "Now if you'll"
	line "excuse me, I"
	cont "might go have a"
	cont "look in that"
	cont "POWER PLANT."
	
	para "Might find me some"
	line "parts to build me"
	cont "a tent! Exciting!"
	done

_Route10Text9::
_Route10Text7::
	text "ROCK TUNNEL"
	done

_Route10Text10::
	text "POWER PLANT"
	done
