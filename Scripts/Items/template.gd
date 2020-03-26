extends "res://Scripts/Item.gd"

const Player=preload("res://Scripts/Player.gd");

var cooldown:int=0

func _init():
	._init()
	self.setUses(cooldown)

func castTo(target: Player)->void:
	#Codigo aquí
	return
