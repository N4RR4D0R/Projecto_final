extends Object

# Called when the node enters the scene tree for the first time.

var uses:int;
var ready:bool=false;

func _init():
	set_meta("type","item")

func setUses(_uses:int):
	self.uses=_uses;
	ready=true;

func castTo(_target)->void:
	pass

func use(target):
	if(uses != 0 or not ready):
		castTo(target);
		if(uses > 0):
			uses-=1;

