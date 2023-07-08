extends Area2D

var mouse_inside_area = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("LeftMouse") :
		if mouse_inside_area:
			await print(Global.current_item)
			await  print(self.get_path())
		Global.current_item = '0'
	
	if Input.is_action_just_released("RightMouse") && mouse_inside_area:
		print('break')
	
	if Input.is_action_just_released("LeftMouse") && mouse_inside_area:
		print('pick')

func _on_mouse_entered():
	mouse_inside_area = true

func _on_mouse_exited():
	mouse_inside_area = false
