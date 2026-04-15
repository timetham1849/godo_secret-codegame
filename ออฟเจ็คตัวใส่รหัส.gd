extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
# func _input(event):
# 		if event is InputEventMouseButton and event.pressed and event.buttom_index == BUTTON_LEFT:
# 			if get_rect().has_point(to_local(event.position)):
				

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.


func _on_ออฟเจ็คตัวใส่รหัส_frame_changed() -> void:
	pass # Replace with function body.


func _on_collision_shape_2d_item_rect_changed() -> void:
	pass # Replace with function body.
