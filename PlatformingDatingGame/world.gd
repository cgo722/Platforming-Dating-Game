extends Node2D

@onready var dialogue_bubble: DialogueBubble = $CanvasLayer/DialogueBubble
const LEVEL_1 = preload("res://Levels/Level 1.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	dialogue_bubble.start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_dialogue_bubble_dialogue_signal(value: String) -> void:
	if value == "Mean":
		var loadLevel = LEVEL_1.instantiate()
		self.add_child(loadLevel)
	pass # Replace with function body.
