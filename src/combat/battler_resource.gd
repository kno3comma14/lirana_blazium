extends Resource
class_name BattlerResource


@export var name: String
@export var max_hp: int
@export var max_energy: int
@export var hp: int = max_hp
@export var energy: int = max_energy
@export var strength: int # Contributes to attacks intensity
@export var agility: int # Contribute to movement speed and attack speed
@export var is_enemy: bool
@export var ability_list: Array[AbilityResource]
