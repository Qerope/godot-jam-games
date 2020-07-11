extends Node2D

var score = [0, 0]

func _input(event):
	if event.is_action_pressed("restart"):
		get_tree().reload_current_scene()

func point_for(player):
	score[player] += 1
	$HUD/Score.text = "%d : %d" % score
