extends Node2D

export var testGameScene : PackedScene

func _on_Farm_button_up():
	_set_Role(true)

func _on_Factory_button_up():
	_set_Role(false)

func _on_Random_button_up():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var rand_num = rng.randi_range(0, 1)
	_set_Role(rand_num)

func _set_Role(role: bool):
	#pass role to the game somehow
	#true: Farm
	#false: Factory
	get_tree().change_scene(testGameScene.resource_path)
