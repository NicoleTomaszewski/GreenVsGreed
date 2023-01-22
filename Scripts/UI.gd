extends Control

onready var globals = get_node("/root/Globals")

func _on_greenhouse_button_up():
	$Stats.text = "Greenhouse\n$500\nTo help with\npollution."
	$ConfirmationText.text = "Click on a box\nto confirm\npurchase."
	globals.next_placement = globals.BuildingsFarmer.GREENHOUSE


func _on_base_button_up():
	$Stats.text = "Base\n$1000\nIncreases\npollution."
	$ConfirmationText.text = "Click on a box\nto confirm\npurchase."
	globals.next_placement = globals.BuildingsCompany.BASE


func _on_solar_button_up():
	$Stats.text = "Solar\n$2000\nTo help with\npollution."
	$ConfirmationText.text = "Click on a box\nto confirm\npurchase."
	globals.next_placement = globals.BuildingsFarmer.SOLAR


func _on_mine_button_up():
	$Stats.text = "Mine\n$800\nIncreases\npollution."
	$ConfirmationText.text = "Click on a box\nto confirm\npurchase."
	globals.next_placement = globals.BuildingsCompany.MINE


func _on_EndTurnButton_button_up():
	if globals.cur_player == globals.COMPANY:
		globals.day = globals.day + 1
		$TurnText.text = "Day %d" % globals.day
		$"Farm Buildings".visible = true
		$"Company Buildings".visible = false
		$MoneyText.text = "Money: $%d\nIncome: $%d" % [globals.money[globals.FARMER], globals.income[globals.FARMER]]
		globals.cur_player = globals.FARMER
	else:
		$"Farm Buildings".visible = false
		$"Company Buildings".visible = true
		$MoneyText.text = "Money: $%d\nIncome: $%d" % [globals.money[globals.COMPANY], globals.income[globals.COMPANY]]
		globals.cur_player = globals.COMPANY
	$Stats.text = ""
	$ConfirmationText.text = ""
