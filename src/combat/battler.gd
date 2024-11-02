extends Node
class_name Battler


var battler_resource: BattlerResource
var target_in_range: bool
var hp: int
var energy: int


func _init(_battler_resource: BattlerResource):
	battler_resource = _battler_resource
	target_in_range = false
	hp = battler_resource.max_hp
	energy = battler_resource.max_energy
