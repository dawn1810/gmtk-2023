extends RigidBody2D


@export var speed = 0


#@onready var anim = $AnimationPlayer

func _ready():
	pass

func _integrate_forces(Physic):
	self.rotation_degrees = 0.0
	self.linear_velocity.x = speed




