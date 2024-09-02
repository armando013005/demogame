extends CharacterBody2D

var health = 3
var vel = 150.0

@onready var player = get_node("/root/game/Player")

func _ready() -> void:
		%zeroCharacter.play_walk_animation()
		
func _physics_process(delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * vel
	move_and_slide()

func take_damage():
	health -= 1 
	%zeroCharacter.play_hit()
	
	if health == 0:
		queue_free()
	
