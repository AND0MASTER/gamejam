extends Node2D
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_clo_right: RayCast2D = $RayCastCloRight
@onready var ray_cast_clo_left: RayCast2D = $RayCastCloLeft
@onready var ray_cast_clo_right_2: RayCast2D = $RayCastCloRight2
@onready var ray_cast_clo_left_2: RayCast2D = $RayCastCloLeft2


func _process(delta: float) -> void:
	if not ray_cast_right.is_colliding() && not ray_cast_left.is_colliding():
		position.y += 2

func _on_area_right_body_entered(body: Node2D) -> void:
	if AutoLoadedScript.pushing && not ray_cast_clo_left.is_colliding() && not ray_cast_clo_left_2.is_colliding():
		position.x += -5


func _on_area_2_left_body_entered(body: Node2D) -> void:
	if AutoLoadedScript.pushing == true  && not ray_cast_clo_right.is_colliding() && not ray_cast_clo_right_2.is_colliding():
		position.x += 5
	
