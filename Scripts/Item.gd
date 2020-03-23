extends Object

# Called when the node enters the scene tree for the first time.

var uses:int;

const Player=preload("res://Scripts/Player.cs");

func _init(_uses):
	uses=_uses
	set_meta("type","item")

func castTo(_target: Player)->float:
	return 0.0

func use(target: Player):
	if(uses != 0):
		castTo(target);
		if(uses > 0):
			uses-=1;

