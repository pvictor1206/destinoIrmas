extends Node2D

# STATE MACHINE
enum gameStates {NONE, START, TALK_NPC, NEXT_SCENE}
enum gameScene {
	MYSTERIOUS_PLACE,
	GARDEN,
	LIVING_ROOM,
	ROOM,
	THEATER_INIT,
	FITTING_ROOM,
	HALL,
	VILLAGE,
	THEATER_END,
	}

var currentState = gameStates.START

# ONREADY
@onready var characterClass = load("res://character/character.tscn")
@onready var characterNode = $character

@onready var floorClass = load("res://objects/floor/floor.tscn")


@onready var objectsNode = $objects




# COMMON VARIABLES
var player
var floor


func setState(s):
	currentState = s

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if currentState == gameStates.START:
		start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func start():
	player = Global.sceneCreate(characterClass, characterNode, 'player')
	floor = Global.sceneCreate(floorClass, objectsNode, 'floor')
	setState(gameStates.NONE)
