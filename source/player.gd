extends CharacterBody2D
const vel = 100;

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("move_left", "move_right", "move_forward", "move_back")
	velocity = direction * vel
	move_and_slide()
	
	get_node("OneCharacter").play_walk_animation()
