extends Node2D

@onready var timer: Timer = $Timer
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _on_ready() -> void:
	animated_sprite_2d.play("Default")

func _on_area_2d_body_entered(body: Node2D) -> void:
		animated_sprite_2d.play("cracked")
		timer.start()


func _on_timer_timeout() -> void:
	queue_free()
