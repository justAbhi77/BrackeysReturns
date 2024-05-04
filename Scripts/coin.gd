extends Area2D

class_name coin

@onready var game_manager:gamemanager = %GameManager

@onready var Animation_Player = $AnimationPlayer

func _on_body_entered(_body:Node2D):
	game_manager.add_point()
	Animation_Player.play("pickup")

