extends Control



func _on_greenhouse_button_up():
	$Stats.text = "Greenhouse\n$500\nTo help with\npollution."
	$ConfirmationText.text = "Click on a box\nto confirm\npurchase."


func _on_base_button_up():
	$Stats.text = "Base\n$1000\nIncreases\npollution."
	$ConfirmationText.text = "Click on a box\nto confirm\npurchase."


func _on_solar_button_up():
	$Stats.text = "Solar\n$2000\nTo help with\npollution."
	$ConfirmationText.text = "Click on a box\nto confirm\npurchase."


func _on_mine_button_up():
	$Stats.text = "Mine\n$800\nIncreases\npollution."
	$ConfirmationText.text = "Click on a box\nto confirm\npurchase."


func _on_EndTurnButton_button_up():
	#GLOBAL VARIABLE HERE
	#if player is currently factory, next is farmer
		#$TurnText.text = " Days"
	$Stats.text = ""
	$ConfirmationText.text = ""
