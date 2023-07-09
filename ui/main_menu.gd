extends CanvasLayer


func _on_setting_button_pressed():
	AudioManager.play_click()
	AudioSettingUI.show()

func _on_close_txt_gui_input(event:InputEvent):
	if (event is InputEventMouseButton && event.is_released() && event.button_index == 1):
		AudioManager.play_click()
		$CreditMenu.hide()


func _on_credit_button_pressed():
	AudioManager.play_click()
	$CreditMenu.show()
