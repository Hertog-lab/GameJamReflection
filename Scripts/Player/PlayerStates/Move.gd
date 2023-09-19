extends Node
var player = ^"../.."

func StateReady():
	print("Current state = Move")

func StateProcess():
	var input_direction = Input.get_vector("Left", "Right", "Forward", "Backward")
	if input_direction == Vector2(0,0):
		player.state =  ^"../Idle"
