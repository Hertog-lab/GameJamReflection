extends Node

func _Activate():
	
	pass

func _on_area_3d_body_entered(body):
	if body.is_in_group("Projectile"):
		body.queue_free()
		_Activate()
		pass # Replace with function body.
