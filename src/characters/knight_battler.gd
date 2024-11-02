extends CharacterBody2D

@export var battler_resource: BattlerResource
@export var speed = 9000

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var fighting_area: Area2D = $FightingArea
@onready var attack_timer: Timer = $AttackTimer

var battler_instance: Battler
var targets: Array
var basicAttack: AbilityResource
var initial_speed: float


func _ready() -> void:
	animation_player.play("Walk")
	targets = []
	battler_instance = Battler.new(battler_resource)
	attack_timer = Timer.new()
	basicAttack = battler_resource.ability_list.front()
	attack_timer.wait_time = basicAttack.cooldown
	self.add_child(attack_timer)
	initial_speed = speed


func _physics_process(delta: float) -> void:
	var direction := Vector2(-1, 0)
	if direction:
		velocity.x = direction.x * speed * delta
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
	move_and_slide()


func _on_fighting_area_body_entered(body: Node2D) -> void:
	if body != self:
		speed = 0
		if not body in targets:
			targets.append(body)


func _on_fighting_area_body_exited(body: Node2D) -> void:
	if body != self and body in targets:
		var index = targets.find(body)
		if index > -1:
			targets.remove_at(index)


func _on_attack_timer_timeout() -> void:
	if len(targets) > 0:
		animation_player.stop()
		animation_player.play("Attack")
	else:
		speed = initial_speed
		animation_player.play("Walk")
		
