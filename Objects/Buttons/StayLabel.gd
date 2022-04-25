extends Label

func toggle_visibility() :#-> void:
	#visible = not visible
	$Label.text = ""
	$Label2.text = ""

func _on_Timer_timeout():
	toggle_visibility()
	#pass # Replace with function body.
