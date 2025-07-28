extends Node

var SIZE = 1

func _process(delta: float) -> void:
	if SIZE < 0.5:
		SIZE = 0.5
