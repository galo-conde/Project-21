extends Node2D

func _on_HurtBox_area_entered(area):
	queue_free()
