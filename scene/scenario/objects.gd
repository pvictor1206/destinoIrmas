extends Node2D

# CENA 00
var msq_queue00: Array = [
	"Olá, Está preparado para embarcar em uma jornada cheia de emoção, mistério e reviravoltas? Então, coloque-se no papel teatral, pois você é o jogador desta história fascinante que está prestes a se desdobrar.",
	"Estamos prestes a mergulhar em um mundo onde as linhas entre realidade e ficção se entrelaçam, onde os destinos se cruzam e onde as escolhas moldam o curso dos acontecimentos.",
	"Há muitos anos atrás, no aconchego de um quarto de hospital, uma cena de pura emoção estava prestes a se desenrolar. Ana, uma mulher corajosa e determinada, deitava em uma cama, enquanto seu marido, Paulo, segurava sua mão com carinho e ansiedade.",
	"O choro de um recém-nascido encheu o quarto de hospital. Ruth tinha chegado ao mundo, trazendo consigo alegria e amor para seus pais. Logo em seguida, nasce Raquel.",
	"Durante o parto, Ana, com sua coragem e determinação, enfrentou complicações inesperadas. A alegria do momento foi ofuscada pela dor da despedida, enquanto Ana deixava este mundo, entregando o precioso legado de suas filhas.",
	"'Interessante a história dessas duas irmãs, vamos assistir o densenrolar da história?'",
	"'Lembre-se, somos o jogador, ninguém poderá enxergar você, só o mais obscuro olhar da noite.'",
]

#CENA 01
var msq_queue0101: Array = [
	"Ruth, você é incrível! Veja como você domina o papel da heroína com tanta confiança e energia!",
	"Vamos criar uma peça? Posso ser a diretora!"
	
]

var msq_queue0102: Array = [
	"Claro, Raquel! Você é a melhor diretora que eu conheço. Vamos fazer uma peça incrível juntas!",
	"Com você ao meu lado, tenho certeza de que nossa peça será um sucesso. Vamos nos divertir muito!",
]

# CENA 02
var msq_queue0201: Array = [
	"Uau, Ruth! Estou impressionado com o seu talento! Você realmente se destaca quando interpreta esses papéis dramáticos. Tenho certeza de que você tem um futuro brilhante no mundo do teatro.",
	"Ainda mais agora, que vai ser a atriz principal da peça 'Hamlet'.",
	"Se sua mãe estivesse aqui, ela estaria orgulhosa!"
]

var msq_queue0202: Array = [
	"Obrigada por acreditarem em mim. Vocês me inspiram a seguir em frente e a buscar meus sonhos.",
]

var msq_queue0203: Array = [
	"Parabéns Ruth...",
	"'O que está acontecendo? Eu estou feliz pela Ruth, mas de certa forma, queria está no lugar dela'",
	'...'
]

# CENA 03

var msq_queue0301: Array = [
	"Mesmo de uns tempos para cá não se importe tanto com o teatro quanto eu, queria desabafar contigo.",
	"Hoje a noite é a grande apresentação, estou muito nervoso, e se o público não gostar de mim? O que farei?",
	"Na apresentação, vou reviver lembranças da nossa infância, quando bricarvamos de criar peças.",
	"Nunca te contei, mas esses momentos me acalmam..."
]

var msq_queue0302: Array = [
	"Tenho certeza de que você vai fazer algum sucesso hoje à noite. Não que eu me importe com isso.",
	"Obrigada por lembrar da infância. Pelo menos tinhamos o mesmo destaque...",
	"'Como ela ousar falar que não me importo com teatro. Se eu podesse, ficaria no lugar dela.'",
	"'Nunca pedi para ter uma irmã, ainda mais... Com sucesso. Quero o mundo se exploda.'"
]

#CENA 04
var msq_queue0401: Array = [
	"Ela não é tão talentosa assim... Ruth o nome dela, certo?",
	"Uma pena. Uma moça tão formosa, na plateia...",
	"Ruth está ofuscando o seu brilho. Ela precisa desaparecer para que você possa ser a estrela que sempre quis",
]

var msq_queue0402: Array = [
	"Porque ela? Todos olham para ela, enquanto a mim? Eu existo",
	"Só existe a Ruth para todos, meus pais, amigos, família...",
	"É como se... Nunca tivesse existido."
]

#CENA 05
var msq_queue0501: Array = [
	"GRANDE APRESENTAÇÃO, Hen.",
	"O QUE VOCÊ QUER? UM PRÊMIO?, SABE QUANTO TEMPO FIQUEI NA SUAS SOMBRAS?",
	"AGORA NÃO VENHA COM 'NÃO SABIA'",
	"EU CANSEI RUTH, EU VOU BRILHAR AGORA, NEM QUE MOVA O MUNDO"
	
]

var msq_queue0502: Array = [
	"Irmã, eu não sabia...",
	"Ultimamente te vejo mais afastada, tive medo de me aproximar, acho que foi um erro",
	"Estamos juntas, não faça isso irmã, você não sabe o quanto te amo."
]

#CENA 06
var msq_queue0601: Array = [
	"Parece que está um pouco raivosa, não parece, mas te entendo",
	"Uns me chamam de fim, outros de epílogo, mas pode me chamar de Morte",
	"Estou disposto a fazer um acordo com você, Raquel. Seu ressentimento pode ser satisfeito.",
	"Mate a que brilhará nos palcos e o seu talento será reconhecido",
]

var msq_queue0602: Array = [
	"Voc.. Você... É a morte?",
	"Eu aceito o acordo. Quero um brilho que me pertece, que foi roubado.",
	"Nem que seja matar a pessoa que um dia amei,"
]

#CENA 07

var msq_queue07: Array = [
	"'Finalmente'",
	"'Depois te tanto esforço, anos com ensaios, consegui ser a atriz principal da maior peça de París'",
	"'Nem acredito que irá ser amanhã, a grande noite'",
	"'Estou sozinha, mas, tenho um sucesso que a Ruth nunca imaginaria ter.'"
]

var clicked00 = true

var clicked0101 = true
var clicked0102 = true

var clicked0201 = true
var clicked0202 = true
var clicked0203 = true

var clicked0301 = true
var clicked0302 = true

var clicked0401 = true
var clicked0402 = true

var clicked0501 = true
var clicked0502 = true

var clicked0601 = true
var clicked0602 = true

var clicked07 = true


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
	if event is InputEventKey and event.is_action_pressed("ui_accept") and (clicked00 == false or clicked0101 == false or clicked0102 == false or clicked0201 == false or clicked0202 == false or clicked0203 == false or clicked0301 == false or clicked0302 == false or clicked0401 == false or clicked0402 == false or clicked0501 == false or clicked0502 == false or clicked0601 == false or clicked0602 == false or clicked07 == false):
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
				"Olá, Está preparado para embarcar em uma jornada cheia de emoção, mistério e reviravoltas? Então, coloque-se no papel teatral, pois você é o jogador desta história fascinante que está prestes a se desdobrar.",
				"Estamos prestes a mergulhar em um mundo onde as linhas entre realidade e ficção se entrelaçam, onde os destinos se cruzam e onde as escolhas moldam o curso dos acontecimentos.",
				"Há muitos anos atrás, no aconchego de um quarto de hospital, uma cena de pura emoção estava prestes a se desenrolar. Ana, uma mulher corajosa e determinada, deitava em uma cama, enquanto seu marido, Paulo, segurava sua mão com carinho e ansiedade.",
				"O choro de um recém-nascido encheu o quarto de hospital. Ruth tinha chegado ao mundo, trazendo consigo alegria e amor para seus pais. Logo em seguida, nasce Raquel.",
				"Durante o parto, Ana, com sua coragem e determinação, enfrentou complicações inesperadas. A alegria do momento foi ofuscada pela dor da despedida, enquanto Ana deixava este mundo, entregando o precioso legado de suas filhas.",
				"'Interessante a história dessas duas irmãs, vamos assistir o densenrolar da história?'",
				"'Lembre-se, somos o jogador, ninguém poderá enxergar você, só o mais obscuro olhar da noite.'",
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
				"Ruth, você é incrível! Veja como você domina o papel da heroína com tanta confiança e energia!",
				"Vamos criar uma peça? Posso ser a diretora!"
				
			]

			return
		else:
			text.visible_characters = 0
			var _msg: String = msq_queue0101.pop_front()
			text.text = _msg
			timer.start()
	
	if clicked0102 == false:
		if msq_queue0102.size() == 0:
			dialog.visible = false
			await get_tree().create_timer(0.5).timeout
			clicked0102 = true
			msq_queue0102 = [
				"Claro, Raquel! Você é a melhor diretora que eu conheço. Vamos fazer uma peça incrível juntas!",
				"Com você ao meu lado, tenho certeza de que nossa peça será um sucesso. Vamos nos divertir muito!",
			]

			return
		else:
			text.visible_characters = 0
			var _msg: String = msq_queue0102.pop_front()
			text.text = _msg
			timer.start()
			
	# CENA 02
	if clicked0201 == false:
		if msq_queue0201.size() == 0:
			dialog.visible = false
			await get_tree().create_timer(0.5).timeout
			clicked0201 = true
			msq_queue0201 = [
				"Uau, Ruth! Estou impressionado com o seu talento! Você realmente se destaca quando interpreta esses papéis dramáticos. Tenho certeza de que você tem um futuro brilhante no mundo do teatro.",
				"Ainda mais agora, que vai ser a atriz principal da peça 'Hamlet'.",
				"Se sua mãe estivesse aqui, ela estaria orgulhosa!"
			]

			return
		else:
			text.visible_characters = 0
			var _msg: String = msq_queue0201.pop_front()
			text.text = _msg
			timer.start()
	
	if clicked0202 == false:
		if msq_queue0202.size() == 0:
			dialog.visible = false
			await get_tree().create_timer(0.5).timeout
			clicked0202 = true
			msq_queue0202 = [
				"Obrigada por acreditarem em mim. Vocês me inspiram a seguir em frente e a buscar meus sonhos.",
			]

			return
		else:
			text.visible_characters = 0
			var _msg: String = msq_queue0202.pop_front()
			text.text = _msg
			timer.start()
	
	if clicked0203 == false:
		if msq_queue0203.size() == 0:
			dialog.visible = false
			await get_tree().create_timer(0.5).timeout
			clicked0203 = true
			msq_queue0203 = [
				"Parabéns Ruth...",
				"'O que está acontecendo? Eu estou feliz pela Ruth, mas de certa forma, queria está no lugar dela'",
				'...'
			]

			return
		else:
			text.visible_characters = 0
			var _msg: String = msq_queue0203.pop_front()
			text.text = _msg
			timer.start()
	
	#CENA 03
	if clicked0301 == false:
		if msq_queue0301.size() == 0:
			dialog.visible = false
			await get_tree().create_timer(0.5).timeout
			clicked0301 = true
			msq_queue0301 = [
				"Mesmo de uns tempos para cá não se importe tanto com o teatro quanto eu, queria desabafar contigo.",
				"Hoje a noite é a grande apresentação, estou muito nervoso, e se o público não gostar de mim? O que farei?",
				"Na apresentação, vou reviver lembranças da nossa infância, quando bricarvamos de criar peças.",
				"Nunca te contei, mas esses momentos me acalmam..."
			]

			return
		else:
			text.visible_characters = 0
			var _msg: String = msq_queue0301.pop_front()
			text.text = _msg
			timer.start()
			
	if clicked0302 == false:
		if msq_queue0302.size() == 0:
			dialog.visible = false
			await get_tree().create_timer(0.5).timeout
			clicked0302 = true
			msq_queue0302 = [
				"Tenho certeza de que você vai fazer algum sucesso hoje à noite. Não que eu me importe com isso.",
				"Obrigada por lembrar da infância. Pelo menos tinhamos o mesmo destaque...",
				"'Como ela ousar falar que não me importo com teatro. Se eu podesse, ficaria no lugar dela.'",
				"'Nunca pedi para ter uma irmã, ainda mais... Com sucesso. Quero o mundo se exploda.'"
			]

			return
		else:
			text.visible_characters = 0
			var _msg: String = msq_queue0302.pop_front()
			text.text = _msg
			timer.start()
			
	
	#CENA 04
	if clicked0401 == false:
		if msq_queue0401.size() == 0:
			dialog.visible = false
			await get_tree().create_timer(0.5).timeout
			clicked0401 = true
			msq_queue0401 = [
				"Ela não é tão talentosa assim... Ruth o nome dela, certo?",
				"Uma pena. Uma moça tão formosa, na plateia...",
				"Ruth está ofuscando o seu brilho. Ela precisa desaparecer para que você possa ser a estrela que sempre quis",
			]

			return
		else:
			text.visible_characters = 0
			var _msg: String = msq_queue0401.pop_front()
			text.text = _msg
			timer.start()
			
	if clicked0402 == false:
		if msq_queue0402.size() == 0:
			dialog.visible = false
			await get_tree().create_timer(0.5).timeout
			clicked0402 = true
			msq_queue0402 = [
				"Porque ela? Todos olham para ela, enquanto a mim? Eu existo",
				"Só existe a Ruth para todos, meus pais, amigos, família...",
				"É como se... Nunca tivesse existido."
			]

			return
		else:
			text.visible_characters = 0
			var _msg: String = msq_queue0402.pop_front()
			text.text = _msg
			timer.start()
			
	#CENA 05
	if clicked0501 == false:
		if msq_queue0501.size() == 0:
			dialog.visible = false
			await get_tree().create_timer(0.5).timeout
			clicked0501 = true
			msq_queue0501 = [
				"GRANDE APRESENTAÇÃO, Hen.",
				"O QUE VOCÊ QUER? UM PRÊMIO?, SABE QUANTO TEMPO FIQUEI NA SUAS SOMBRAS?",
				"AGORA NÃO VENHA COM 'NÃO SABIA'",
				"EU CANSEI RUTH, EU VOU BRILHAR AGORA, NEM QUE MOVA O MUNDO"
				
			]

			return
		else:
			text.visible_characters = 0
			var _msg: String = msq_queue0501.pop_front()
			text.text = _msg
			timer.start()
	
	if clicked0502 == false:
		if msq_queue0502.size() == 0:
			dialog.visible = false
			await get_tree().create_timer(0.5).timeout
			clicked0502 = true
			msq_queue0502 = [
				"Irmã, eu não sabia...",
				"Ultimamente te vejo mais afastada, tive medo de me aproximar, acho que foi um erro",
				"Estamos juntas, não faça isso irmã, você não sabe o quanto te amo."
			]

			return
		else:
			text.visible_characters = 0
			var _msg: String = msq_queue0502.pop_front()
			text.text = _msg
			timer.start()
			
	#CENA 06
	if clicked0601 == false:
		if msq_queue0601.size() == 0:
			dialog.visible = false
			await get_tree().create_timer(0.5).timeout
			clicked0601 = true
			msq_queue0601 = [
				"Parece que está um pouco raivosa, não parece, mas te entendo",
				"Uns me chamam de fim, outros de epílogo, mas pode me chamar de Morte",
				"Estou disposto a fazer um acordo com você, Raquel. Seu ressentimento pode ser satisfeito.",
				"Mate a que brilhará nos palcos e o seu talento será reconhecido",
			]

			return
		else:
			text.visible_characters = 0
			var _msg: String = msq_queue0601.pop_front()
			text.text = _msg
			timer.start()
	
	if clicked0602 == false:
		if msq_queue0602.size() == 0:
			dialog.visible = false
			await get_tree().create_timer(0.5).timeout
			clicked0602 = true
			msq_queue0602 = [
				"Voc.. Você... É a morte?",
				"Eu aceito o acordo. Quero um brilho que me pertece, que foi roubado.",
				"Nem que seja matar a pessoa que um dia amei,"
			]

			return
		else:
			text.visible_characters = 0
			var _msg: String = msq_queue0602.pop_front()
			text.text = _msg
			timer.start()
			
	#CENA 7
	if clicked07 == false:
		if msq_queue07.size() == 0:
			dialog.visible = false
			await get_tree().create_timer(0.5).timeout
			clicked07 = true
			msq_queue07 = [
				"Voc.. Você... É a morte?",
				"Eu aceito o acordo. Quero um brilho que me pertece, que foi roubado.",
				"Nem que seja matar a pessoa que um dia amei,"
			]

			return
		else:
			text.visible_characters = 0
			var _msg: String = msq_queue07.pop_front()
			text.text = _msg
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


func _on_chat_0201_pressed():
	if clicked0201:
		dialog.visible = true
		clicked0201 = false
		person.text = 'Paulo (pai)'
		show_message()


func _on_chat_0202_pressed():
	if clicked0202:
		dialog.visible = true
		clicked0202 = false
		person.text = 'Ruth'
		show_message()


func _on_chat_0203_pressed():
	if clicked0203:
		dialog.visible = true
		clicked0203 = false
		person.text = 'Raquel'
		show_message()


func _on_chat_0301_pressed():
	if clicked0301:
		dialog.visible = true
		clicked0301 = false
		person.text = 'Ruth'
		show_message()



func _on_chat_0302_pressed():
	if clicked0302:
		dialog.visible = true
		clicked0302 = false
		person.text = 'Raquel'
		show_message()



func _on_chat_0401_pressed():
	if clicked0401:
		dialog.visible = true
		clicked0401 = false
		person.text = 'Homem Misterioso'
		show_message()


func _on_chat_0402_pressed():
	if clicked0402:
		dialog.visible = true
		clicked0402 = false
		person.text = 'Raquel'
		show_message()


func _on_chat_0501_pressed():
	if clicked0501:
		dialog.visible = true
		clicked0501 = false
		person.text = 'Raquel'
		show_message()


func _on_chat_0502_pressed():
	if clicked0502:
		dialog.visible = true
		clicked0502 = false
		person.text = 'Ruth'
		show_message()


func _on_chat_0601_pressed():
	if clicked0601:
		dialog.visible = true
		clicked0601 = false
		person.text = 'Morte'
		show_message()


func _on_chat_0602_pressed():
	if clicked0602:
		dialog.visible = true
		clicked0602 = false
		person.text = 'Raquel'
		show_message()


func _on_chat_07_pressed():
	if clicked07:
		dialog.visible = true
		clicked07 = false
		person.text = 'Raquel'
		show_message()
