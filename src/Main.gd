extends Node2D

var money

onready var coin_scene = load("res://Objects/Coin.tscn")
onready var enemy = get_node("YSort/Enemy")
onready var coin = get_node("Coin")

func _ready():
	#coin.connect("picked_up_coin", $HUD/MoneyUI/MoneyLabel, "_on_coin_pickup")
	pass


func _on_Enemy_death(pos):
	var acoin = coin_scene.instance()
	acoin.global_position = pos
	add_child(acoin)
	acoin.connect("picked_up_coin", $HUD/MoneyUI/MoneyLabel, "_on_coin_pickup")
