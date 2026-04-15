extends Node2D

func _on_ลูกศรซ้ายr_mouse_entered() -> void:
	get_tree().change_scene_to_file("res://node_front.tscn")

func _on_ลูกศรขวาr_mouse_entered() -> void:
	get_tree().change_scene_to_file("res://node_black.tscn")


func _on_ลูกศรซ้ายr_pressed() -> void:
	pass # Replace with function body.


func _on_ลูกศรขวาr_pressed() -> void:
	pass # Replace with function body.
