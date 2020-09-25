GoldenrodBillsHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 4
	warp_event  3,  7, GOLDENROD_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GrampsScript_0x189538, -1
	object_event  5,  3, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BillsMom, -1
	object_event  5,  4, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BillsSister, -1

GrampsScript_0x189538:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue_jumptextfaceplayer BillsGrandpaComeAgainText
	checkevent EVENT_GOT_SHINY_STONE_FROM_BILLS_GRANDPA
	iftrue_jumptextfaceplayer BillsGrandpaShownAllThePokemonText
	faceplayer
	opentext
	checkevent EVENT_MET_BILLS_GRANDPA
	iftrue .MetGrandpa
	writetext BillsGrandpaIntroText
	buttonsound
	setevent EVENT_MET_BILLS_GRANDPA
.MetGrandpa:
	checkevent EVENT_SHOWED_TOGEPI_TO_BILLS_GRANDPA
	iftrue .ShowedTogepi
	checkevent EVENT_SHOWED_MURKROW_TO_BILLS_GRANDPA
	iftrue .ShowedMurkrow
	checkevent EVENT_SHOWED_ODDISH_TO_BILLS_GRANDPA
	iftrue .ShowedOddish
	checkevent EVENT_SHOWED_JIGGLYPUFF_TO_BILLS_GRANDPA
	iftrue .ShowedJigglypuff
	checkevent EVENT_SHOWED_PICHU_TO_BILLS_GRANDPA
	iftrue .ShowedPichu
	checkevent EVENT_SHOWED_GROWLITHE_TO_BILLS_GRANDPA
	iftrue .ShowedGrowlithe
	checkevent EVENT_SHOWED_STARYU_TO_BILLS_GRANDPA
	iftrue .ShowedStaryu
	checkevent EVENT_SHOWED_BELLSPROUT_TO_BILLS_GRANDPA
	iftrue .ShowedBellsprout
	checkevent EVENT_SHOWED_SNUBBULL_TO_BILLS_GRANDPA
	iftrue .ShowedSnubbull
	writetext BillsGrandpaSnubbullText
	buttonsound
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	ifnotequal SNUBBULL, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_SNUBBULL_TO_BILLS_GRANDPA
	jump .ShowedSnubbull

.GotEverstone:
	writetext BillsGrandpaBellsproutText
	buttonsound
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	ifnotequal BELLSPROUT, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_BELLSPROUT_TO_BILLS_GRANDPA
	jump .ShowedBellsprout

.GotLeafStone:
	writetext BillsGrandpaStaryuText
	buttonsound
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	ifnotequal STARYU, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_STARYU_TO_BILLS_GRANDPA
	jump .ShowedStaryu

.GotWaterStone:
	writetext BillsGrandpaGrowlitheText
	buttonsound
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	ifnotequal GROWLITHE, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_GROWLITHE_TO_BILLS_GRANDPA
	jump .ShowedGrowlithe

.GotFireStone:
	writetext BillsGrandpaPichuText
	buttonsound
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	ifnotequal PICHU, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_PICHU_TO_BILLS_GRANDPA
	jump .ShowedPichu

.GotThunderstone:
	writetext BillsGrandpaJigglypuffText
	buttonsound
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	ifnotequal JIGGLYPUFF, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_JIGGLYPUFF_TO_BILLS_GRANDPA
	jump .ShowedJigglypuff

.GotMoonStone:
	writetext BillsGrandpaOddishText
	buttonsound
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	ifnotequal ODDISH, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_ODDISH_TO_BILLS_GRANDPA
	jump .ShowedOddish

.GotSunStone:
	writetext BillsGrandpaMurkrowText
	buttonsound
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	ifnotequal MURKROW, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_MURKROW_TO_BILLS_GRANDPA
	jump .ShowedMurkrow

.GotDuskStone:
	writetext BillsGrandpaTogepiText
	buttonsound
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	ifnotequal TOGEPI, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_TOGEPI_TO_BILLS_GRANDPA
	jump .ShowedTogepi

.ShowedSnubbull:
	checkevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
	iftrue .GotEverstone
	scall .ReceiveItem
	verbosegiveitem EVERSTONE
	iffalse_endtext
	setevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	endtext

.ShowedBellsprout:
	checkevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
	iftrue .GotLeafStone
	scall .ReceiveItem
	verbosegiveitem LEAF_STONE
	iffalse_endtext
	setevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	endtext

.ShowedStaryu:
	checkevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
	iftrue .GotWaterStone
	scall .ReceiveItem
	verbosegiveitem WATER_STONE
	iffalse_endtext
	setevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	endtext

.ShowedGrowlithe:
	checkevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
	iftrue .GotFireStone
	scall .ReceiveItem
	verbosegiveitem FIRE_STONE
	iffalse_endtext
	setevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	endtext

.ShowedPichu:
	checkevent EVENT_GOT_THUNDERSTONE_FROM_BILLS_GRANDPA
	iftrue .GotThunderstone
	scall .ReceiveItem
	verbosegiveitem THUNDERSTONE
	iffalse_endtext
	setevent EVENT_GOT_THUNDERSTONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	endtext

.ShowedJigglypuff:
	checkevent EVENT_GOT_MOON_STONE_FROM_BILLS_GRANDPA
	iftrue .GotMoonStone
	scall .ReceiveItem
	verbosegiveitem MOON_STONE
	iffalse_endtext
	setevent EVENT_GOT_MOON_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	endtext

.ShowedOddish:
	checkevent EVENT_GOT_SUN_STONE_FROM_BILLS_GRANDPA
	iftrue .GotSunStone
	scall .ReceiveItem
	verbosegiveitem SUN_STONE
	iffalse_endtext
	setevent EVENT_GOT_SUN_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	endtext

.ShowedMurkrow:
	checkevent EVENT_GOT_DUSK_STONE_FROM_BILLS_GRANDPA
	iftrue .GotDuskStone
	scall .ReceiveItem
	verbosegiveitem DUSK_STONE
	iffalse_endtext
	setevent EVENT_GOT_DUSK_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	endtext

.ShowedTogepi:
	scall .ReceiveItem
	verbosegiveitem SHINY_STONE
	iffalse_endtext
	setevent EVENT_GOT_SHINY_STONE_FROM_BILLS_GRANDPA
	endtext

.ExcitedToSee:
	writetext BillsGrandpaExcitedToSeeText
	buttonsound
	end

.CorrectPokemon:
	writetext BillsGrandpaShownPokemonText
	buttonsound
	end

.ReceiveItem:
	writetext BillsGrandpaTokenOfAppreciationText
	buttonsound
	end

.WrongPokemon:
	jumpthisopenedtext

	text "Hm?"

	para "That's not the"
	line "#mon that I was"
	cont "told about."
	done

BillsMom:
	checkevent EVENT_NEVER_MET_BILL
	iffalse_jumptextfaceplayer UnknownText_0x54f4e
	jumptextfaceplayer UnknownText_0x54ea8

BillsSister:
	faceplayer
	opentext
	checkcellnum PHONE_BILL
	iftrue UnknownScript_0x54c58
	writetext UnknownText_0x54f9e
	askforphonenumber PHONE_BILL
	ifequal $1, UnknownScript_0x54c64
	ifequal $2, UnknownScript_0x54c5e
	waitsfx
	addcellnum PHONE_BILL
	writetext UnknownText_0x54fd9
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	buttonsound
UnknownScript_0x54c58: ;0x54c58
	jumpopenedtext UnknownText_0x55069

UnknownScript_0x54c64:
	writetext UnknownText_0x55046
	buttonsound
UnknownScript_0x54c5e:
	jumpthisopenedtext

	text "My brother made"
	line "the PC #mon"
	cont "storage system."

	para "I was going to"
	line "give you Bill's"
	cont "number…"
	done

BillsGrandpaIntroText:
	text "Hm? You know Bill?"
	line "He's my grandson."

	para "He's in Kanto. He"
	line "does something"

	para "with PCs, so I'm"
	line "house-sitting."
	done

BillsGrandpaAskToSeeMonText:
	text "If you have that"
	line "#mon, may I see"
	cont "it, please?"
	done

BillsGrandpaExcitedToSeeText:
	text "You will show me?"
	line "How good of you!"
	done

BillsGrandpaYouDontHaveItTextText:
	text "You don't have it?"
	line "That's too bad…"
	done

BillsGrandpaShownPokemonText:
	text "Ah, so that is"
	line ""
	text_from_ram wStringBuffer3
	text "?"

	para "Isn't it cute!"
	line "That's so kind of"
	cont "you."
	done

BillsGrandpaTokenOfAppreciationText:
	text "Thanks!"

	para "This is a token of"
	line "my appreciation."
	done

BillsGrandpaComeAgainText:
	text "Come visit again"
	line "sometime."
	done

BillsGrandpaShownAllThePokemonText:
	text "Thanks for showing"
	line "me so many cute"
	cont "#mon."

	para "I really enjoyed"
	line "myself. I'm glad"

	para "I've lived such a"
	line "long life."
	done

BillsGrandpaSnubbullText:
	text "My grandson Bill"
	line "told me about a"

	para "short, pink canine"
	line "#mon with blue"
	cont "polka dots."
	done

BillsGrandpaTogepiText:
	text "Do you know of a"
	line "#mon that has a"

	para "shell covered in"
	line "red and blue"
	cont "triangles?"

	para "It's supposed to"
	line "be a symbol of"
	cont "good luck."
	done

BillsGrandpaMurkrowText:
	text "Do you know of a"
	line "bird #mon that"

	para "has a crooked"
	line "yellow beak and"
	cont "black feathers?"

	para "I heard that it"
	line "appears at night."

	para "I would quite"
	line "like to see it."
	done

BillsGrandpaOddishText:
	text "Ah, my grandson"
	line "mentioned a round,"

	para "blue #mon that"
	line "has leaves growing"
	cont "on its head."
	done

BillsGrandpaJigglypuffText:
	text "Bill told me about"
	line "a pink #mon"

	para "with a hypnotic"
	line "singing voice."
	done

BillsGrandpaBellsproutText:
	text "My grandson Bill"
	line "mentioned a green"

	para "#mon that walks"
	line "on its roots."
	done

BillsGrandpaStaryuText:
	text "Do you know of a"
	line "sea #mon that"

	para "has a red sphere"
	line "in its body?"

	para "You know, the one"
	line "that's shaped like"
	cont "a star?"

	para "I heard that it"
	line "appears at night."

	para "I would surely"
	line "like to see it."
	done

BillsGrandpaGrowlitheText:
	text "Bill told me about"
	line "a #mon that is"

	para "very loyal to its"
	line "trainer."

	para "It's supposed to"
	line "Roar well."
	done

BillsGrandpaPichuText:
	text "Do you know that"
	line "hugely popular"
	cont "#mon?"

	para "The #mon that"
	line "has a yellow body"
	cont "and red cheeks."

	para "I would love to"
	line "see what it looks"

	para "like before it"
	line "evolves."
	done

UnknownText_0x54ea8:
	text "Oh, you collect"
	line "#mon? My son"
	cont "Bill is an expert."

	para "He just got called"
	line "to the #mon"

	para "Center in Ecruteak"
	line "City."

	para "My husband went"
	line "off to the Game"

	para "Corner without"
	line "being called…"
	done

UnknownText_0x54f4e:
	text "My husband was"
	line "once known as a"

	para "#Maniac."
	line "Bill must have"

	para "taken after his"
	line "father."

	para "But now my husband"
	line "won't work. He"

	para "just goofs off"
	line "all day long."
	done

UnknownText_0x54f9e:
	text "Are you a trainer?"

	para "I've got a useful"
	line "phone number for"
	cont "you."
	done

UnknownText_0x54fd9:
	text "<PLAYER> recorded"
	line "Bill's number."
	done

UnknownText_0x55046:
	text "You can't record"
	line "any more numbers."
	done

UnknownText_0x55069:
	text "My big brother"
	line "Bill made the PC"

	para "#mon storage"
	line "system."
	done
