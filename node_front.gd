extends Node2D

func _on_collision_shape_2d_item_rect_changed() -> void:
	pass # Replace with function body.


func _on_area_2d_mouse_entered() -> void:
	pass # Replace with function body.


func _on_ลูกซ้ายf_pressed() -> void:
	get_tree().change_scene_to_file("res://node_left.tscn")


func _on_ลูกศรขวาf_pressed() -> void:
	get_tree().change_scene_to_file("res://node_right.tscn")


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.
