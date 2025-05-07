extends Node

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		print("Esc Pressed!")
		return_to_main_menu()

func return_to_main_menu():
	var main_menu_scene = "res://main menu.tscn"
	get_tree().change_scene_to_file(main_menu_scene)
