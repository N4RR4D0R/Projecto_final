extends Node2D

const Item=preload("res://Scripts/Item.gd");
const Ability=preload("res://Scripts/Ability.gd");

var maxItem=ProjectSettings.get("Game/Max_items");
var maxAbilities=ProjectSettings.get("Game/Max_abilities");

var items:Array=[];
var abilities:Array=[];

var body:Polygon2D;
var Rarm:Polygon2D;
var Larm:Polygon2D;

var color:Color setget set_color,get_color;

# Called when the node enters the scene tree for the first time.
func _ready():
	items.resize(maxItem);
	abilities.resize(maxAbilities)
	_setStatus()
	body=get_node("Body");
	Rarm=get_node("Right arm");
	Larm=get_node("Left arm");

func _setStatus():
	set_meta("type","player");
	set_meta("vida",100.0);
	set_meta("velocidad",2.0);
	set_meta("danyo",10.0);
	set_meta("armadura",1.0);
	set_meta("iniciativa",2.0);
	
	set_meta("vida_t",0.0);
	set_meta("danyo_t",0.0);
	set_meta("iniciativa",0.0);
	
	set_meta("stun",0.0);
	set_meta("paralisis",0.0);
	set_meta("veneno",0.0);
	set_meta("encendido",0.0);
	
	set_meta("target",null);
	set_meta("target_duration",0.0);

func set_cosa(index:int,cosa,recipiente):
	if index<recipiente.size():
		if recipiente[index]==null:
			recipiente[index]=cosa

func set_item(index:int, item:Item):
	set_cosa(index,item,items);

func set_ability(index:int, ability:Ability):
	set_cosa(index,ability,abilities);

func use(index:int,target,recipiente,Clase):
	if recipiente[index] is Clase:
		recipiente[index].use(target)

func use_item(index:int,target):
	use(index,target,items,Item);

func use_ability(index:int,target):
	use(index,target,abilities,Ability);

func set_color(color:Color):
	body.color=color;
	Rarm.color=color;
	Larm.color=color;

func get_color()->Color:
	return body.color; 
