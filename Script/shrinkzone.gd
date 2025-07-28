extends Area2D






func _on_body_entered(body: Node2D) -> void:
	print(AutoLoadedScript.SIZE)
	AutoLoadedScript.SIZE -= 0.1
	print(AutoLoadedScript.SIZE)
