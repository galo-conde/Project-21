extends Node

onready var cardsMan = $"/root/DeckManager"

export(int) var max_money = 999999 setget set_max_money
var money = max_money setget set_money

#max health is capable of being increased outside of this

export(int) var max_health = 1 setget set_max_health
var health = max_health setget set_health


export(Array) var max_cards = [] setget set_max_cards
var cards = max_cards setget set_cards

signal no_health
signal health_changed(value)
signal max_health_changed(value)
signal no_money
signal money_changed(value)
signal no_cards
signal cards_changed(value)
signal was_hit()


func set_max_health(value):
	max_health = value
	self.health = min(health, max_health)#health will never be bigger than max health
	emit_signal("max_health_changed", max_health)

func set_health(value):
	health = value
	emit_signal("health_changed", health)
	#print(health)
	if health <= 0:
		emit_signal("no_health")


func set_max_money(value):
	max_money = value
	self.money = min(money, max_money)
	
func set_money(value):
	money = value
	emit_signal("money_changed", money)
	#print(money)
	if money <= 0:
		emit_signal("no_money")

func set_max_cards(value):
	max_cards= value
	self.cards = min(cards, max_cards)
	
func set_cards(value):
	cards = value
	emit_signal("cards_changed", cards)
	#print(cards)
	if cards <= 0:
		emit_signal("no_cards")


	
func hit_card():
	var hand = cardsMan.cards.fields[1] #create variable to access Player1 Hand
	cardsMan.cards.drawCard(hand) #draw card from deck to Player1 Hand

#	var i = 0
#	var card
	
	#show each card in Player1 Hand
	#print("Player1 Hand")
	#while i < hand.size(): 
	#	card = cardsMan.cards.getCard(1, i)
	#	print(card)
	#	print(cardsMan.cards.getDescStr(card))
	#	i += 1
		
		#show each card in Player1 Hand
#	var dealerHand = cardsMan.cards.fields[2] #create variable to access Player1 Hand
	#print("Dealer Hand")
	#i = 0
	#while i < dealerHand.size(): 
	#	card = cardsMan.cards.getCard(1, i)
	#	print(card)
	#	print(cardsMan.cards.getDescStr(card))
	#	i += 1


func _ready():
	self.health = max_health
	self.money = 300
	#self.cards = 0
	#cardsMan.addField() #create player hand
