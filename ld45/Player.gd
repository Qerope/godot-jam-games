extends KinematicBody2D

var abilities = {"move": true, "jump": false, "dash": false}
var velocity = Vector2.ZERO
const GRAVITY = 900
const JUMP = -380

func _physics_process(delta):
	velocity.y += GRAVITY * delta
	var dir = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocity.x = dir * 160
	if abilities.jump and is_on_floor() and Input.is_action_just_pressed("ui_up"):
		velocity.y = JUMP
	velocity = move_and_slide(velocity, Vector2.UP, true)

func unlock(name):
	abilities[name] = true
