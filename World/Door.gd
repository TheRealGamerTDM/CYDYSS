extends Area2D

export (String, FILE) var NEXT_LEVEL: String = ""

func _on_Door_body_entered(body):
	get_tree().change_scene(NEXT_LEVEL)
