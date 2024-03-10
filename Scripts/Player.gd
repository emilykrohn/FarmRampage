extends Entity

class_name Player

var player_attack_damage: int = 2
var player_health: int = 20

func _ready():
	attack_damage = player_attack_damage
	health = player_health

func attack(target: Entity):
	target.take_damage(attack_damage)

func take_damage(amount: int):
	health -= amount
	if health < 0:
		die()
