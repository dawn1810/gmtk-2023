extends Node

@export var current_item: String
@export var current_pos: int

func _ready():
	current_pos = 0
	current_item = '0'
