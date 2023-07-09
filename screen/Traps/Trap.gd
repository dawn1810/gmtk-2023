extends Area2D


func _on_body_entered(body):
	print('hey!!!')
	if body.name == 'Actor':
		body.queue_free()
