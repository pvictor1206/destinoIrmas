extends Node2D

# ONREADY
@onready var characterClass = load("res://character/character.tscn")
@onready var characterNode = $character

@onready var sceneNode = $scene

@onready var player = Global.sceneCreate(characterClass, characterNode, 'currentPlayer')


# COMMON VARIABLES
var floor
var scene



# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _physics_process(delta):
	if Global.currentState == Global.gameStates.START:
		start(Global.counterScene)
	elif Global.currentState == Global.gameStates.NEXT_SCENE:
		newScene()
		$character/currentPlayer/player.position = Vector2(0, 49.35)

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
	#player.position = Vector2(79.25, 535.25)

func newScene():
	if Global.counterScene != 8:
		Global.counterScene += 1
		
	Global.setState(Global.gameStates.START)
