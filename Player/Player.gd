extends KinematicBody2D

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_right"):
		print("You pressed right arrow key")

