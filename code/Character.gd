extends RigidBody2D


@export var speed = 0


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
	$AnimationPlayer.play("dead")
	print('show dead screen')

func _on_visible_on_screen_enabler_2d_screen_exited():
	queue_free()


