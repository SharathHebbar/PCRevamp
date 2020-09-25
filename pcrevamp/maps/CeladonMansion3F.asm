CeladonMansion3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  0, CELADON_MANSION_ROOF, 1
	warp_event  1,  0, CELADON_MANSION_2F, 2
	warp_event  6,  0, CELADON_MANSION_2F, 3
	warp_event  7,  0, CELADON_MANSION_ROOF, 2

	def_coord_events

	def_bg_events
	bg_event  5,  8, BGEVENT_UP, MapCeladonMansion3FSignpost0Script
	bg_event  4,  3, BGEVENT_UP, MapCeladonMansion3FSignpost1Script
	bg_event  1,  6, BGEVENT_UP, MapCeladonMansion3FSignpost2Script
	bg_event  1,  3, BGEVENT_UP, MapCeladonMansion3FSignpost3Script

	def_object_events
	object_event  3,  6, SPRITE_COOL_DUDE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CooltrainerMScript_0x71670, -1
	object_event  3,  4, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x717b4, -1
	object_event  0,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x71895, -1
	object_event  0,  4, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x718ca, -1

CooltrainerMScript_0x71670:
	faceplayer
	opentext
	writetext UnknownText_0x716ce
	checkcode VAR_DEXCAUGHT
	ifgreater 252, UnknownScript_0x7167e
	waitendtext

UnknownScript_0x7167e:
	buttonsound
	writetext UnknownText_0x71725
	playsound SFX_DEX_FANFARE_230_PLUS
	waitsfx
	writetext UnknownText_0x71760
	buttonsound
	special Diploma
	jumpopenedtext UnknownText_0x71763

MapCeladonMansion3FSignpost0Script:
	jumptext UnknownText_0x7190b

MapCeladonMansion3FSignpost1Script:
	jumptext UnknownText_0x71928

MapCeladonMansion3FSignpost2Script:
	jumptext UnknownText_0x71952

MapCeladonMansion3FSignpost3Script:
	jumptext UnknownText_0x71996

UnknownText_0x716ce:
	text "Is that right?"

	para "I'm the Game"
	line "Designer!"

	para "Filling up your"
	line "#dex is tough,"
	cont "but don't give up!"
	done

UnknownText_0x71725:
	text "Wow! Excellent!"
	line "You completed your"
	cont "#dex!"

	para "Congratulations!"
	done

UnknownText_0x71760:
	text "…"
	done

UnknownText_0x71763:
	text "You should go show"
	line "that off!"
	done

UnknownText_0x717b4:
	text "I'm the Graphic"
	line "Artist."

	para "I drew you!"
	done

UnknownText_0x71895:
	text "Who, me? I'm the"
	line "Programmer."

	para "Use the Wonder"
	line "Trade Hub!"
	done

UnknownText_0x718ca:
	text "Isn't Lyra"
	line "adorable?"

	para "Jasmine's pretty"
	line "too."

	para "Oh, I love them!"
	done

UnknownText_0x7190b:
	text "GAME FREAK"
	line "Development Room"
	done

UnknownText_0x71928:
	text "It's a detailed"
	line "drawing of a"
	cont "pretty girl."
	done

UnknownText_0x71952:
	text "It's the game"
	line "program. Messing"

	para "with it could put"
	line "a bug in the game!"
	done

UnknownText_0x71996:
	text "It's crammed with"
	line "reference materi-"
	cont "als. There's even"
	cont "a # Doll."
	done
