extends Node3D
@onready var doors = get_node(^"../../../Door3")

func _ready():	
	print(doors)
	pass

func _Activate():
	doors._open_door()
	doors.active = true	
	pass

func _on_area_3d_body_entered(body):
	if body.is_in_group("Projectile"):		
		_Activate()
		body.queue_free()
		pass # Replace with function body.
