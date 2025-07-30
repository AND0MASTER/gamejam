extends Node

var SIZE = 1
var climbing = false
func _process(delta: float) -> void:
	if SIZE < 0.5:
		SIZE = 0.5
	if SIZE == 0.5:
		climbing = true
	else: 
		climbing = false
