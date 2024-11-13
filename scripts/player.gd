extends CharacterBody2D
@onready var player_sprite: AnimatedSprite2D = $PlayerSprite

@export var speed = 150.0
@export var moving = false
var target_pos = global_position

func _input(event):
	if event.is_action_pressed("right_click"):
		target_pos = get_global_mouse_position()
		moving = true
	if event.is_action_pressed("escape"):
		get_tree().quit()

func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if moving == true:
		if position.distance_to(target_pos) > 5:
			velocity = position.direction_to(target_pos) * speed
			var direction = (target_pos - global_position).normalized()
			#global_position += direction * speed * delta
			move_and_slide()
			if abs(direction.x) > abs(direction.y):
				player_sprite.play("walk")
				player_sprite.flip_h = (direction.x < 0)
			else:
				if direction.y < 0:
					player_sprite.play("walk_up")
				else:
					player_sprite.play("walk")
		else:
			moving = false;
			global_position = target_pos
			player_sprite.play("idle")
		
