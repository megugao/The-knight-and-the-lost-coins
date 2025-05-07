extends CanvasLayer

@onready var resume_button = $Panel/VBoxContainer/Resume
@onready var restart_button = $Panel/VBoxContainer/Restart
@onready var main_menu_button = $Panel/VBoxContainer/MainMenu

func _ready():
	hide()  # Start hidden
	resume_button.pressed.connect(_on_resume_pressed)
	restart_button.pressed.connect(_on_restart_pressed)
	main_menu_button.pressed.connect(_on_main_menu_pressed)

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):  # Default Esc key
		if is_visible():
			_unpause()
		else:
			_pause()

func _pause():
	get_tree().paused = true
	show()

func _unpause():
	get_tree().paused = false
	hide()

func _on_resume_pressed():
	_unpause()

func _on_restart_pressed():
	get_tree().reload_current_scene()

func _on_main_menu_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://main menu.tscn")
	
