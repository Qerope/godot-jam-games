extends CharacterBody2D

@export var path: Array[Vector2] = []
@export var speed := 70.0
var idx := 0

func _physics_process(_delta):
	if path.is_empty():
		return
	var target := path[idx]
	velocity = (target - global_position).normalized() * speed
	move_and_slide()
	if global_position.distance_to(target) < 4.0:
		idx = (idx + 1) % path.size()

func can_see(p: Node2D) -> bool:
	var to_p := p.global_position - global_position
	if to_p.length() > 180.0 or abs(to_p.angle_to(velocity)) > deg_to_rad(35):
		return false
	return true
