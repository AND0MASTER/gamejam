extends Area2D


func _on_body_entered(body: Node2D) -> void:
		if AutoLoadedScript.climbing == true:
			body.is_on_ladder = true
			
	
