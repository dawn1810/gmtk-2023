extends Node2D

const POP_CAT = preload("res://screen/pop_cat.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_destroy_item_explore():
	$Camera.speed = 100
	$Actor.speed = 100
	var pop_cat = POP_CAT.instantiate() 
	pop_cat.global_position = $Hourse.global_position
	add_child(pop_cat)
	pop_cat.speed = 100
