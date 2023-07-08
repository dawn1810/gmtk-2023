extends CanvasLayer



func _on_setting_button_pressed():
	AudioSettingUI.show()

func _on_close_txt_gui_input(event:InputEvent):
	if (event is InputEventMouseButton && event.is_released() && event.button_index == 1):
		$CreditMenu.hide()


func _on_credit_button_pressed():
	$CreditMenu.show()


func _on_play_button_button_down():
	get_tree().change_scene_to_file("res://screen/main.tscn")
