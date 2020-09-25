if DEF(FAITHFUL)
	db  95,  75,  80,  30, 100, 110 ; 490 BST
	;   hp  atk  def  spd  sat  sdf
else
	db  95,  75,  80,  30, 100, 120 ; 500 BST
	;   hp  atk  def  spd  sat  sdf
endc

	db WATER, PSYCHIC
	db 70 ; catch rate
	db 164 ; base exp
	db NO_ITEM ; item 1
	db KINGS_ROCK ; item 2
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/slowking/front.dimensions"
	abilities_for SLOWKING, OBLIVIOUS, OWN_TEMPO, REGENERATOR
	db MEDIUM_FAST ; growth rate
	dn MONSTER, AMPHIBIAN ; egg groups

	ev_yield   0,   0,   0,   0,   0,   3
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm DYNAMICPUNCH, CURSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, BULLDOZE, IRON_TAIL, EARTHQUAKE, RETURN, DIG, PSYCHIC, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, FOCUS_BLAST, SCALD, DRAIN_PUNCH, WATER_PULSE, AVALANCHE, GIGA_IMPACT, FLASH, THUNDER_WAVE, SURF, STRENGTH, WHIRLPOOL, AQUA_TAIL, BODY_SLAM, COUNTER, DOUBLE_EDGE, DREAM_EATER, ENDURE, HEADBUTT, ICE_PUNCH, ICY_WIND, PAY_DAY, SEISMIC_TOSS, SKILL_SWAP, SLEEP_TALK, SWAGGER, TRICK, ZAP_CANNON, ZEN_HEADBUTT
	; end