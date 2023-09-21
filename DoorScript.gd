extends StaticBody3D

var active : bool

# Called when the node enters the scene tree for the first time.
func _ready():
	active = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("OpenDoor"):
		active = true
		
	if active == true:
		self.position += Vector3(0, -2 * delta, 0)
		
	pass
	
