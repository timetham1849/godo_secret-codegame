extends Node2D
var detail_selec= false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_ลูกศร1_pressed() -> void:
	get_tree().change_scene_to_file("res://node_right.tscn")


func _on_ลูกศร2_pressed() -> void:
	get_tree().change_scene_to_file("res://node_left.tscn")


func _on_area_2d_input_event(viewport, event, shape_idx) -> void:
	if !detail_selec: 
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			$"ออฟเจ็คตู้(ทำเผื่อไว้ใช้)".visible = false
			$"ออฟเจ็คตู้เปิด".visible = true


func _on_offject_locker_input_event(viewport, event, shape_idx) -> void:
	if !detail_selec: 
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			$"ออฟเจ็คตู้(ทำเผื่อไว้ใช้)".visible = true
			$"ออฟเจ็คตู้เปิด".visible = false
