extends Node2D

const ButtonEffect = preload("res://Effects/StayButtonEffect.tscn")

onready var StayButtonSprite = $Sprite

func create_butttonEffect():
	var stayButtonEffect = ButtonEffect.instance()
	get_parent().add_child(stayButtonEffect)
	stayButtonEffect.global_position = global_position

func _on_HurtBox_area_entered(area):
	StayButtonSprite.visible = false
	create_butttonEffect()
	yield(get_tree().create_timer(1.0), "timeout") #the delay
	StayButtonSprite.visible = true
