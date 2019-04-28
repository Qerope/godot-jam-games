extends Control

func _ready():
	$Retry.connect("pressed", self, "_retry")

func _retry():
	get_tree().change_scene("res://Main.tscn")
