extends Node2D

const WoodBoxEffect = preload("res://Effects/WoodBoxEffect.tscn")
const CardEffect = preload("res://src/Cards.gd")

signal broken(pos)

func create_WoodBoxEffect():
	var woodBoxEffect = WoodBoxEffect.instance() #instance the scene
	get_parent().add_child(woodBoxEffect) 
	woodBoxEffect.global_position = global_position #set its position
	
	var cards = CardEffect.new()
	var mainDeck = cards.fields[0] #create deck of cards
	cards.shuffleAll() #shuffle deck 
	cards.addField() #create Player1 Hand
	var hand = cards.fields[1] #create variable to access Player1 Hand
	
	cards.printSummary()
	cards.addField() #create dealer hand
	var dealer = cards.fields[2]
	cards.drawCard(hand) #draw card from deck to Player1 Hand
	cards.drawCard(cards.fields[2]) #draw card from deck to Dealer Hand
	
	cards.printSummary()
	var i = 0
	var card
	#show each card in Player1 Hand
	print("Player1 Hand")
	while i < hand.size(): 
		card = cards.getCard(1, i)
		print(card)
		print(cards.getDescStr(card))
		i += 1
		
	#show each card in Dealer Hand
	i = 0
	print("Dealer Hand")
	while i < dealer.size(): 
		card = cards.getCard(2, i)
		print(card)
		print(cards.getDescStr(card))
		i += 1
	

func _on_HurtBox_area_entered(area):
	create_WoodBoxEffect()
	emit_signal('broken', global_position+ Vector2(10,10))
	queue_free()

