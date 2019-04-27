extends KinematicBody2D

export var speed = 180
export var coins = 5
signal coins_changed(n)

func _physics_process(delta):
	var dir = Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up"))
	move_and_slide(dir.normalized() * speed)

func add_coins(n):
	coins += n
	emit_signal("coins_changed", coins)
	if coins <= 0:
		get_tree().change_scene("res://GameOver.tscn")
