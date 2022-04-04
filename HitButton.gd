extends TextureButton


#get node
export (NodePath) var button_path
onready var button = get_node(button_path)

# Called when the node enters the scene tree for the first time.
func _ready():
	#create connection
	#button.connect("toggled", self, "on_toggled")
	button.connect("pressed", self, "on_pressed")
	
	#set button name
	#button.set_text("Galo's Button")
	
	#set toggle move
	#button.set_toggle_mode(true)
	#pass # Replace with function body.

func on_toggled(pressed):
	if(pressed):
		print("button is pressed")
	else:
		print("goodbye")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func on_pressed():
	print("version on_pressed")
