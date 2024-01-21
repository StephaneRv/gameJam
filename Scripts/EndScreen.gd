extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $AudioStreamPlayer.playing == false:
		$AudioStreamPlayer.play()
	pass


func _on_quit_pressed():
	get_tree().quit()


func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://game.tscn")
	pass # Replace with function body.
