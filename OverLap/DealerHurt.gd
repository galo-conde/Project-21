extends Node

signal dealer_hurt

func _ready():
	pass # Replace with function body.

func was_hurt():
	emit_signal("dealer_hurt")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
