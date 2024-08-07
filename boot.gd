extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.play("boot")
	yield(get_tree().create_timer(2.8), "timeout")
	$AnimatedSprite.stop()
	yield(get_tree().create_timer(0.5), "timeout")
	get_tree().change_scene("res://menu.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
