extends Node2D

const ButtonEffect = preload("res://Effects/HitButtonEffect.tscn")
#const Cards = preload("res://src/Cards.gd")
onready var cardsMan = $"/root/DeckManager"

onready var HitButtonSprite = $Sprite

signal winner
signal loser
signal tied

func create_butttonEffect():
	var hitButtonEffect = ButtonEffect.instance()
	get_parent().add_child(hitButtonEffect)
	hitButtonEffect.global_position = global_position
	PlayerStats.hit_card()

	var hand = cardsMan.cards.fields[1] #create variable to access Player1 Hand

	var i = 0
	var card
	#show each card in Player1 Hand
	print("Player1 Hand - HIT BUTTON")
	while i < hand.size(): 
		card = cardsMan.cards.getCard(1, i)
		print(card)
		print(cardsMan.cards.getDescStr(card))
		$Label2.text = str(card)
		$Label.text = str(cardsMan.cards.getDescStr(card))
		i += 1
	
	var dealerHand = cardsMan.cards.fields[2] 
	#create variable to Dealer Hand

	
	var playerHandScore = cardsMan.checkCardsScore(hand) 
	var dealerHandScore = cardsMan.checkCardsScore(cardsMan.cards.fields[2]) 
	
	if (playerHandScore > dealerHandScore && dealerHandScore < 21):
		cardsMan.cards.drawCard(cardsMan.cards.fields[2])
	
	print("Dealer Hand - HIT BUTTON")
	i = 0
	while i < dealerHand.size(): 
		card = cardsMan.cards.getCard(2, i)
		print(card)
		print(cardsMan.cards.getDescStr(card))
		i += 1
		
	if (cardsMan.checkCardsScore(hand) > 21 || cardsMan.checkCardsScore(dealerHand) > 21):
		print ("WINNER IS:")
		$Label2.text = "Winner: "
		var winner = cardsMan.getGameWinner(hand, cardsMan.cards.fields[2])
		$Label.text = winner
		if winner == "PLAYER":
			emit_signal('winner')
		elif winner == "DEALER":
			emit_signal('loser')
		else:
			emit_signal('tied')
		print(winner)
		
func winner():
	pass
	#show each card in Dealer Hand
#	i = 0
#	print("Dealer Hand")
#	while i < dealer.size(): 
#		card = cards.getCard(2, i)
#		print(card)
#		print(cards.getDescStr(card))
#		i += 1

#set the button invisible when animation is playing
#when the animation ends, then make sprite visiable again after a second delay
func _on_HurtBox_area_entered(area):
	HitButtonSprite.visible = false
	create_butttonEffect()
	yield(get_tree().create_timer(1.0), "timeout") #the delay
	HitButtonSprite.visible = true
