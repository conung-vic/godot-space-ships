extends Node

@export var player_scene: PackedScene

var screen_size: Vector2i
var game: Game

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_window().size
	update_background()
	var game = load("res://classes/game.gd")
	game.current_state = game.GameState.MAIN_MENU

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func update_background():
	var bg_index = randi_range(1, 12)
	var bg_name = "res://assets/backgrounds/back%02d.jpg" % bg_index
	var img = Image.load_from_file(bg_name)
	$Background.texture = ImageTexture.create_from_image(img)

func _on_game_title_title_screen_clicked():
	$GameTitle.queue_free()
	var player = player_scene.instantiate()
	player.position.x = screen_size.x / 2
	player.position.y = screen_size.y * 0.9
	add_child(player)
	
