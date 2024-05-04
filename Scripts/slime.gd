extends Node2D

const SPEED = 60

@onready var RayCastRight = $RayCastRight
@onready var RayCastLeft = $RayCastLeft

@onready var AnimatedSprite = $AnimatedSprite2D

var direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):

	if RayCastRight.is_colliding():
		direction = -1
		AnimatedSprite.flip_h = true

	if RayCastLeft.is_colliding():
		direction = 1
		AnimatedSprite.flip_h = false

	position.x += SPEED * _delta * direction
