extends RigidBody2D

var values = [0, 0.5, 1]
var r = 0
var g = 0
var b = 0

func _ready():
	while r == 0 and g == 0 and b == 0:
		r = values[randi() % values.size()]
		g = values[randi() % values.size()]
		b = values[randi() % values.size()]
	$Sprite.modulate = Color(r, g, b)
	
	
	

func _on_Area2D_area_entered(area):
	pass
