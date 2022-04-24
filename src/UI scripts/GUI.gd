extends CanvasLayer



func _ready():
	set_visible(false)

func _input(event):
	
	if event.is_action_pressed("ui_tab"):
		set_visible(!get_tree().paused)
		get_tree().paused = !get_tree().paused
		

func set_visible(is_visible):
	for node in get_children():
		node.visible = is_visible

func _on_Return_pressed():
	get_tree().paused = false
	set_visible(false)
	get_tree().change_scene("res://Screens/StartScreen.tscn")


func _on_FullScreen_pressed():
	get_tree().paused = false
	set_visible(false)
	OS.window_fullscreen = !OS.window_fullscreen


func _on_Exit_pressed():
	get_tree().quit()
	
