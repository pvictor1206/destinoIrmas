extends Node

# Função para cirar novas cenas
func sceneCreate(path,parent,name = 'newNode'):
	var nodeClass = path
	var newNode = nodeClass.instantiate()
	newNode.name = name
	parent.add_child(newNode)

var counterScene = 0

enum gameStates {NONE, START, TALK_NPC, NEXT_SCENE}

var currentState = gameStates.START

func setState(s):
	Global.currentState = s
