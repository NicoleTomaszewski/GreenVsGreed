extends Node2D

export var joinGameMenuScene : PackedScene
export var createGameMenuScene : PackedScene
export var mainScreenScene : PackedScene

onready var globals = get_node("/root/Globals")

func _on_Join_Game_Button_button_up():
	globals.reset_data()
	globals.goto_scene(joinGameMenuScene.resource_path)


func _on_Create_Game_Button_button_up():
	globals.reset_data()
	globals.goto_scene(createGameMenuScene.resource_path)


func _on_Start_Game_Button_button_up():
	globals.reset_data()
	globals.goto_scene(mainScreenScene.resource_path)
