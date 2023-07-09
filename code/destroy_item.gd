extends Area2D

@export var durability : int = 0

var mouse_inside_area = false 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	pass

func _process(delta):
	if Input.is_action_just_released("RightMouse") && mouse_inside_area:
		durability -= 1
		if (durability <= 0) : 
			get_parent().queue_free()
	
func read_json_file(file_path):
	var json_as_text = FileAccess.get_file_as_string(file_path)
	var json_as_dict = JSON.parse_string(json_as_text)
	return json_as_dict

func _on_mouse_entered():
	mouse_inside_area = true

func _on_mouse_exited():
	mouse_inside_area = false
