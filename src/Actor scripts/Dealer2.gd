extends KinematicBody2D

const EnemyDeathEffect = preload("res://Effects/EnemyDeathEffect.tscn")

onready var cardsMan = $"/root/DeckManager"
onready var enemyAi = $"res://src/Actor scripts/Enemy.gd"

export var ACCELERATION = 300
export var MAX_SPEED = 100
export var FRICTION = 500

#state machine
enum {
	IDLE,
	WONDER,
	CHASE
}

var velocity = Vector2.ZERO
var knockback = Vector2.ZERO

var state = CHASE

onready var sprite = $AnimatedSprite
onready var stats = $Stats
onready var playerDetectionZone = $PlayerDetectionZone
onready var hurtBox = $HurtBox
onready var softCollision = $SoftCollision

func _physics_process(delta):
	knockback = knockback.move_toward(Vector2.ZERO, FRICTION * delta)
	knockback = move_and_slide(knockback)
	match state:
		IDLE:
			velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
			seek_player()
			
		WONDER:
			pass
			
		CHASE:
			var player = playerDetectionZone.player
			if player != null:
				var direction = (player.global_position - global_position).normalized()
				velocity = velocity.move_toward(direction * MAX_SPEED, ACCELERATION * delta)
			else:
				state = IDLE
			sprite.flip_h = velocity.x < 0

	if softCollision.is_colliding():
		velocity += softCollision.get_push_vector() * delta * 400
	velocity = move_and_slide(velocity)

func _ready():
	cardsMan.addField() #create dealer hand
	
func seek_player():
	if playerDetectionZone.can_see_player():
		state = CHASE


func _on_HurtBox_area_entered(area):
	stats.health -= area.damage
	knockback = area.knockback_vector * 75
	hurtBox.create_hit_effect()
	#enables the mask to true when enemy is hit
	playerDetectionZone.set_collision_mask(2)


func _on_Stats_no_health():
	queue_free()
	var enemyDeathEffect = EnemyDeathEffect.instance()
	get_parent().add_child(enemyDeathEffect)
	enemyDeathEffect.global_position = global_position
	emit_signal('death', global_position)
