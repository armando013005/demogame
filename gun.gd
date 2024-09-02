extends Area2D

func _physics_process(delta: float) -> void:
	var enemies_in_range = get_overlapping_bodies()
	
	if enemies_in_range.size() > 0 :
		var taget_enemy = enemies_in_range.front()
		look_at(taget_enemy.global_position)
		
	

func shoot():
	const BULLET = preload("res://bullet.tscn")
	var new_bullet = BULLET.instantiate()
	new_bullet.global_position = %nozzle.global_position
	new_bullet.global_rotation = %nozzle.global_rotation
	%nozzle.add_child(new_bullet)


func _on_timer_timeout() -> void:
	shoot()
	pass # Replace with function body.
