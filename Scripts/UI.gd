extends Control

onready var globals = get_node("/root/Globals")


func _on_greenhouse_button_up():
	$Stats.text = "Greenhouse\n$%d\nTo help with\npollution." % globals.BuildingsCost[globals.BuildingsFarmer.GREENHOUSE]
	$ConfirmationText.text = "Click on a box\nto confirm\npurchase."


func _on_base_button_up():
	$Stats.text = "Base\n$%d\nIncreases\npollution." % globals.BuildingsCost[globals.BuildingsCompany.BASE]
	$ConfirmationText.text = "Click on a box\nto confirm\npurchase."


func _on_solar_button_up():
	$Stats.text = "Solar\n$%d\nTo help with\npollution." % globals.BuildingsCost[globals.BuildingsFarmer.SOLAR]
	$ConfirmationText.text = "Click on a box\nto confirm\npurchase."


func _on_mine_button_up():
	$Stats.text = "Mine\n$%d\nIncreases\npollution." % globals.BuildingsCost[globals.BuildingsCompany.MINE]
	$ConfirmationText.text = "Click on a box\nto confirm\npurchase."


func _on_EndTurnButton_button_up():
	#GLOBAL VARIABLE HERE
	#if player is currently factory, next is farmer
		#$TurnText.text = " Days"
	$Stats.text = ""
	$ConfirmationText.text = ""
