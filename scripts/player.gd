extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

export var speed = 300

func _process(delta):
	var direction = Vector2(0, 0)
	if Input.is_key_pressed(KEY_W):
		direction.y -= 1
	if Input.is_key_pressed(KEY_S):
		direction.y += 1
	if Input.is_key_pressed(KEY_A):
		direction.x -= 1
	if Input.is_key_pressed(KEY_D):
		direction.x += 1
	
	translate(direction * speed * delta)