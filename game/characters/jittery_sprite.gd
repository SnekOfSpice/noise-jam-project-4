extends Sprite2D


@export var move_timer_lower_bound := 1.0
@export var move_timer_upper_bound := 3.0
@export var rotate_timer_lower_bound := 0.04
@export var rotate_timer_upper_bound := 0.4

@onready var base_position := position

func _ready() -> void:
	randomize_position()
	randomize_rotation()
	
func randomize_position():
	position = base_position + Vector2(
		randf_range(-12, 12),
		randf_range(-12, 12),
	)
	
	var t = get_tree().create_timer(randf_range(move_timer_lower_bound, move_timer_upper_bound))
	t.timeout.connect(randomize_position)
func randomize_rotation():
	rotation_degrees = randf_range(-7, 7)
	
	var t = get_tree().create_timer(randf_range(rotate_timer_lower_bound, rotate_timer_upper_bound))
	t.timeout.connect(randomize_rotation)
