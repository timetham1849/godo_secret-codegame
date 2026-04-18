extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _filter_bit(field: LineEdit, new_text: String) -> void:
	if new_text != "0" and new_text != "1" and new_text != "":
		field.text = ""
		field.caret_column = 0

func _on_click_pressed() -> void:
	var groups = [
		[
			$"VBoxContainer/HBoxContainer/Bit1_1",
			$"VBoxContainer/HBoxContainer/Bit1_2",
			$"VBoxContainer/HBoxContainer/Bit1_3",
			$"VBoxContainer/HBoxContainer/Bit1_4"
		],
		[
			$"VBoxContainer/HBoxContainer2/Bit2_1",
			$"VBoxContainer/HBoxContainer2/Bit2_2",
			$"VBoxContainer/HBoxContainer2/Bit2_3",
			$"VBoxContainer/HBoxContainer2/Bit2_4"
		],
		[
			$"VBoxContainer/HBoxContainer3/Bit3_1",
			$"VBoxContainer/HBoxContainer3/Bit3_2",
			$"VBoxContainer/HBoxContainer3/Bit3_3",
			$"VBoxContainer/HBoxContainer3/Bit3_4"
		],
		[
			$"VBoxContainer/HBoxContainer4/Bit4_1",
			$"VBoxContainer/HBoxContainer4/Bit4_2",
			$"VBoxContainer/HBoxContainer4/Bit4_3",
			$"VBoxContainer/HBoxContainer4/Bit4_4"
		]
	]
	var final_results = []
	for g in groups:
		var b = [g[0].text, g[1].text, g[2].text, g[3].text]
		if b.has(""):
			$"VBoxContainer/Label".text = "กรอกให้ครบทุกช่อง"
			return
		var dec = int(b[0])*8 + int(b[1])*4 + int(b[2])*2 + int(b[3])
		if dec > 9:
			$"VBoxContainer/Label".text = "ค่าเกิน 9!"
			return
		final_results.append(str(dec))
	$"VBoxContainer/Label".text = ", ".join(final_results)

# กลุ่ม 1
func _on_Bit1_1_text_changed(t): _filter_bit($"VBoxContainer/HBoxContainer/Bit1_1", t)
func _on_Bit1_2_text_changed(t): _filter_bit($"VBoxContainer/HBoxContainer/Bit1_2", t)
func _on_Bit1_3_text_changed(t): _filter_bit($"VBoxContainer/HBoxContainer/Bit1_3", t)
func _on_Bit1_4_text_changed(t): _filter_bit($"VBoxContainer/HBoxContainer/Bit1_4", t)
# กลุ่ม 2
func _on_Bit2_1_text_changed(t): _filter_bit($"VBoxContainer/HBoxContainer2/Bit2_1", t)
func _on_Bit2_2_text_changed(t): _filter_bit($"VBoxContainer/HBoxContainer2/Bit2_2", t)
func _on_Bit2_3_text_changed(t): _filter_bit($"VBoxContainer/HBoxContainer2/Bit2_3", t)
func _on_Bit2_4_text_changed(t): _filter_bit($"VBoxContainer/HBoxContainer2/Bit2_4", t)
# กลุ่ม 3
func _on_Bit3_1_text_changed(t): _filter_bit($"VBoxContainer/HBoxContainer3/Bit3_1", t)
func _on_Bit3_2_text_changed(t): _filter_bit($"VBoxContainer/HBoxContainer3/Bit3_2", t)
func _on_Bit3_3_text_changed(t): _filter_bit($"VBoxContainer/HBoxContainer3/Bit3_3", t)
func _on_Bit3_4_text_changed(t): _filter_bit($"VBoxContainer/HBoxContainer3/Bit3_4", t)
# กลุ่ม 4
func _on_Bit4_1_text_changed(t): _filter_bit($"VBoxContainer/HBoxContainer4/Bit4_1", t)
func _on_Bit4_2_text_changed(t): _filter_bit($"VBoxContainer/HBoxContainer4/Bit4_2", t)
func _on_Bit4_3_text_changed(t): _filter_bit($"VBoxContainer/HBoxContainer4/Bit4_3", t)
func _on_Bit4_4_text_changed(t): _filter_bit($"VBoxContainer/HBoxContainer4/Bit4_4", t)
