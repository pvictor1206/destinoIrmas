extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var animation := $anim as AnimatedSprite2D

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	
	if Global.counterScene == 8:
		if direction:
			velocity.x = direction * SPEED
			animation.play("morte_run")
			#altera a direção
			animation.scale.x = direction * 5.156
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
			animation.play("morte_state")
		
	else:
		if direction:
			velocity.x = direction * SPEED
			animation.play("run")
			#altera a direção
			animation.scale.x = direction * 5.156
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
			animation.play("idle")

	move_and_slide()
