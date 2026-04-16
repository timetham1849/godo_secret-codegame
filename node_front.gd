extends Node2D
var detail_selec1= false
func _on_collision_shape_2d_item_rect_changed() -> void:
	pass # Replace with function body.


func _on_area_2d_mouse_entered() -> void:
	pass # Replace with function body.


func _on_ลูกซ้ายf_pressed() -> void:
	get_tree().change_scene_to_file("res://node_left.tscn")


func _on_ลูกศรขวาf_pressed() -> void:
	get_tree().change_scene_to_file("res://node_right.tscn")


func _on_nonezoom_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$"กระดานดำขยาย".visible =true	
		detail_selec1 = true

func _on_zoom_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$"กระดานดำขยาย".visible =false
		detail_selec1 = false
