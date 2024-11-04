extends Control

@onready var color_rect: ColorRect = $ColorRect

var central_coordinates: Vector2


func _ready() -> void:
	color_rect.color.a = 0


func _process(_delta: float) -> void:
	pass


func _on_color_rect_mouse_entered() -> void:
	central_coordinates = color_rect.global_position + color_rect.size / 2
	print(central_coordinates)
	color_rect.color.a = 0.5


func _on_color_rect_mouse_exited() -> void:
	color_rect.color.a = 0
