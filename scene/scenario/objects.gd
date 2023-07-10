extends Node2D

var msq_queue: Array = [
	"Olá",
	"Bem vindo ao jogo!",
]

var clicked = true

@onready var text := $Dialog/DialogBox/Text
@onready var timer := $Dialog/DialogBox/Timer
@onready var person := $Dialog/DialogBox/person
@onready var dialog := $Dialog


# Called when the node enters the scene tree for the first time.
func _ready():
	$CliqueAqui.addText("Clique aqui!")
	$ProximaCena.addText("Próxima Cena")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	Global.setState(Global.gameStates.NEXT_SCENE)


func _input(event):
	if event is InputEventKey and event.is_action_pressed("ui_accept") and clicked == false:
		show_message()

	
func show_message() -> void:
	if not timer.is_stopped():
		text.visible_characters = text.text.length()
		return
	
	if msq_queue.size() == 0:
		dialog.visible = false
		$Dialog/DialogBox.hide()
		return
	
	text.visible_characters = 0
	var _msg: String = msq_queue.pop_front()
	text.text = _msg
	print(text.text)
	timer.start()



func _on_timer_timeout():
	if text.visible_characters == text.text.length():
		timer.stop()
	
	text.visible_characters += 1


func _on_chat_pressed():
	if clicked:
		dialog.visible = true
		clicked = false
		person.text = 'Jogador'
		show_message()
