extends Node2D

export var roleMenuScene : PackedScene

func _on_Submit_button_up():
	
	$"MarginContainer/VBoxContainer/error message".size_flags_vertical -= 2
	var username = $"MarginContainer/VBoxContainer/MarginContainer/VBoxContainer/username input".text
	var code = $"MarginContainer/VBoxContainer/MarginContainer2/VBoxContainer/game code input".text
	
	if (username.length() > 0 && code.length() > 0):
		
		var error = _attempt_db_connection(username, code)
		if (error.length() == 0):
			get_tree().change_scene(roleMenuScene.resource_path)
		else:
			$"MarginContainer/VBoxContainer/error message".size_flags_vertical += 2
			$"MarginContainer/VBoxContainer/error message".text = error
		
	else:
		$"MarginContainer/VBoxContainer/error message".size_flags_vertical += 2
		$"MarginContainer/VBoxContainer/error message".text = "Please create your username and game code."

func _attempt_db_connection(username: String, code: String):
	
	#if code exists in db
		#error, choose a different game code
	#else: add username and code to db, start game
		
	#returns "" when there are no errors
	#returns an error message otherwise
		
	return ""
