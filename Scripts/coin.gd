extends Area2D

class_name coin

func _ready():
	pass

func _process(_delta):
	pass


func _on_body_entered(_body:Node2D):
	print("+1 coin")
	queue_free()
