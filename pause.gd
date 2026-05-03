extends Control

var notPaused = true


func _process(delta):
	if Input.is_action_just_pressed("pause"):
		if notPaused:
			get_tree().paused = true
			notPaused = false
			visible = true
			
		else:
			get_tree().paused = false
			notPaused = true
			visible = false
			

	
func _on_Button_pressed():
	if notPaused == false:
		get_tree().paused = false
		notPaused = true
		visible = false


func _on_TitleScreen_pressed():
	get_tree().quit()
	
