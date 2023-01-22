extends Node2D

export var joinGameMenuScene : PackedScene
export var createGameMenuScene : PackedScene
export var mainScreenScene : PackedScene

func _on_Join_Game_Button_button_up():
	get_tree().change_scene(joinGameMenuScene.resource_path)


func _on_Create_Game_Button_button_up():
	get_tree().change_scene(createGameMenuScene.resource_path)


func _on_Start_Game_Button_button_up():
	get_tree().change_scene(mainScreenScene.resource_path)
