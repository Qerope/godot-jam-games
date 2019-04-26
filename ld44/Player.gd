extends KinematicBody2D

export var speed = 180

func _physics_process(delta):
	var dir = Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up"))
	move_and_slide(dir.normalized() * speed)
