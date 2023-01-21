extends Node2D

export var testGameScene : PackedScene

func _on_Submit_button_up():
	
	$"MarginContainer/VBoxContainer/error message".size_flags_vertical -= 2
	var username = $"MarginContainer/VBoxContainer/MarginContainer/VBoxContainer/username input".text
	var code = $"MarginContainer/VBoxContainer/MarginContainer2/VBoxContainer/game code input".text
	
	if (username.length() > 0 && code.length() > 0):
		
		var error = _attempt_db_connection(username, code)
		if (error.length() == 0):
			get_tree().change_scene(testGameScene.resource_path)
		else:
			$"MarginContainer/VBoxContainer/error message".size_flags_vertical += 2
			$"MarginContainer/VBoxContainer/error message".text = error
		
	else:
		$"MarginContainer/VBoxContainer/error message".size_flags_vertical += 2
		$"MarginContainer/VBoxContainer/error message".text = "Please input your username and game code."

func _attempt_db_connection(username: String, code: String):
	
	#if code exists in db
		#if player2 exists in db
			#if player2 in db matches the username
				#rejoin game
			#else: error, wrong username given
		#else: add username to db, start game
	#else: error, game code not yet created
		
	#returns "" when there are no errors
	#returns an error message otherwise
		
	return ""
