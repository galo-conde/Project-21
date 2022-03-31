extends KinematicBody2D

export var MAX_SPEED = 80
export var ACCELERATION = 500
export var FRICTION = 500

enum { #creates variables that cant change, and are num from 0 to n+1
	MOVE,
	ROLL,
	ATTACK
}

var velocity = Vector2.ZERO
var state = MOVE
var stats = PlayerStats

onready var animation_player = $AnimationPlayer
onready var animation_tree = $AnimationTree
#getting access to the root in animaiton tree#
onready var animation_state = animation_tree.get("parameters/playback")
onready var swordHitBox = $HitboxPivot/SwordHitBox
onready var hurtBox = $HurtBox
onready var cardsMan = $"/root/DeckManager"


func _ready():
	stats.connect("no_health", self, "queue_free")
	animation_tree.active = true
	cardsMan.cards.addField() #create Player Hand
	#var hand = cardsMan.cards.fields[1] #create variable to access Player Hand

func _physics_process(delta):
	match state: #ennum which is close to a switch function
		MOVE:
			move_state(delta) #calling the function intp process
	
		ROLL:
			pass
		
		ATTACK:
			attack_state(delta)



func move_state(delta): #this functions is for movement
	
	var input_vector = Vector2.ZERO
	
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	#walking sideways is faster, so normalized() sets up the vector to a circle instead of raduis 1#
	input_vector = input_vector.normalized() 
	
	if input_vector != Vector2.ZERO:
		swordHitBox.knockback_vector = input_vector
		#sets blend postion for idle, run, and attack#
		animation_tree.set("parameters/Idle/blend_position", input_vector)
		animation_tree.set("parameters/Run/blend_position", input_vector)
		animation_tree.set("parameters/Attack/blend_position", input_vector)
		
		animation_state.travel("Run")
		
		#value to move towards * the amount to move towards that#
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
		
	else:
		animation_state.travel("Idle")
		#move_toward applies friction to the movement#
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
	#move_and_slide habdles delta#
	velocity = move_and_slide(velocity)
	
	if Input.is_action_just_pressed("attack"):
		state = ATTACK #sets the state variable = to the attack enum

func attack_state(delta):
	velocity = Vector2.ZERO
	animation_state.travel("Attack") #tansfers from idle
	
func attack_animation_finished():
	state = MOVE
	hit_card()


func _on_HurtBox_area_entered(area):
	stats.health -= 1
	hurtBox.start_invincibility(1)
	hurtBox.create_hit_effect()

func hit_card():
	var hand = cardsMan.cards.fields[1] #create variable to access Player1 Hand
	cardsMan.cards.drawCard(hand) #draw card from deck to Player1 Hand

	var i = 0
	var card
	
	#show each card in Player1 Hand
	print("Player1 Hand")
	while i < hand.size(): 
		card = cardsMan.cards.getCard(1, i)
		print(card)
		print(cardsMan.cards.getDescStr(card))
		i += 1
