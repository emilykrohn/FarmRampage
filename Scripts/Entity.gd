extends Node

class_name Entity

# default attack danage and health values
var attack_damage: int = 2
var health: int = 10

func movement():
	pass

func attack(target: Entity) -> void:
	target.take_damage(attack_damage)

func take_damage(amount: int) -> void:
	health -= amount
	if health <= 0:
		die()

func die() -> void:
	queue_free()
