extends CanvasLayer

export (String, FILE) var RESPAWN: String = ""


	

func _on_Restart_pressed():
	get_tree().change_scene("res://World.tscn")
	PlayerStats.max_health = 5
	PlayerStats.health = PlayerStats.max_health

func _on_Quit_pressed():
	get_tree().quit()



