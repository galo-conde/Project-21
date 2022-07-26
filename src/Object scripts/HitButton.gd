extends Node2D

const ButtonEffect = preload("res://Effects/HitButtonEffect.tscn")
#const Cards = preload("res://src/Cards.gd")
onready var cardsMan = $"/root/DeckManager"

onready var HitButtonSprite = $Sprite

func create_butttonEffect():
	var hitButtonEffect = ButtonEffect.instance()
	get_parent().add_child(hitButtonEffect)
	hitButtonEffect.global_position = global_position
	PlayerStats.hit_card()
	#-----------------------------------------------
	#var cards = CardEffect.new()
	#var mainDeck = cards.fields[0] #create deck of cards
	#cards.shuffleAll() #shuffle deck 
	#cards.addField() #create Player1 Hand
	var hand = cardsMan.cards.fields[1] #create variable to access Player1 Hand
	
	#cards.printSummary()
	#cards.addField() #create dealer hand
	#var dealer = cards.fields[2]
	#cards.drawCard(hand) #draw card from deck to Player1 Hand
	#cards.drawCard(cards.fields[2]) #draw card from deck to Dealer Hand
	
#	cards.printSummary()
	var i = 0
	var card
	#show each card in Player1 Hand
	$CardAnimated.set_frame(52)
	$CardAnimated2.set_frame(52)
	print("Player1 Hand")
	while i < hand.size(): 
		card = cardsMan.cards.getCard(1, i)
		#print(cardsMan.cards.getDescStr(card))
		var cardValue = cardsMan.cards.getDescStr(card)
		var array = []
		for c in cardValue:
			array.append(c)

		var cardValStr = array[0]
		var cardValInt = 0

		var cardSuit = array[1]

		if cardValStr == 'A':
			cardValInt = 0
		elif cardValStr == 'J':
			cardValInt = 10
		elif cardValStr == 'Q':
			cardValInt = 11
		elif cardValStr == 'K':
			cardValInt = 12
		else:
			cardValInt = int(cardValStr) -1


		if cardSuit == 'd':
			cardValInt += 13
		if cardSuit == 's':
			cardValInt += 26
		if cardSuit == 'h':
			cardValInt += 39

		$CardAnimated.set_frame(cardValInt)

		i += 1
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
