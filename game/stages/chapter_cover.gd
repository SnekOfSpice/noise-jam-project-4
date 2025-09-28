extends Control

func _ready() -> void:
	hide()

func run(chapter_name:String):
	show()
	$RichTextLabel.show()
	_set_text(chapter_name)
	
	var t1 = get_tree().create_timer(6)
	t1.timeout.connect($RichTextLabel.hide)
	var t = get_tree().create_timer(8)
	t.timeout.connect(Parser.function_acceded)
	t.timeout.connect(hide)

func _set_text(text:String):
	$RichTextLabel.text = "[shake rate=10.0 level=%s connected=1]%s[/shake]" % [Parser.page_index, text]
