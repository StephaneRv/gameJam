extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/PlayButton.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_pressed():
	get_tree().change_scene()


func _on_options_pressed():
	var options = load("")
	get_tree().current_scene.add_child(options)


func _on_quit_pressed():
	get_tree().quit()
