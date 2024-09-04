extends CharacterBody2D

var speed : float 
@export var walkSpeed : float = 300.0
@export var runSpeed : float = 500.0
@export var jumpVel : float = -400.0
@onready var animated_sprite_2d: AnimatedSprite2D = $CollisionShape2D/AnimatedSprite2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = jumpVel
	
	if Input.is_action_just_released("Jump") and velocity.y < 0:
		velocity.y = -10
	if Input.is_action_pressed("Sprint"):
		speed = runSpeed

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("Move L", "Move R")
	if direction:
		velocity.x = direction * speed
		speed = walkSpeed
		animated_sprite_2d.play("Run")
		if velocity.x < 0:
			animated_sprite_2d.flip_h = true
		else:
			animated_sprite_2d.flip_h = false
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		animated_sprite_2d.play("Idle")

	move_and_slide()
