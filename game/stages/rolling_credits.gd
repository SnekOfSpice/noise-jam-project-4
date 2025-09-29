extends Control


func _ready() -> void:
	hide()



func start():
	show()
	
	var label : RichTextLabel = find_child("Label")
	
	for text in [
		"Angelarium",
		"Created by Stella and Snek",
		"Created for NOISE JAM"]:
		label.text = "[shake rate=10.0 level=5 connected=1]%s[/shake]" % text
		await get_tree().create_timer(2).timeout
	
	await get_tree().create_timer(1).timeout
	label.hide()
	await get_tree().create_timer(3).timeout
	get_tree().quit()
