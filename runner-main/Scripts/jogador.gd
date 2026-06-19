extends CharacterBody2D

var velocidade_pulo = -400
var vidas: int = 5
var pontos: int = 0

func _physics_process(delta: float) -> void:
	velocity += get_gravity() * delta
	if is_on_floor():
		$Movimento.play("movimento")
		if Input.is_action_pressed("ui_select"):
			velocity.y = velocidade_pulo
	else:
		$Movimento.play("pular")
	move_and_slide()
