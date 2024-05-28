extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	update_background()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func update_background():
	var bg_index = randi_range(1, 12)
	var bg_name = "res://assets/backgrounds/back%02d.jpg" % bg_index
	var img = Image.load_from_file(bg_name)
	$Background.texture = ImageTexture.create_from_image(img)
	
