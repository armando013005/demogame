extends Node2D

func play_walk_animation():
	$AnimationPlayer.play("z_walk")
	
func play_hit():
	$AnimationPlayer.play("z_hit")
