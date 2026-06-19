extends Node2D

const OBSTACULO_CENA = preload("res://Cenas/obstaculo.tscn")
var timer: float = 0.0
@export var velocidade: int

func _ready() -> void:
	velocidade = 400

func _process(delta: float) -> void:
	timer += delta
	
	
	if timer >= 2.0:
		timer = 0.0
		criar_obstaculo()

func criar_obstaculo() -> void:
	var novo_obstaculo = OBSTACULO_CENA.instantiate()
	var posicao_x: float = 1300.0
	var posicao_y: float = 575.0
	novo_obstaculo.position = Vector2(posicao_x, posicao_y)
	add_child(novo_obstaculo)
