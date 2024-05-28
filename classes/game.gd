class_name Game

enum GameState {
	MAIN_MENU,
	PLAYING,
	PAUSE,
	GAME_OVER,
}

var current_state: GameState

func _init():
	current_state = GameState.MAIN_MENU
