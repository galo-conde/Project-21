extends Area2D

signal picked_up_coin


func _on_Coin_body_entered(body):
	if body.name == "Player":
		#body.pickup_coin()
		emit_signal("picked_up_coin")
		get_tree().queue_delete(self)

