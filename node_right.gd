extends Node2D

func _on_ลูกศรซ้ายr_pressed() -> void:
	get_tree().change_scene_to_file("res://node_front.tscn")

func _on_ลูกศรขวาr_pressed() -> void:
	get_tree().change_scene_to_file("res://node_black.tscn")
