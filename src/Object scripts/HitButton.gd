extends Node2D

#set button invisible when playing the animation
const ButtonHitEffect = preload("res://Effects/HitButtonEffect.tscn")

onready var HbuttonSprite = $Sprite

func create_buttonHitEffect():
	var buttonHitEffect = ButtonHitEffect.instance()
	get_parent().add_child(buttonHitEffect)
	buttonHitEffect.global_position = global_position

#set the button invisble when animation is playing
#then when the animation ends, re enable the button appearence with delay
func _on_HurtBox_area_entered(area):
	HbuttonSprite.visible = false
	create_buttonHitEffect()
	yield(get_tree().create_timer(1.0), "timeout")#best piece of code ever
	HbuttonSprite.visible = true
	
