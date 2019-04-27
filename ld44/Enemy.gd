extends KinematicBody2D

export var speed = 70
var target = null

func _physics_process(delta):
	if target:
		move_and_slide((target.position - position).normalized() * speed)
		for i in get_slide_count():
			var c = get_slide_collision(i)
			if c.collider == target:
				target.add_coins(-1)
				position -= (target.position - position).normalized() * 40

func _on_Sight_body_entered(body):
	if body.has_method("add_coins"):
		target = body

func _on_Sight_body_exited(body):
	if body == target:
		target = null
