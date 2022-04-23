extends Timer
# We cache the children should we need to access them again
onready var timer := $Timer
onready var label := $CustomLabel

func _ready() -> void:
	timer.connect("timeout", label, "toggle_visibility")
