extends Node
@onready var player = get_node(^"../..")
@onready var idleChar = get_node(^"../../CollisionShape3D/idle")
@onready var walkChar = get_node(^"../../CollisionShape3D/walk")
@export var speed = 10

func StateReady():
	print("Current state = Move")
	idleChar.visible = false
	walkChar.visible = true

func StateProcess():
	var input_direction = Input.get_vector("Left", "Right", "Forward", "Backward")
	player.velocity = Vector3(input_direction.x, 0, input_direction.y) * speed
	if input_direction == Vector2(0,0):
		player.SwapState(get_node(^"../Idle"))
