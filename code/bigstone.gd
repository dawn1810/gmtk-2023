extends RigidBody2D

func _on_use_item_7_push_stone():
	apply_central_impulse(Vector2(-20000, 0))
	print('aa')
