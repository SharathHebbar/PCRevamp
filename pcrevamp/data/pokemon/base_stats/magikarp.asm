	db  40, 60,  55,  80,  15,  50 ; 300 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER
	db 255 ; catch rate
	db 20 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn FEMALE_50, 0 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/magikarp_plain/front.dimensions"
	abilities_for MAGIKARP, SWIFT_SWIM, SWIFT_SWIM, RATTLED
	db SLOW ; growth rate
	dn FISH, REPTILE ; egg groups

	ev_yield   0,   0,   0,   1,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm CURSE, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SUBSTITUTE, FACADE, REST, ATTRACT, SCALD, WATER_PULSE, SURF, WATERFALL, AQUA_TAIL, BODY_SLAM, DOUBLE_EDGE, ENDURE, HEADBUTT, ICY_WIND, IRON_HEAD, SLEEP_TALK, SWAGGER
	; end
