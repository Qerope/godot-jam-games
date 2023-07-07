extends CharacterBody2D

@export var speed := 120.0
@export var path: Array[Vector2] = []
var idx := 0

func _physics_process(_delta):
	var dir := Input.get_vector("left", "right", "up", "down")
	velocity = dir * speed
	move_and_slide()
