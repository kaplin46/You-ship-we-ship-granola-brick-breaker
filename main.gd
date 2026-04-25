extends Node2D

func _process(_delta): 
	if is_inside_tree():
		var bricks = get_tree(). get_node_count_in_group("bricks are for kids")
		if bricks == 0:
			get_tree(). reload_current_scene() 
	
		if $CharacterBody2D.position.y >= 568.0:
			get_tree(). reload_current_scene() 
