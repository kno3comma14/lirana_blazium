extends Node2D

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer


var index = 0


func _ready() -> void:
	pass



func _process(_delta: float) -> void:
	animation_player.play("idle")
	
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("up"):
		if index - 1 < 0:
			index = 3
		else:
			index -= 1
	if event.is_action_pressed("down"):
		if index + 1 > 3:
			index = 0
		else:
			index += 1
			
	self.position = Global.LIRANA_SPOTS[index]
	
