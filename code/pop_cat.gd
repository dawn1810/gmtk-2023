extends RigidBody2D


@export var speed = 100

func _integrate_forces(Physic):
	self.rotation_degrees = 0.0
	self.linear_velocity.x = speed




func _on_visible_on_screen_enabler_2d_screen_exited():
	await get_tree().create_timer(3.0).timeout
	if (get_parent().get_node("Actor")):
		global_position = get_parent().get_node("Actor").global_position - Vector2(200, 500)
