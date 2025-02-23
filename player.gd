extends CharacterBody2D

func _physics_process(delta: float) -> void:
	
	velocity.x = 0
	velocity.y = 0
	
	# VELOCITY BASED ON KEY INPUTS, LEFT RIGHT UP DOWN///CHANGE THIS LATER FOR WASD
	if Input.is_key_pressed(KEY_LEFT):
		velocity.x -= 1
		
	if Input.is_key_pressed(KEY_RIGHT):
		velocity.x += 1
		
	if Input.is_key_pressed(KEY_UP):
		velocity.y -= 1
		
	if Input.is_key_pressed(KEY_DOWN):
		velocity.y += 1
		
		
	velocity *= 50
	
	move_and_slide()
