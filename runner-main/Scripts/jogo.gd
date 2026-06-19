extends Node2D

@export var velocidade: int
@onready var vida = $Status/Vida

func _ready() -> void:
	velocidade = 400

func _process(delta: float) -> void:
	
	
	$Status/Vida.text = "Vidas: " + str(int($Jogador.vidas))
	$Status/Pontos.text = "Pontos: " + str($Jogador.pontos)
	
	$Fundo.position.x -= velocidade * delta*0.05
	$Fundo2.position.x -= velocidade * delta*0.05
	
	if $Fundo.position.x < -1152:
		$Fundo.position.x = 1152
	
	if $Fundo2.position.x < -1152:
		$Fundo2.position.x = 1152
	
	$Chao.position.x -= velocidade * delta*2
	$Chao2.position.x -= velocidade * delta*2
	
	if $Chao.position.x < -1170:
		$Chao.position.x = 1152
	
	if $Chao2.position.x < -1170:
		$Chao2.position.x = 1152
	
	$MeioAzul.position.x -= velocidade * delta*0.10
	$MeioAzul2.position.x -= velocidade * delta*0.10
	
	if $MeioAzul.position.x < -560:
		$MeioAzul.position.x = 1730
	
	if $MeioAzul2.position.x < -560:
		$MeioAzul2.position.x = 1730
	
	$MeioPreto.position.x -= velocidade * delta*0.20
	$MeioPreto2.position.x -= velocidade * delta*0.20
	
	if $MeioPreto.position.x < -570:
		$MeioPreto.position.x = 1830
	
	if $MeioPreto2.position.x < -570:
		$MeioPreto2.position.x = 1830
