	db  50,  50,  95,  35,  40,  50 ; 320 BST
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND
	db 190 ; catch rate
	db 87 ; base exp
	db NO_ITEM ; item 1
	db THICK_CLUB ; item 2
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/cubone/front.dimensions"
if DEF(FAITHFUL)
	abilities_for CUBONE, ROCK_HEAD, LIGHTNING_ROD, BATTLE_ARMOR
else
	abilities_for CUBONE, ROCK_HEAD, CURSED_BODY, BATTLE_ARMOR
endc
	db MEDIUM_FAST ; growth rate
	dn MONSTER, MONSTER ; egg groups

	ev_yield   0,   0,   1,   0,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, PROTECT, BULLDOZE, IRON_TAIL, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, FLAMETHROWER, SANDSTORM, FIRE_BLAST, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, FALSE_SWIPE, SHADOW_CLAW, SWORDS_DANCE, STRENGTH, BODY_SLAM, COUNTER, DOUBLE_EDGE, EARTH_POWER, ENDURE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, ICY_WIND, IRON_HEAD, KNOCK_OFF, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, THUNDERPUNCH
	; end