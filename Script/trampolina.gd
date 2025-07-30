extends Node2D



func _on_area_2d_body_entered(body: Node2D) -> void:
	print(AutoLoadedScript.SIZE)
	body.velocity.y = -250 / AutoLoadedScript.SIZE
	print(AutoLoadedScript.SIZE)
