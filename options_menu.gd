extends Control

func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"): # "ui_cancel" is Esc key by default
		hide() # hide the OptionsMenu
		get_parent().get_node("VBoxContainer").show() # show the main menu (your VBox with buttons)
