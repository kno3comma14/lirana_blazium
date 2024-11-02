extends Resource
class_name AbilityResource

enum AbilityType {
	DAMAGE,
	HEALING
}


@export var name: String
@export_multiline var description: String
@export var hp_effect_intensity: int
@export var energy_effect_intensity: int
@export var cooldown: int
