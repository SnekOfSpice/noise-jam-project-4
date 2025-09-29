extends Node2D

@onready var halo_base_position : Vector2 = %Halo.position

func _ready() -> void:
	move_halo()
	rotate_halo()

func move_halo():
	%Halo.position = halo_base_position + Vector2(
		randf_range(-5, 5),
		randf_range(-5, 5),
	)
	
	var t = get_tree().create_timer(randf_range(4, 6))
	t.timeout.connect(move_halo)

func rotate_halo():
	%Halo.rotation_degrees = randf_range(-7, 7)
	
	var t = get_tree().create_timer(randf_range(0.25, 1.1))
	t.timeout.connect(rotate_halo)
