extends KinematicBody2D

onready var water = get_node("../Water")
var bucket = 0

func _physics_process(delta):
	var dir = Vector2(Input.get_axis("ui_left", "ui_right"), Input.get_axis("ui_up", "ui_down"))
	move_and_slide(dir * 200)
	if Input.is_action_just_pressed("ui_accept") and bucket > 0:
		water.bail(bucket)
		bucket = 0
