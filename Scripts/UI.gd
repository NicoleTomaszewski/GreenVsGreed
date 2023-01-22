extends Control

onready var globals = get_node("/root/Globals")


func _on_greenhouse_button_up():
	$Stats.text = "Greenhouse\n$%d\nTo help with\npollution." % globals.BuildingsCost[globals.BuildingsFarmer.GREENHOUSE]
	$ConfirmationText.text = "Click on a box\nto confirm\npurchase."
	globals.next_placement = globals.BuildingsFarmer.GREENHOUSE


func _on_base_button_up():
	$Stats.text = "Base\n$%d\nIncreases\npollution." % globals.BuildingsCost[globals.BuildingsCompany.BASE]
	$ConfirmationText.text = "Click on a box\nto confirm\npurchase."
	globals.next_placement = globals.BuildingsCompany.BASE


func _on_solar_button_up():
	$Stats.text = "Solar\n$%d\nTo help with\npollution." % globals.BuildingsCost[globals.BuildingsFarmer.SOLAR]
	$ConfirmationText.text = "Click on a box\nto confirm\npurchase."
	globals.next_placement = globals.BuildingsFarmer.SOLAR


func _on_mine_button_up():
	$Stats.text = "Mine\n$%d\nIncreases\npollution." % globals.BuildingsCost[globals.BuildingsCompany.MINE]
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
