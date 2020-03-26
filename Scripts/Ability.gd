extends Object

var cooldown:int;

func _init():
	set_meta("type","ability");

func castTo(_target):
	pass

func use(target):
	if cooldown <= 0:
		cooldown=castTo(target);

func update():
	if cooldown > 0:
		cooldown-=1;

