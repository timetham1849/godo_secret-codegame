extends Node2D

func _on_ลูกศรซ้ายl_pressed() -> void:
	get_tree().change_scene_to_file("res://node_black.tscn")


func _on_ลูกศรขวาl_pressed() -> void:
	get_tree().change_scene_to_file("res://node_front.tscn")
