extends StaticBody3D

@export var doorLimit : float
@export var active : bool

# Called when the node enters the scene tree for the first time.
func _ready():
	active = false
	pass # Replace with function body.

func _open_door():
	active = true
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("OpenDoor"):
		_open_door()
	
	if active == true:
		self.position += Vector3(0, -2 * delta, 0)
	
	if self.position.y < doorLimit:
		self.queue_free()
	
