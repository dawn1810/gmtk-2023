extends Area2D

var score = 0

func _on_body_entered(body):
	
	score += 1
	get_parent().get_parent().get_node('Background/Label').text = 'Score: %d' %(score)
	body.queue_free()

func _on_area_entered(area):
	score += 1
	get_parent().get_parent().get_node('Background/Label').text = 'Score: %d' %(score)
	area.queue_free()
