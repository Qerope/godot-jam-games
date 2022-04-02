extends Node2D

export var rise_per_second = 4.0
var level = 0.0

func _process(delta):
	level += rise_per_second * delta
	position.y = 600 - level
	if level > 520:
		get_tree().change_scene("res://GameOver.tscn")
