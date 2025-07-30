extends Area2D


func _on_body_entered(body: Node2D) -> void:
	AutoLoadedScript.SIZE = 0.5
	queue_free()
