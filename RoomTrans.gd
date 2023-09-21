extends Node	
@export var IsInRoom: bool
@export var camera : Node3D
@export var Pos: Node3D
@onready var ButtonScript = get_node(^"../..")


func _process(delta):	
	

	ButtonScript.activa
	if IsInRoom == true:
		camera.position = Pos.position		
		pass	

func _on_area_3d_body_entered(body):	
	if body.is_in_group("Player"):
		IsInRoom = true
		pass 

func _on_area_3d_body_exited(body):
	if body.is_in_group("Player"):
		IsInRoom = false
		pass 
