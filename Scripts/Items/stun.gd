extends "res://Scripts/Item.gd"

func castTo(target: Player):
	target.set_meta("stun",target.get_meta("stun")+1.0)
	return 3.0
