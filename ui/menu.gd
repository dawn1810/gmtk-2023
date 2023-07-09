extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	get_tree().paused = false
	pass

func _unhandled_key_input(event):
	if Input.is_action_just_pressed("pause"):
		show()
		get_tree().paused = true

func _on_setting_button_pressed():
	AudioSettingUI.show()

func _on_continue_button_pressed():
	get_tree().paused = false
	$MainMenu.release_focus()
	hide()

func _on_quit_button_pressed():
	get_tree().reload_current_scene()
