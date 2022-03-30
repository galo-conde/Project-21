extends Node

export(int) var max_money = 99999 setget set_max_money
var money = max_money setget set_money

#max health is capable of being increased outside of this

export(int) var max_health = 1 setget set_max_health
var health = max_health setget set_health

signal no_health
signal health_changed(value)
signal max_health_changed(value)
signal no_money
signal money_changed(value)

func set_max_health(value):
	max_health = value
	self.health = min(health, max_health)#health will never be bigger than max health
	emit_signal("max_health_changed", max_health)

func set_health(value):
	health = value
	emit_signal("health_changed", health)
	if health <= 0:
		emit_signal("no_health")

func set_max_money(value):
	max_money = value
	self.money = min(money, max_money)
	
func set_money(value):
	money = value
	emit_signal("money_changed", money)
	if money <= 0:
		emit_signal("no_money")

func _ready():
	self.health = max_health
	self.money = 300
