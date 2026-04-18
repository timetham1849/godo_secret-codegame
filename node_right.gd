extends Node2D

func _on_ลูกศรซ้ายr_pressed() -> void:
	get_tree().change_scene_to_file("res://node_front.tscn")

func _on_ลูกศรขวาr_pressed() -> void:
	get_tree().change_scene_to_file("res://node_black.tscn")


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		get_tree().change_scene_to_file("res://right_to_table.tscn")
