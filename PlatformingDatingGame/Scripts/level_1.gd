extends Node2D

var timer : float
@export_range(0, 3) var charisma : int
@export var player : CharacterBody2D
var startLocation : Vector2
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	startLocation = player.position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timer += delta
	
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if timer < 5:
		charisma = 3
	else: if timer < 10:
		charisma = 2
	else: if timer < 20:
		charisma = 1
	else: if timer > 20:
		charisma = 0
	print(charisma)
	pass # Replace with function body.

func _on_world_boundry_body_entered(body: Node2D) -> void:
	player.position = startLocation
	pass # Replace with function body.
