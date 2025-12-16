extends Area2D

const HOVER_SCALE := Vector2(1.2, 1.2)
const NORMAL_SCALE := Vector2(1, 1)

@onready var sprite := $Sprite2D

func _ready() -> void:
	input_pickable = true
	sprite.scale = NORMAL_SCALE

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.pressed \
	and event.button_index == MOUSE_BUTTON_LEFT:
		Global.mushrooms += 1
		print("mushrooms:", Global.mushrooms)
		queue_free()

func _on_mouse_entered() -> void:
	sprite.scale = HOVER_SCALE
	
func _on_mouse_exited() -> void:
	sprite.scale = NORMAL_SCALE
