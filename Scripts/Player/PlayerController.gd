extends Node3D

@export var state = Node

# Calls the ready function of the current state
func _ready():
	print("Current state Idle")

# Calleds the process function of the current state every frame
func _process(_delta):
	state.StateProcess()

func SwapState(swappedState):
	state = swappedState
	swappedState.StateReady()
