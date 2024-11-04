extends Node2D

@onready var healing_timer: Timer = $HealingTimer
@onready var animation_player: AnimationPlayer = $AnimationPlayer

var hekate_totem_resource = preload("res://resources/battlers/hekate_totem.tres")



func _ready() -> void:
	healing_timer.wait_time = hekate_totem_resource.ability_list[0].tick_period
	healing_timer.one_shot = false
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_healing_timer_timeout() -> void:
	animation_player.play("HealingEffect")
