extends Node2D

var camera

func _ready():
	camera = get_tree().get_root().get_node("/root/Node2D/GCC2D")
	print(camera)

func _input(event):
	if event is InputEventMouseMotion:
		var screenPosition = event.position
		var globalPosition = camera.camera2global(screenPosition)
		transform.origin.x = globalPosition.x 
		transform.origin.y = globalPosition.y
