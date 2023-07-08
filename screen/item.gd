extends TextureButton

const DRAGPREVIEW = preload("res://screen/drag_preview.tscn")

var lable: String
var droped_on_target: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group('DRAGGABLE')

func get_drag_data(position: Vector2):
	var slot = get_parent().get_name();
	var data = {}
	
	data['origin_node'] = self 
	data['origin_slot'] = slot
	data['origin_texture_normal'] = texture_normal
	data['origin_texture_pressed'] = texture_pressed
	
	var dragPrieview = DRAGPREVIEW.instance()
	dragPrieview.texture = texture_normal
	add_child(dragPrieview)
	
	return data


