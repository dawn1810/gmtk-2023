extends Area2D

@export var item_name : String
@export var number : int

var mouse_inside_area = false 

func _process(delta):
	if Input.is_action_just_released("LeftMouse") && mouse_inside_area:
<<<<<<< Updated upstream
		get_parent().get_node('FrontLayer/Inventory/Control/HBoxContainer/CenterContainer/Item').texture_normal = load(read_json_file('res://code/item.json')[item_name])
		queue_free()
	
=======
<<<<<<< HEAD
		get_parent().get_parent().get_node('FrontLayer/Inventory/Control/HBoxContainer/CenterContainer/Item').texture_normal = load(read_json_file('res://code/item.json')[item_name])

=======
		get_parent().get_node('FrontLayer/Inventory/Control/HBoxContainer/CenterContainer/Item').texture_normal = load(read_json_file('res://code/item.json')[item_name])
		queue_free()
	
>>>>>>> 0e3515cd03b15bbc278912ee4527338c97de3cce
>>>>>>> Stashed changes
func read_json_file(file_path):
	var json_as_text = FileAccess.get_file_as_string(file_path)
	var json_as_dict = JSON.parse_string(json_as_text)
	return json_as_dict

func _on_mouse_entered():
	mouse_inside_area = true

func _on_mouse_exited():
	mouse_inside_area = false
