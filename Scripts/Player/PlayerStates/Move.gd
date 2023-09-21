extends Node
@onready var player = get_node(^"../..")
@export var speed = 10

func StateReady():
	print("Current state = Move")

func StateProcess():
	var input_direction = Input.get_vector("Left", "Right", "Forward", "Backward")
	player.velocity = Vector3(input_direction.x, 0, input_direction.y) * speed
	if input_direction == Vector2(0,0):
		player.SwapState(get_node(^"../Idle"))
