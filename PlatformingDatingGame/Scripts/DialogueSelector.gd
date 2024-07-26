extends Button
class_name LvlSelc

@export var dialogueOption : int
@export var levelSelect : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_down():
	var loadLevel = levelSelect.instantiate()
	get_node(".").add_child(loadLevel)
