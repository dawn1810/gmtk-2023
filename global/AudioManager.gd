extends Node2D

var sfx_map = {
	"click": "res://assets/sfx/click.mp3",
	"break": "res://assets/sfx/ドアを閉める(木製).mp3",
	"place": "res://assets/sfx/wooden place.mp3"
}

var loaded_sfx_map = {}

func _ready():
	for i in sfx_map.keys():
		loaded_sfx_map[i] = load(sfx_map[i])

func play_click():
	play("click")

func play(sound_id):
	if (loaded_sfx_map.has(sound_id)):
		$SFXPlayer.stream = loaded_sfx_map[sound_id]
		if $SFXPlayer.playing:
			$SFXPlayer.seek(0)
		else:
			$SFXPlayer.play()
