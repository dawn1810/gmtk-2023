extends RigidBody2D


@export var speed = 0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var jump = true

#@onready var anim = $AnimationPlayer

func _ready():
	pass

func _integrate_forces(Physic):
	if speed > 0 :
		$AnimationPlayer.play("scroll")
	#	apply_central_impulse(Vector2(SPEED, 0))
	self.linear_velocity.x = speed

func dead():
	speed = 0
#	$"../Camera".speed = 0
	$AnimationPlayer.play("dead")
#	await get_tree().reload_current_scene()
	#await queue_free()
	print('show dead screen')

func _on_visible_on_screen_enabler_2d_screen_exited():
	queue_free()


