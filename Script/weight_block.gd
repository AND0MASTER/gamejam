extends Node2D

@onready var timer: Timer = $Timer



func _on_area_2d_body_entered(body: Node2D) -> void:
	if AutoLoadedScript.SIZE == 1:
		timer.start()


func _on_timer_timeout() -> void:
	queue_free()
