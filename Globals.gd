extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var current_scene = null


const P1 = 0
const P2 = 1
const FARMER = 0
const COMPANY = 1

var cur_player = P1

var money = [1000,1000]
var levels = [0,0]
var income = [0, 0]

var day = 1
# Scale of 1-10
var polution = 0
var weather = Weather.CLEAR
enum Weather {
	CLEAR,
	RAINY,
	STORMY
}

enum BuildingsFarmer {
	CROPS = 1,
	SOLAR = 3,
	GREENHOUSE = 5,
}
enum BuildingsCompany {
	MINE = 2,
	BASE = 4,
	STORAGE = 6
}

const BuildingsCost = [
	0, # Nothing
	500, # Crops
	500, # Mine
	1000, # Solar
	1000, # Base
	1500, # Greenhouse
	1500, # Storage
]

const BuildingsIncome = [
	0, # Nothing
	200, # Crops
	200, # Mine
	350, # Solar
	350, # Base
	500, # Greenhouse
	500, #Storage
]

const BuildingsTextures = [
	null,
	preload("res://Assets/Graphics/Plant/Crops.png"),
	preload("res://Assets/Graphics/Factory/Mine.png"),
	preload("res://Assets/Graphics/Factory/SolarPanel.png"),
	preload("res://Assets/Graphics/Factory/Base.png"),
	preload("res://Assets/Graphics/Factory/Greenhouse.png"),
	preload("res://Assets/Graphics/Factory/Storage.png")
]

var next_placement = 0

func reset_data():
	money = [1000,1000]
	levels = [0,0]
	day = 1
	polution = 0
	weather = Weather.CLEAR
	cur_player = P1
	next_placement = 0
	
	
func cur_player_money():
	return money[cur_player]

func next_placement_image():
	return BuildingsTextures[next_placement]
	
func next_placement_cost():
	return BuildingsCost[next_placement]

func next_turn():
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count() - 1)

func goto_scene(path):
	# This function will usually be called from a signal callback,
	# or some other function in the current scene.
	# Deleting the current scene at this point is
	# a bad idea, because it may still be executing code.
	# This will result in a crash or unexpected behavior.

	# The solution is to defer the load to a later time, when
	# we can be sure that no code from the current scene is running:

	call_deferred("_deferred_goto_scene", path)


func _deferred_goto_scene(path):
	# It is now safe to remove the current scene
	current_scene.free()

	# Load the new scene.
	var s = ResourceLoader.load(path)

	# Instance the new scene.
	current_scene = s.instance()

	# Add it to the active scene, as child of root.
	get_tree().root.add_child(current_scene)

	# Optionally, to make it compatible with the SceneTree.change_scene() API.
	get_tree().current_scene = current_scene
