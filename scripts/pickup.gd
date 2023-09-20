extends Area2D

func _on_body_entered(body):
	if body.is_in_group("Player"):
		var game_control = get_tree().get_first_node_in_group("GameController")
		game_control.add_score()
		queue_free()
	pass # Replace with function body.
