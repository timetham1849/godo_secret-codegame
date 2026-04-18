extends Control
var typed_text : String= ""
var passcode : String = "9061"
# Called when the node enters the scene tree for the first time.
@onready var label : RichTextLabel = $RichTextLabel
@onready var square : Sprite2D = $"ออฟเจ็คตัวใส่รหัส"
var sprite_normal  = preload("res://aspite/ออฟเจ็คตัวใส่รหัส.png")
var sprite_correct = preload("res://aspite/รหัสถูก.png")   # ← รูปช่องสีเขียว
var sprite_wrong   = preload("res://aspite/รหัสผิด.png")   # ← รูปช่องสีแดง
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_button_1_pressed() -> void:
	typed_text +="1"
	label.text = typed_text

func _on_button_2_pressed() -> void:
	typed_text +="2"
	label.text = typed_text
func _on_button_3_pressed() -> void:
	typed_text +="3"
	label.text = typed_text


func _on_button_4_pressed() -> void:
	typed_text +="4"
	label.text = typed_text


func _on_button_5_pressed() -> void:
	typed_text +="5"
	label.text = typed_text


func _on_button_6_pressed() -> void:
	typed_text +="6"
	label.text = typed_text


func _on_button_7_pressed() -> void:
	typed_text +="7"
	label.text = typed_text


func _on_button_8_pressed() -> void:
	typed_text +="8"
	label.text = typed_text


func _on_button_9_pressed() -> void:
	typed_text +="9"
	label.text = typed_text


func _on_buttonred_delete_pressed() -> void:
	typed_text = typed_text.left(typed_text.length()-1)
	label.text = typed_text



func _on_button_0_pressed() -> void:
	typed_text +="0"
	label.text = typed_text


func _on_buttongreen_accept_pressed() -> void:
	if typed_text == passcode:
		square.texture = sprite_correct
		typed_text = ""
		label.text = ""
		await get_tree().create_timer(1.5).timeout
		get_tree().change_scene_to_file("res://node_End.tscn")
		square.texture = sprite_normal
	else :
		square.texture =sprite_wrong 
		typed_text = ""
		label.text = ""
		await  get_tree().create_timer(1.5).timeout
		square.texture = sprite_normal
