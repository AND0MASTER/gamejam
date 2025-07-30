extends Control

func _on_level_1_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level_1.tscn")


func _on_return_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")
