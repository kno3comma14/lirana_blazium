extends Resource
class_name AbilityResource

enum AbilityType {
	DAMAGE,
	HEALING,
	SUPPORT
}


@export var name: String
@export_multiline var description: String
@export var hp_effect_intensity: int
@export var energy_effect_intensity: int
@export var hp_comsuption: int
@export var energy_comsuption: int
@export var cooldown: int
@export var duration: int
@export var tick_period: int
@export var type: AbilityType
