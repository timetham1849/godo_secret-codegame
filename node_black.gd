extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_ลูกศร1_mouse_entered() -> void:
	get_tree().change_scene_to_file("res://node_right.tscn")


func _on_ลูกศร2_mouse_entered() -> void:
	get_tree().change_scene_to_file("res://node_left.tscn")


func _on_ลูกศร1_pressed() -> void:
	pass # Replace with function body.


func _on_ลูกศร2_pressed() -> void:
	pass # Replace with function body.
