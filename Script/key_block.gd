extends Node2D



func _on_area_2d_body_entered(body: Node2D) -> void:
	print("entered")
	if AutoLoadedScript.key == true:
		AutoLoadedScript.key = false
		queue_free()
