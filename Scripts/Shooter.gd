extends Node
@export var Speed :float
@export var RB :RigidBody3D
@export var FirePoint:Transform3D

@export var projectile :PackedScene

func _process(delta):		
	_shoot()
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
