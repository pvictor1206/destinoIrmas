extends Node2D

# ONREADY
@onready var characterClass = load("res://character/character.tscn")
@onready var characterNode = $character

@onready var sceneNode = $scene



# COMMON VARIABLES
var player
var floor
var scene

var counterScene = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	player = Global.sceneCreate(characterClass, characterNode, 'currentPlayer')

func _physics_process(delta):
	if Global.currentState == Global.gameStates.START:
		start(counterScene)
	elif Global.currentState == Global.gameStates.NEXT_SCENE:
		newScene()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func start(numberScenario):
	
	var sceneClass = load("res://scene/scenario/scenario0" + str(numberScenario) + ".tscn")
	
	# Remove nodes in scene
	if $scene.get_child_count() > 0:
		var childrenScene = $scene.get_children()
		for c in childrenScene:
			$scene.remove_child(c)
			c.queue_free()


	scene = Global.sceneCreate(sceneClass, sceneNode, 'currentScene')
	Global.setState(Global.gameStates.TALK_NPC)

func newScene():
	if counterScene != 8:
		counterScene += 1
		
	Global.setState(Global.gameStates.START)
