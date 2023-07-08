extends CharacterBody2D


const SPEED = 50


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	$AnimationPlayer.play("idle")

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

# cho nó tự di chuyển theo thời gian
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	velocity.x = 10 * SPEED


	move_and_slide()

func dead():
	queue_free()
	print('show dead screen')




func _on_trap_body_entered(body):
	dead()
