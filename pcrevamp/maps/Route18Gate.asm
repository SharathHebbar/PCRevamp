Route18Gate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  5, ROUTE_18_WEST, 1
	warp_event  0,  6, ROUTE_18_WEST, 2
	warp_event  9,  5, ROUTE_18_EAST, 1
	warp_event  9,  6, ROUTE_18_EAST, 2
	warp_event  8,  8, ROUTE_18_GATE_2F, 1

	def_coord_events
	coord_event  5,  3, 0, UnknownScript_0x73611
	coord_event  5,  4, 0, UnknownScript_0x73611
	coord_event  5,  5, 0, Route18GateStepUpOneTrigger
	coord_event  5,  6, 0, Route18GateStepUpTwoTrigger
	coord_event  5,  7, 0, Route18GateStepUpThreeTrigger

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x7362c, -1

	object_const_def
	const ROUTE18GATE_OFFICER

Route18GateStepUpOneTrigger:
	checkkeyitem BICYCLE
	iftrue DoNothingScript
	applyonemovement PLAYER, step_up
	jump UnknownScript_0x73617

Route18GateStepUpTwoTrigger:
	checkkeyitem BICYCLE
	iftrue DoNothingScript
	applymovement PLAYER, Route18GateStepUpTwoMovementData
	jump UnknownScript_0x73617

Route18GateStepUpThreeTrigger:
	checkkeyitem BICYCLE
	iftrue DoNothingScript
	applymovement PLAYER, Route18GateStepUpThreeMovementData
	jump UnknownScript_0x73617

UnknownScript_0x73611:
	checkkeyitem BICYCLE
	iftrue DoNothingScript
UnknownScript_0x73617:
	showemote EMOTE_SHOCK, ROUTE18GATE_OFFICER, 15
	turnobject PLAYER, UP
	showtext UnknownText_0x7364d
	applymovement PLAYER, MovementData_0x73629
	end

Route18GateStepUpThreeMovementData:
	step_up
Route18GateStepUpTwoMovementData:
	step_up
	step_up
	step_end

MovementData_0x73629:
	step_right
	turn_head_left
	step_end

UnknownText_0x7362c:
	text "Cycling Road"
	line "starts going"
	cont "uphill here."
	done

UnknownText_0x7364d:
	text "Hang on! Don't you"
	line "have a Bicycle?"

	para "The Cycling Road"
	line "is beyond here."

	para "You have to have a"
	line "Bicycle to go on."
	done
