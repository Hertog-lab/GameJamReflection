extends Node
@export var Speed :float
@export var timeBetweenShots: float
@export var projectile :PackedScene
@export var RB :RigidBody3D
@export var FirePoint:Transform3D

var timer: float

func _process(delta):		
	timer = timer + delta
	if timer > timeBetweenShots:
		_shoot()
		timer = 0
		pass
	
func _shoot():		
	var p = projectile.instantiate()
	owner.add_child(p)
	p.transform = Transform3D.IDENTITY
	RB = p	
	RB.apply_central_impulse(self.global_transform.basis.z * -Speed)
	pass
	
func _integrate_forces(State):	
	pass	
