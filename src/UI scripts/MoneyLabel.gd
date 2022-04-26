extends Label

var money = 300

signal broke

func _on_coin_pickup():
	money += 100
	update_money()

func on_win():
	money += 300
	update_money()
	
func on_loss():
	money -= 300
	if (money == 0 || money < 0):
		get_tree().change_scene("res://UI/GameOver.tscn")
	update_money()
	
func on_tie():
	money += 0
	update_money()	
	
func update_money():
	text = "$%s" % money
