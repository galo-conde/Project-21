extends CanvasLayer


func _on_Restart_pressed() -> void:
	get_tree().change_scene("res://World2D.tscn")
	
	func _on_Quit_pressed() -> void:
		get_tree().quit()
