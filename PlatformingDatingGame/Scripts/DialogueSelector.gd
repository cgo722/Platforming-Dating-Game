extends Button
class_name LvlSelc

@export var dialogueOption : int
<<<<<<< HEAD
 
=======
@export var levelSelect : PackedScene

>>>>>>> 42d99b120e31ceafd51716e946eaca16570eb0bb
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_down():
	var loadLevel = levelSelect.instantiate()
	get_node(".").add_child(loadLevel)
