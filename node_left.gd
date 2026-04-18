extends Node2D

func _on_ลูกศรซ้ายl_pressed() -> void:
	get_tree().change_scene_to_file("res://node_black.tscn")


func _on_ลูกศรขวาl_pressed() -> void:
	get_tree().change_scene_to_file("res://node_front.tscn")


func _on_paper_1_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$"กระดาษข้อมุล".visible= true

func _on_closs_เครื่องหมาย3_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$"กระดาษข้อมุล".visible= false
