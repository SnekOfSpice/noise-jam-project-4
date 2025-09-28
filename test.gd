extends ColorRect

func _process(delta: float) -> void:
	print(get_material().get_shader_parameter("pixel_size"))
