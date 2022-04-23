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

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
