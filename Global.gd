extends Node

# Função para cirar novas cenas
func sceneCreate(path,parent,name = 'newNode'):
	var nodeClass = path
	var newNode = nodeClass.instantiate()
	newNode.name = name
	parent.add_child(newNode)
