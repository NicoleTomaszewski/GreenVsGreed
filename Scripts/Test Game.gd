extends Node2D

func _on_A1_button_up():
	
	var box1 = StyleBoxFlat.new()
	box1.bg_color = Color(0.69, 0.69, 0.69, 1)
	$"HBoxContainer/Grid/A 1-5/A1".set("custom_styles/normal", box1)
	
	var box2 = StyleBoxFlat.new()
	box2.bg_color = Color(0.59, 0.59, 0.59, 1)
	$"HBoxContainer/Grid/A 1-5/A1".set("custom_styles/hover", box2)
	
	var box3 = StyleBoxFlat.new()
	box3.bg_color = Color(0.49, 0.49, 0.49, 1)
	$"HBoxContainer/Grid/A 1-5/A1".set("custom_styles/pressed", box3)
	



#func _on_A2_button_up():
#
#
#func _on_A3_button_up():
#
#
#func _on_A4_button_up():
#
#
#func _on_A5_button_up():
#
#
#func _on_B1_button_up():
#
#
#func _on_B2_button_up():
#
#
#func _on_B3_button_up():
#
#
#func _on_B4_button_up():
#
#
#func _on_B5_button_up():
#
#
#func _on_C1_button_up():
#
#
#func _on_C2_button_up():
#
#
#func _on_C3_button_up():
#
#
#func _on_C4_button_up():
#
#
#func _on_C5_button_up():
#
#
#func _on_D1_button_up():
#
#
#func _on_D2_button_up():
#
#
#func _on_D3_button_up():
#
#
#func _on_D4_button_up():
#
#
#func _on_D5_button_up():
#
#
#func _on_E1_button_up():
#
#
#func _on_E2_button_up():
#
#
#func _on_E3_button_up():
#
#
#func _on_E4_button_up():
#
#
#func _on_E5_button_up():
