extends Node2D

const POP_CAT = preload("res://screen/pop_cat.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	$GameOver.hide()

func _on_destroy_item_explore():
	$Camera.speed = 180
	$Actor.speed = 180
	var pop_cat = POP_CAT.instantiate() 
	pop_cat.global_position = $Hourse.global_position
	add_child(pop_cat)


func _on_actor_dead_signal():
	$Camera.speed = 0
	$GameOver.show()
