extends KinematicBody2D

export var player = 1
var drift = Vector2.ZERO

func _physics_process(delta):
	var up = "p%d_up" % player
	var down = "p%d_down" % player
	var dir = Input.get_action_strength(down) - Input.get_action_strength(up)
	drift = drift.move_toward(Vector2(0, rand_range(-1, 1)), delta * 2)
	move_and_slide(Vector2(0, dir * 300) + drift * 120)
