extends StaticBody2D

@export var speed = 400

func _physics_process(delta: float) -> void:
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("left"):
		velocity.x -= speed
	elif Input.is_action_pressed("right"):
		velocity.x += speed
	else:
		velocity.x = 0

	position += velocity * delta
