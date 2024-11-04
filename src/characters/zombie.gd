extends CharacterBody2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

@export var speed = 9000


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animation_player.play("Walk")
	self.position = Global.LIRANA_SPOTS[0] + Vector2(20, 0)

func _physics_process(delta: float) -> void:
	var direction := Vector2(1, 0)
	if direction:
		velocity.x = direction.x * speed * delta
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
	move_and_slide()
