extends Node2D

var money

onready var coin_scene = load("res://Objects/Coin.tscn")
onready var hitButton = get_node("YSort/Buttons/HitButton")
onready var coin = get_node("Coin")

func _ready():
	hitButton.connect("winner", $HUD/MoneyUI/MoneyLabel, "on_win")
	hitButton.connect("loser", $HUD/MoneyUI/MoneyLabel, "on_loss")
	hitButton.connect("tied", $HUD/MoneyUI/MoneyLabel, "on_tie")
	pass


func _on_Enemy_death(pos):
	var acoin = coin_scene.instance()
	acoin.global_position = pos
	add_child(acoin)
	acoin.connect("picked_up_coin", $HUD/MoneyUI/MoneyLabel, "_on_coin_pickup")
