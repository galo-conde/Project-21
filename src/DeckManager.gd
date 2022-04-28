extends Node

const CardEffect = preload("res://src/Cards.gd")#res://Cards/Cards.gd")
onready var cards = CardEffect.new() #setget shuffleAll
#export (Array) var cardHands = CardEffect.new()
#onready var cards = cardHands

onready var mainDeck = cards.fields[0] #create deck of cards

# Called when the node enters the scene tree for the first time.
func _ready():
	cards.shuffleAll() #shuffle deck 
	#cards.printSummary()
	#pass # Replace with function body.

func shuffleAll(value):
	cards.shuffleAll()

func addField():
	cards.addField()
	cards.printSummary()
	
	
#func getValue(currCard, mask = true):
#	return cards.getValue(currCard, mask)

#gets the total score for the hand that is passed into  function
func checkCardsScore(hand):
	var score =  0
	for card in hand:
		score += cards.getValue(card)
	return  score
	
func getGameWinner(playerHand, dealerHand):
	var dealerDist = abs(21 - checkCardsScore(dealerHand))
	var playerDist = abs(21 - checkCardsScore(playerHand))
	#get_tree().reload_current_scene()
	cards.addDeck(cards.fields[0]) #deck reset
	cards.fields[1] = [] #playerhand reset
	cards.fields[2] = [] #dealerhand reset
	if checkCardsScore(dealerHand) > 21 :
		return "PLAYER"
	elif checkCardsScore(playerHand) > 21 :
		return "DEALER"
	elif playerDist > dealerDist :
		return "DEALER"
	elif dealerDist > playerDist : 
		return "PLAYER"
	else:
		return "TIE"
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
