extends Node
class_name ability

signal update_lirana_battler_ui()

@export var ability_resource: AbilityResource



func _init(_ability_resource: AbilityResource) -> void:
	ability_resource = _ability_resource
	
	
func apply_ability(caster: Battler, targets: Array):
	var total_hp_power = caster.battler_resource.strength * self.ability_resource.hp_effect_intensity
	var total_energy_power = caster.battler_resource.strength * self.ability_resource.energy_effect_intensity
	for t: Battler in targets:
		t.hp += total_hp_power
		t.energy += total_energy_power
		if t.battler_resource.name == "Lirana":
			update_lirana_battler_ui.emit()
		
	
