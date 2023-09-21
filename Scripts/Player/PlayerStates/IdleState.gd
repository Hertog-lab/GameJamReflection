extends Node
@onready var player = get_node(^"../..")
@onready var idleChar = get_node(^"../../CollisionShape3D/idle")
@onready var walkChar = get_node(^"../../CollisionShape3D/walk")

func StateReady():
	print("Current state = Idle")
	idleChar.visible = true
	walkChar.visible = false

func StateProcess():
	if Input.is_action_pressed("Forward") or Input.is_action_pressed("Left") or Input.is_action_pressed("Right") or Input.is_action_pressed("Backward"):
		player.SwapState(get_node(^"../Move"))
