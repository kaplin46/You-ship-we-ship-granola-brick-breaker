extends CharacterBody2D

@export var speed = 700

func _ready() -> void:
	velocity = Vector2(230,speed)

func _process(delta): 
	var collision = move_and_collide(velocity*delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		if collision.get_collider().is_in_group("bricks are for kids"):
			collision.get_collider().queue_free()
