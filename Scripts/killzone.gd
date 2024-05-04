extends Area2D

class_name killzone

@onready var timer = $Timer

func _on_body_entered(_body:Node2D):
	_body.get_node("CollisionShape2D").queue_free()
	Engine.time_scale = 0.5
	timer.start()

func _on_timer_timeout():
	print("Restarting Level")
	Engine.time_scale = 1
	get_tree().reload_current_scene()
