extends Area2D

onready var globals = get_node("/root/Globals")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var canPlaceBuilding : bool = false
var buildingType = 0 #can assign different builds different number
var isFarmer : bool = false
var isCorp : bool = false

var solar = preload("res://Assets/Graphics/Factory/SolarPanel.png")
var greenhouse = preload("res://Assets/Graphics/Factory/Greenhouse.png")
var mine = preload("res://Assets/Graphics/Factory/Mine.png")

onready var highlight : Sprite = get_node("Highlight")
onready var buildingIcon : Sprite = get_node("BuildingIcon")
onready var ground : Sprite = get_node("Ground")

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("Tiles")

func toggle_highlight (toggle):
	highlight.visible = toggle
	canPlaceBuilding = toggle


func place_building ():
	# Placing something and have money to do so
	print(globals.money)
	print(globals.next_placement)
	print(globals.next_placement_cost())
	if globals.next_placement != 0 && globals.cur_player_money() >= globals.next_placement_cost() && buildingType != globals.next_placement:
		globals.money[globals.cur_player] -= globals.next_placement_cost()
		var img = globals.BuildingsTextures[globals.next_placement]
		if img != null:
			buildingIcon.set_texture(img)
		buildingType = globals.next_placement
		print(globals.money)
	elif true:
		# Skip everything past here
		pass
	elif buildingType == 0:
		pass
	elif buildingType == 1:
		buildingType = 2
		buildingIcon.set_texture(solar)
	elif buildingType == 2:
		buildingType = 3
		buildingIcon.set_texture(greenhouse)
	elif buildingType == 3:
		buildingType = 4
		buildingIcon.set_texture(mine)
	else:
		buildingType = 0
		buildingIcon.set_texture(null)

func _on_Tile_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
		and event.button_index == BUTTON_LEFT \
		and event.pressed:
			self.on_click()

func on_click():
	print("clicked")
	place_building()
		

func _on_Tile_mouse_entered():
	toggle_highlight(true)



func _on_Tile_mouse_exited():
	toggle_highlight(false)
