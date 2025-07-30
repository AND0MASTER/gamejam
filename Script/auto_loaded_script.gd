extends Node

var SIZE = 1
var climbing = false
var pushing = true 
func _process(delta: float) -> void:
	if SIZE < 0.5:
		SIZE = 0.5
	#climbing výška
	if SIZE == 0.5:
		climbing = true
	else: 
		climbing = false
	#Pushing výška
	if SIZE == 1:
		pushing = true
	else: 
		pushing = false
