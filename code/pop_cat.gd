extends CharacterBody2D


@export var SPEED = 10

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var jump = true

#@onready var anim = $AnimationPlayer

func _ready():
	pass

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	if SPEED > 0:
		velocity.x = 10 * SPEED
		move_and_slide()

