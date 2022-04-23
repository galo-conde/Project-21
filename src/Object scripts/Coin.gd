extends Area2D

#export(PackedScene) onready var coin_scene = get_node("res://Coin.tscn")
onready var coin = $Coin
onready var enemy = $YSort/Enemy
var coin_scene = load("res://Objects/Coin.tscn")

signal picked_up_coin

func _ready():
	pass

func _on_Coin_body_entered(body):
	if body.name == "Player":
		emit_signal("picked_up_coin")
		get_tree().queue_delete(self)
		


