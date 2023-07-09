extends Area2D

var mouse_inside_area = false 
const wood = preload("res://screen/wood.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("LeftMouse") :
		if mouse_inside_area:
			print(Global.current_item)
			print(Global.current_pos)
			if Global.current_item == 'wood':
				var wood_full = wood.instantiate()
				wood_full.global_position = Vector2(self.global_position.x, self.global_position.y - 30) 
				get_parent().add_child(wood_full)
				var item = get_parent().get_node('FrontLayer/Inventory/Control/HBoxContainer/CenterContainer' + str(Global.current_pos+1) + '/Item')
				item.texture_normal = load(read_json_file('res://code/item.json')['null'])
				item.item_name = 'null'
				item.blank = true
				queue_free()
		Global.current_item = '0'

func _on_mouse_entered():
	mouse_inside_area = true

func _on_mouse_exited():
	mouse_inside_area = false

func read_json_file(file_path):
	var json_as_text = FileAccess.get_file_as_string(file_path)
	var json_as_dict = JSON.parse_string(json_as_text)
	return json_as_dict
