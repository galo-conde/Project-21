extends MarginContainer

const Menu = preload("res://GUI/StartScreen.gd")

var current_selection = 0
var stats = PlayerStats

onready var selectorOne = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer/HBoxContainer/Selector
onready var selectorTwo = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer2/HBoxContainer/Selector
#onready var selectorThree = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer3/HBoxContainer/Selector

func _ready():
	set_current_selection(0)

func _process(delta):
	if Input.is_action_just_pressed("ui_down") and current_selection < 1:
		current_selection += 1
		set_current_selection(current_selection)
	elif Input.is_action_just_pressed("ui_up") and current_selection > 0:
		current_selection -= 1
		set_current_selection(current_selection)
	elif Input.is_action_just_pressed("ui_accept"):
		handle_selection(current_selection)

func handle_selection(_current_selection):
	if _current_selection == 0:
		stats.health = 4 #makes health equal to 4 to fix bug
		print(stats.health) #debug amount of health
		#get_parent().add_child(Menu.instance()) #doesn't work
		get_tree().change_scene("res://Main.tscn")
		queue_free()
	elif _current_selection == 1:
		get_tree().quit()
		

func set_current_selection(_current_selection):
	selectorOne.text = ""
	selectorTwo.text = ""
	#selectorThree.text = ""
	if _current_selection == 0:
		selectorOne.text = ">"
	elif _current_selection == 1:
		selectorTwo.text = ">"


