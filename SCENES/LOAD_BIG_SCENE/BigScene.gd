extends Scene


# Called when the node enters the scene tree for the first time.
func _ready():
	print(Time.get_ticks_msec())
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass


func _on_button_pressed():
	SceneChanger.change_scene("res://SCENES/Main/Game.tscn")
	pass # Replace with function body.
