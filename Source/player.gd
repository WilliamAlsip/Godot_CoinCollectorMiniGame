extends CharacterBody2D

var move_speed : float = 200

func _physics_process(delta: float) -> void:
	
	velocity.x = 0
	velocity.y = 0
	
	# VELOCITY BASED ON KEY INPUTS, LEFT RIGHT UP DOWN///CHANGE THIS LATER FOR WASD
	if Input.is_key_pressed(KEY_A):
		velocity.x -= 1
		
	if Input.is_key_pressed(KEY_D):
		velocity.x += 1
		
	if Input.is_key_pressed(KEY_W):
		velocity.y -= 1
		
	if Input.is_key_pressed(KEY_S):
		velocity.y += 1
		
		
	velocity *= move_speed
	
	move_and_slide()
