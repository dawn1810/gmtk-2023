extends RigidBody2D


@export var SPEED = 10

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var jump = true

#@onready var anim = $AnimationPlayer

func _ready():
	pass

func _integrate_forces(Pysic):
	$AnimationPlayer.play("scroll")
#	apply_central_impulse(Vector2(SPEED, 0))
	self.linear_velocity.x = 100

func dead():
	SPEED = 0
#	$"../Camera".speed = 0
	$AnimationPlayer.play("dead")
#	await get_tree().reload_current_scene()
	#await queue_free()
	print('show dead screen')

func _on_visible_on_screen_enabler_2d_screen_exited():
	dead()


