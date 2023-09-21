extends CharacterBody3D

@export var state = Node
@onready var camera = get_node(^"../Camera3D")
var rayOrigin = Vector3()
var rayEnd = Vector3()
var isReflecting = false

# Calls the ready function of the current state
func _ready():
	print("Current state Idle")

# Calleds the process function of the current state every frame
func _process(_delta):
	state.StateProcess()

func SwapState(swappedState):
	state = swappedState
	swappedState.StateReady()


func _physics_process(delta):
	# get current physics state 
	var space_state = get_world_3d().direct_space_state
	var mouse_position = get_viewport().get_mouse_position()
	rayOrigin = camera.project_ray_origin(mouse_position)
	rayEnd = rayOrigin + camera.project_ray_normal(mouse_position) * 2000
	var query = PhysicsRayQueryParameters3D.create(rayOrigin, rayEnd)
	var intersection = space_state.intersect_ray(query)

	if not intersection.is_empty():
		var pos = intersection.position
		look_at(Vector3(pos.x, self.position.y, pos.z), Vector3(0,1,0))
		
	move_and_slide()

