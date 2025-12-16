extends AnimatedSprite2D

var can_enter := false


func _ready() -> void:
	hide()



func _process(delta: float) -> void:
	if can_enter and Input.is_key_pressed(KEY_E):
		print("ENTERED")
		can_enter = false
		get_tree().change_scene_to_file("res://scenes/main_2.tscn")

func _on_gate_body_entered(body: Node2D) -> void:
	can_enter = true
	show()



func _on_gate_body_exited(body: Node2D) -> void:
	can_enter = false
	hide()
