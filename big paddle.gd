extends CharacterBody2D

@export var movementspeed = 1000

func _process(delta):
	
	if Input.is_action_pressed("ui_left"):
		position.x= position.x - (movementspeed * delta)
		
	if Input.is_action_pressed("ui_right"):
		position.x= position.x + (movementspeed * delta)
		
	position.x = clamp(position.x,141,1012)
