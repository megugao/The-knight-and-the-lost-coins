extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_pressed() -> void:
	print("Start button pressed!")  # Debug line
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_op_pressed() -> void:
	pass # Replace with function body.


func _on_exit_pressed(): 
	print("Exiting game...")
	get_tree().quit()
	

func _on_button_2_pressed() -> void:
	var options_menu = get_node("OptionsMenu")
	if options_menu:
		options_menu.visible = true
		options_menu.position = Vector2(100, 100) # move it to a clear spot
		options_menu.size = Vector2(300, 200)     # give it a visible size if needed
		print("OptionsMenu made visible!")
	else:
		print("OptionsMenu not found!")
