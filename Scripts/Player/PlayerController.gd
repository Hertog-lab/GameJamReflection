extends Node3D

@export var state = Node

# Calls the ready function of the current state
func _ready():
	state.StateReady()

# Calleds the process function of the current state every frame
func _process(_delta):
	state.StateProcess()
