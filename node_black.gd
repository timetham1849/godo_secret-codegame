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
			$"พื้นหลัง".visible = true	
			$"ออฟเจ็คตู้เปิด2".visible = true
			$"เครื้องหมาย2".visible = true	
			$"Paper".visible = true
			$"Paper2".visible = true	
			$"Key".visible = true
			$"Key2".visible = true	
			


#func _on_offject_locker_input_event(viewport, event, shape_idx) -> void:
	#if !detail_selec: 
		#if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			#$"ออฟเจ็คตู้(ทำเผื่อไว้ใช้)".visible = true
			#$"ออฟเจ็คตู้เปิด".visible = false


func _on_computer_none_zoom_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			$"คอม".visible = true
			$"เครื้องหมาย".visible = true
			$"b_to_d".visible = true


func _on_เครื่องหมายกากากบาท_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		$"คอม".visible = false
		$"เครื้องหมาย".visible = false
		$"b_to_d".visible = false



func _on_เครื่องหมายกากากบาท2_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if !detail_selec: 
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			$"ออฟเจ็คตู้(ทำเผื่อไว้ใช้)".visible = true	
			$"ออฟเจ็คตู้เปิด".visible = false
			$"พื้นหลัง".visible = false	
			$"ออฟเจ็คตู้เปิด2".visible = false
			$"เครื้องหมาย2".visible = false	
			$"Paper".visible = false
			$"Paper2".visible = false	
			$"Key".visible = false
			$"Key2".visible = false







	
