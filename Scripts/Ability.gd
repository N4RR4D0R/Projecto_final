extends Object

var cooldown:int;

const Player=preload("res://Scripts/Player.cs")

func _init():
	set_meta("type","ability");

func castTo(_target: Player):
	pass

func use(target: Player):
	if cooldown <=0:
		cooldown=castTo(target);

func update():
	if cooldown > 0:
		cooldown-=1;
