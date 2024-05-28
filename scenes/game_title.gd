extends Node

signal title_screen_clicked

# Called when the node enters the scene tree for the first time.
func _ready():
	var bg_index = randi_range(1, 12)
	var bg_name = "res://assets/backgrounds/back%02d.jpg" % bg_index
	var img = Image.load_from_file(bg_name)
	$Background.texture = ImageTexture.create_from_image(img)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("fire"):
		title_screen_clicked.emit()
