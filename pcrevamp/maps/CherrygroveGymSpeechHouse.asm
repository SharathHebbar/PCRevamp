CherrygroveGymSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CHERRYGROVE_CITY, 3
	warp_event  3,  7, CHERRYGROVE_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x196aea, -1
	object_event  5,  5, SPRITE_CHILD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x196b65, -1

UnknownText_0x196aea:
	text "You're trying to"
	line "see how good you"

	para "are as a #mon"
	line "trainer?"

	para "You better visit"
	line "the #mon Gyms"

	para "all over Johto and"
	line "collect Badges."
	done

UnknownText_0x196b65:
	text "When I get older,"
	line "I'm going to be a"
	cont "Gym Leader!"

	para "I make my #mon"
	line "battle with my"

	para "friend's to make"
	line "them tougher!"
	done
