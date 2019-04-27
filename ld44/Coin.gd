extends Area2D

func _on_Coin_body_entered(body):
	if body.has_method("add_coins"):
		body.add_coins(1)
		queue_free()
