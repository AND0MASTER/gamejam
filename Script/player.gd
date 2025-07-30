extends CharacterBody2D


const SPEED = 200.0
const JUMP_VELOCITY = -350
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var ray_cast_small: RayCast2D = $RayCastSmall
@onready var ray_cast_wall: RayCast2D = $RayCastWall

func _physics_process(delta: float) -> void:
	#SIZE
	scale.x = AutoLoadedScript.SIZE
	scale.y = AutoLoadedScript.SIZE
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta 
	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY * AutoLoadedScript.SIZE
	#GROWING
	if Input.is_action_just_pressed("grow") and is_on_floor():
		if !ray_cast_small.is_colliding():
			AutoLoadedScript.SIZE = 1
	#RESET
	if Input.is_action_just_pressed("reset") and is_on_floor():
		get_tree().reload_current_scene()
		AutoLoadedScript.SIZE = 1
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	
	if direction > 0:
		animated_sprite_2d.flip_h = false
		ray_cast_wall.scale.x =1
	elif direction < 0:
		animated_sprite_2d.flip_h = true
		ray_cast_wall.scale.x = -1
		
	if direction == 0:
		animated_sprite_2d.play("Idle")
	else:
		animated_sprite_2d.play("Walk")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	#Climbing
	if ray_cast_wall.is_colliding() && AutoLoadedScript.climbing == true:
		velocity.y = -50
	move_and_slide()
