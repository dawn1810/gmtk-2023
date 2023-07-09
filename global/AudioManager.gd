extends Node2D

func play_click():
	if $SFXPlayer.playing:
		$SFXPlayer.seek(0)
	else:
		$SFXPlayer.play()
