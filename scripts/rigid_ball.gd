extends RigidBody2D

const SPEED = 3000.0
var force = Vector2()

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var y_direction = Input.get_axis("ui_up", "ui_down")
	if y_direction:
		force.y = y_direction * SPEED
	else:
		force.y = move_toward(force.y, 0, SPEED)
	var x_direction = Input.get_axis("ui_left", "ui_right")
	if x_direction:
		force.x = x_direction * SPEED
	else:
		force.x = move_toward(force.x, 0, SPEED)

	apply_force(force)
