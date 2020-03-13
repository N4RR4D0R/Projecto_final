extends Object

# Called when the node enters the scene tree for the first time.

var uses:int;

const Player=preload("res://Scripts/Player.cs");

func _init(_uses):
	uses=_uses

func castTo(_target: Player):
	pass

func use(target: Player):
	if(uses != 0):
		castTo(target);
		if(uses > 0):
			uses-=1;

