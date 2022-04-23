extends Label

var money = 300

func _on_coin_pickup():
	money += 100
	text = "$%s" % money
