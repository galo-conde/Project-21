extends MarginContainer

onready var selectorOne = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer/HBoxContainer/Selector
onready var selectorTwo = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer2/HBoxContainer/Selector
onready var selectorThree = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer3/HBoxContainer/Selector

var current_selection = 0

func _ready():
	set_current_selection(0)

func _process(delta):
	if Input.is_action_just_pressed("ui_down") and current_selection < 2:
		current_selection += 1
		set_current_selection(current_selection)
	elif Input.is_action_just_pressed("ui_up") and current_selection > 0:
		current_selection -= 1
		set_current_selection(current_selection)
	elif Input.is_action_just_pressed("ui_enter"):
		handle_selection(current_selection)

func handle_selection(_current_selection):
	if _current_selection == 0:
		get_tree().change_scene("res://Main.tscn")
		queue_free()
	elif _current_selection == 1:
		get_tree().change_scene("res://Levels/Level2.tscn")
		queue_free()
	elif _current_selection == 2:
		get_tree().quit()
		

func set_current_selection(_current_selection):
	selectorOne.text = ""
	selectorTwo.text = ""
	selectorThree.text = ""
	if _current_selection == 0:
		selectorOne.text = ">"
	elif _current_selection == 1:
		selectorTwo.text = ">"
	elif _current_selection == 2:
		selectorThree.text = ">"
