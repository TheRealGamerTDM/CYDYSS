extends Control

var notPaused = true


func _ready():
	get_tree().paused = true
	visible = true
	HealthUi.visible = false

func _on_StartButton_pressed():
	get_tree().paused = false
	visible = false


func _on_QuitButton_pressed():
	get_tree().quit()
