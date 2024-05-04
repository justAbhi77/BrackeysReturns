extends Area2D

class_name killzone

@onready var timer = $Timer

func _on_body_entered(_body:Node2D):
	timer.start()

func _on_timer_timeout():
	get_tree().reload_current_scene()
