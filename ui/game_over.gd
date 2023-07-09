extends CanvasLayer


func _ready():
	hide()





func _on_replay_btn_pressed():
	get_tree().reload_current_scene()


func _on_menu_btn_pressed():
	get_tree().change_scene_to_file("res://ui/main_menu.tscn")
