extends Node2D

@export_file("*.tscn") var dirt_path

var inactive_pool = []

# Called when the node enters the scene tree for the first time.
func _ready():
	var dirt_scene = load(dirt_path)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass