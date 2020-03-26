extends "res://Scripts/Item.gd"

const Player=preload("res://Scripts/Player.gd");

var cooldown:float=3.0

func _init():
	._init()
	self.setUses(cooldown);

func castTo(target: Player)->void:
	target.set_meta("stun",target.get_meta("stun")+1.0)
	return
