@icon("res://ASSETS/ICONS/ecaroh_icon3.png")
class_name Player extends Node2D

@onready var Anim = $AnimatedSprite2D as AnimatedSprite2D

#ECHO
@export var echo:EchoResource
signal emit_echo()

func _physics_process(_delta):
	position = get_global_mouse_position()


func _on_hitbox_hit_target(_target_area):
	print("hit")
	CameraShake.shake()
	pass # Replace with function body.


func _on_timer_timeout():
	emit_echo.emit(self, echo)
	pass # Replace with function body.

func switch_anim(new_anim:String) -> void:
	if new_anim in Anim.sprite_frames.get_animation_names():
		Anim.play(new_anim)
