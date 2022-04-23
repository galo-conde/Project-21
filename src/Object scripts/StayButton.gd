extends Node2D

const ButtonEffect = preload("res://Effects/StayButtonEffect.tscn")
onready var cardsMan = $"/root/DeckManager"
onready var StayButtonSprite = $Sprite
 
# We cache the children should we need to access them again
onready var timer := $Timer
onready var label := $CustomLabel

func _ready() -> void:
	timer.connect("timeout", label, "toggle_visibility")


func create_butttonEffect():
	var stayButtonEffect = ButtonEffect.instance()
	get_parent().add_child(stayButtonEffect)
	stayButtonEffect.global_position = global_position
	
	
	var hand = cardsMan.cards.fields[1] #create variable to access Player1 Hand
	

	var i = 0
	var card
	#show each card in Player1 Hand
	print("Player1 Hand - STAY BUTTON")
	while i < hand.size(): 
		card = cardsMan.cards.getCard(1, i)
		print(card)
		print(cardsMan.cards.getDescStr(card))
		i += 1
	
	var dealerHand = cardsMan.cards.fields[2] #create variable to Dealer Hand
	print("Dealer Hand - STAY BUTTON")
	i = 0
	while i < dealerHand.size(): 
		card = cardsMan.cards.getCard(2, i)
		print(card)
		print(cardsMan.cards.getDescStr(card))
		i += 1
	
	var playerHandScore = cardsMan.checkCardsScore(hand) 
	var dealerHandScore = cardsMan.checkCardsScore(cardsMan.cards.fields[2]) 
	
	while (playerHandScore > dealerHandScore && dealerHandScore < 21):
		cardsMan.cards.drawCard(cardsMan.cards.fields[2])
	
	$Label.text = "WiNNER IS:"
	#if (cardsMan.checkCardsScore(hand) > 21):
	print ("WINNER IS:")
	var winner = cardsMan.getGameWinner(hand, cardsMan.cards.fields[2])
	$Label2.text =  winner
	print (winner)
		
	

func _on_HurtBox_area_entered(area):
	StayButtonSprite.visible = false
	create_butttonEffect()
	yield(get_tree().create_timer(1.0), "timeout") #the delay
	StayButtonSprite.visible = true
