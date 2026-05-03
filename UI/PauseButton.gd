extends Control

var notPaused = true

func _on_Button_pressed():
	Input.action_press("pause")
	if Input.is_action_just_pressed("pause"):
		if notPaused:
			visible = false
		else:
			visible = true
