extends Node
@onready var player = get_node(^"../..")

func StateReady():
	print("Current state = Reflection")

func StateProcess():
	if Input.is_action_just_released("Shoot"):
		player.isReflecing = true
