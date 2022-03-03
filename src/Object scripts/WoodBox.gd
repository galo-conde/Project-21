extends Node2D

const WoodBoxEffect = preload("res://Effects/WoodBoxEffect.tscn")

func create_WoodBoxEffect():
	var woodBoxEffect = WoodBoxEffect.instance() #instance the scene
	get_parent().add_child(woodBoxEffect) 
	woodBoxEffect.global_position = global_position #set its position

func _on_HurtBox_area_entered(area):
	create_WoodBoxEffect()
	queue_free()
