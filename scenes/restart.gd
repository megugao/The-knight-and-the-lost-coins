extends Node

# This function is called every time there is an input event
func _input(event):
	if event is InputEventKey and event.pressed and event.keycode == Key.KEY_R:
		restart_game()

# Function to restart the game by reloading the current scene
func restart_game():
	var current_scene = get_tree().current_scene
	get_tree().reload_current_scene()
