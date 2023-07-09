extends TextureButton

const DRAGPREVIEW = preload("res://screen/drag_preview.tscn")

var lable: String
var droped_on_target: bool = false

@export var item_name : String
@export var blank : bool

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group('DRAGGABLE')

func _get_drag_data(at_position):
	var slot = get_parent().get_name();
	var data = {}
	
	data['origin_node'] = self 
	data['origin_slot'] = slot
	data['origin_texture_normal'] = texture_normal
	
	
	var dragPrieview = DRAGPREVIEW.instantiate()
	dragPrieview.texture = texture_normal
	Global.current_item = self.item_name
	#dragPrieview.item_name = self.item_name
	add_child(dragPrieview)
	
	return data


func _can_drop_data(at_position, data):
	var target_slot = get_parent().get_name();
	data['target_texture_normal'] = texture_normal
	
	return true


func _drop_data(at_position, data):
	data['origin_node'].texture_normal = data['target_texture_normal']
	
	texture_normal = data['origin_texture_normal'] 
