extends MarginContainer

onready var selectorOne = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer/HBoxContainer/Selector
onready var selectorTwo = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer2/HBoxContainer/Selector
onready var selectorThree = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer3/HBoxContainer/Selector

onready var level_box = $ColorRect/ColorRect2

var current_selection = 0

var l1_position = Vector2(105, 80)
var l2_position = Vector2(105, 110)

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
	elif Input.is_action_just_pressed("ui_escape"):
			get_tree().change_scene("res://Screens/StartScreen.tscn")
			queue_free()

func handle_selection(_current_selection):
	if _current_selection == 0:
		get_tree().change_scene("res://Main.tscn")
		queue_free()
	elif _current_selection == 1:
		get_tree().change_scene("res://Levels/Level2.tscn")
		queue_free()
	elif _current_selection == 2:
		get_tree().change_scene("res://Levels/Level3.tscn")
		queue_free()

func set_current_selection(_current_selection):
	selectorOne.text = ""
	selectorTwo.text = ""
	selectorThree.text = ""
	if _current_selection == 0:
		selectorOne.text = ">"
		level_box.rect_position = Vector2(105, 80)
		level_box.rect_size = Vector2(104, 17)
		$Casino.visible = true
		$Mythic.visible = false
		$Dungeon.visible = false
	elif _current_selection == 1:
		selectorTwo.text = ">"
		level_box.rect_position = Vector2(105, 99)
		level_box.rect_size = Vector2(98, 17)
		$Casino.visible = false
		$Mythic.visible = true
		$Dungeon.visible = false
	elif _current_selection == 2:
		selectorThree.text = ">"
		level_box.rect_position = Vector2(105, 118)
		level_box.rect_size = Vector2(109, 17)
		$Casino.visible = false
		$Mythic.visible = false
		$Dungeon.visible = true
