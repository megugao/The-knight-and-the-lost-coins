extends Node2D

const Speed = 60

var direction = 1

@onready var recast_left: RayCast2D = $"Recast Left"
@onready var recast_right: RayCast2D = $"Recast Right"
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if recast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if recast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	position.x += direction * Speed * delta
