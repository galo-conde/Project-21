extends Node2D

const ButtonStayEffect = preload("res://Effects/StayButtonEffect.tscn")

onready var SbuttonSprite = $Sprite

func create_buttonStayEffect():
	var buttonStayEffect = ButtonStayEffect.instance()
	get_parent().add_child(buttonStayEffect)
	buttonStayEffect.global_position = global_position

func _on_HurtBox_area_entered(area):
	SbuttonSprite.visible = false
	create_buttonStayEffect()
	yield(get_tree().create_timer(1.0), "timeout")#best piece of code ever
	SbuttonSprite.visible = true
