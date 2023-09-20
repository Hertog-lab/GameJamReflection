extends Node
@onready var player = get_node(^"../..")

func StateReady():
	print("Current state = Idle")

func StateProcess():
	if Input.is_action_pressed("Forward") or Input.is_action_pressed("Left") or Input.is_action_pressed("Right") or Input.is_action_pressed("Backward"):
		player.SwapState(get_node(^"../Move"))
