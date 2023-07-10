extends Node2D

var msq_queue00: Array = [
	"Olá",
	"Bem vindo ao jogo!",
]

var msq_queue0101: Array = [
	"Ela está tão...",
	"Queria ser como ela",
]

var msq_queue0102: Array = [
	"'Ser ou não ser, és a questão'",
	"Amo atuar",
]

var clicked00 = true

var clicked0101 = true
var clicked0102 = true

@onready var text := $Dialog/DialogBox/Text
@onready var timer := $Dialog/DialogBox/Timer
@onready var person := $Dialog/DialogBox/person
@onready var dialog := $Dialog


# Called when the node enters the scene tree for the first time.
func _ready():
	$ProximaCena.addText("Próxima Cena")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	Global.setState(Global.gameStates.NEXT_SCENE)


func _input(event):
	if event is InputEventKey and event.is_action_pressed("ui_accept") and (clicked00 == false or clicked0101 == false or clicked0102 == false):
		show_message()

	
func show_message() -> void:
	if not timer.is_stopped():
		text.visible_characters = text.text.length()
		return
	
	# CENA 00
	if clicked00 == false:
		if msq_queue00.size() == 0:
			dialog.visible = false
			await get_tree().create_timer(0.5).timeout
			clicked00 = true
			msq_queue00 = [
				"Olá",
				"Bem vindo ao jogo!",
			]
			return
		else:
			text.visible_characters = 0
			var _msg: String = msq_queue00.pop_front()
			text.text = _msg
			timer.start()
	
	# CENA 01
	if clicked0101 == false:
		if msq_queue0101.size() == 0:
			dialog.visible = false
			await get_tree().create_timer(0.5).timeout
			clicked0101 = true
			msq_queue0101 = [
				"Ela está tão...",
				"Queria ser como ela",
			]

			return
		else:
			text.visible_characters = 0
			var _msg: String = msq_queue0101.pop_front()
			text.text = _msg
			print(text.text)
			timer.start()
	
	if clicked0102 == false:
		if msq_queue0102.size() == 0:
			dialog.visible = false
			await get_tree().create_timer(0.5).timeout
			clicked0102 = true
			msq_queue0102 = [
				"'Ser ou não ser, és a questão'",
				"Amo atuar",
			]

			return
		else:
			text.visible_characters = 0
			var _msg: String = msq_queue0102.pop_front()
			text.text = _msg
			print(text.text)
			timer.start()
			
	
	



func _on_timer_timeout():
	if text.visible_characters == text.text.length():
		timer.stop()
	
	text.visible_characters += 1



func _on_chat_00_pressed():
	if clicked00:
		dialog.visible = true
		clicked00 = false
		person.text = 'Jogador'
		show_message()
		


func _on_chat_0101_pressed():
	if clicked0101:
		dialog.visible = true
		clicked0101 = false
		person.text = 'Raquel'
		show_message()


func _on_chat_0102_pressed():
	if clicked0102:
		dialog.visible = true
		clicked0102 = false
		person.text = 'Ruth'
		show_message()
