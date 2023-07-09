extends Area2D

@export var item_name : String
@export var durability : int

var mouse_inside_area = false 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	pass

func _process(delta):
	if Input.is_action_just_released("LeftMouse") && mouse_inside_area:
		durability -= 1
		$AnimationPlayer.play("shake")
		if durability <= 0:
			for i in range(5):
				var item = get_parent().get_node('FrontLayer/Inventory/Control/HBoxContainer/CenterContainer' + str(i+1) + '/Item')
				if (item.blank):
					item.texture_normal = load(read_json_file('res://code/item.json')[item_name])
					item.item_name = self.item_name
					item.blank = false
					break
			queue_free()
			AudioManager.play("break")

func read_json_file(file_path):
	var json_as_text = FileAccess.get_file_as_string(file_path)
	var json_as_dict = JSON.parse_string(json_as_text)
	return json_as_dict

func _on_mouse_entered():
	mouse_inside_area = true

func _on_mouse_exited():
	mouse_inside_area = false
