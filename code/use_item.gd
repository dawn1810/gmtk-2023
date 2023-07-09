extends Area2D

var mouse_inside_area = false 
const wall = preload("res://screen/wood.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("LeftMouse") :
		if mouse_inside_area:
#			await print(Global.current_item)
#			await print(self.get_path())

			print(Global.current_item)
			if Global.current_item == 'wood':
				var help = wall.instantiate()
				help.global_position = Vector2(self.global_position.x, self.global_position.y - 30) 
				get_parent().add_child(help)
#				for i in range(5):
#				var item = get_parent().get_node('FrontLayer/Inventory/Control/HBoxContainer/CenterContainer' + str(i+1) + '/Item')
#				if (item.blank):
#					item.texture_normal = load(read_json_file('res://code/item.json')[item_name])
#					item.item_name = Global.current_item
#					item.blank = false
#					break
				
				
		Global.current_item = '0'

func _on_mouse_entered():
	mouse_inside_area = true

func _on_mouse_exited():
	mouse_inside_area = false
