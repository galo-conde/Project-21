extends Node2D

var money
onready var coin = get_node("Coin")

func _ready():
	coin.connect("picked_up_coin", $HUD/MoneyUI/MoneyLabel, "_on_coin_pickup")

