extends Node

@export var door : StaticBody3D
@onready var doors = get_node(^"../Door")

func _Activate():
	#door._open_door()
	#doors.active = true
	print(doors)
	pass

func _on_area_3d_body_entered(body):
	if body.is_in_group("Projectile"):
		_Activate()
		pass # Replace with function body.
