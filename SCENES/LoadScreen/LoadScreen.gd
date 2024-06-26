extends Scene

var test_scene_path = "res://SCENES/LOAD_BIG_SCENE/BigScene.tscn"
@export var load_bar:ProgressBar

var loading = false

var progress = []

func load_new_scene():
	pass
	
func _process(_delta):
	if loading:
		ResourceLoader.load_threaded_get_status(test_scene_path, progress)
		load_bar.value = progress[0] * 100
		await get_tree().create_timer(0.1).timeout
		if (ResourceLoader.load_threaded_get_status(test_scene_path) == ResourceLoader.THREAD_LOAD_LOADED and loading):
			SceneChanger.change_scene(test_scene_path)
			loading = false

func _on_button_pressed():
	loading = true
	print("LOADING")
	print(Time.get_ticks_msec())
	print("-----")
	ResourceLoader.load_threaded_request(test_scene_path)
	pass # Replace with function body.


func _on_button_2_pressed():
	ParticleCache.queue_particles(3)
	pass # Replace with function body.
