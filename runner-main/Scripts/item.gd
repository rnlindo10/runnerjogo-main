extends Area2D

@export var velocidade: float = 400.0

func _process(delta: float) -> void:
	position.x -= velocidade * delta
	
	if position.x < -1152:
		queue_free()

func _on_body_entered(body: Node2D) -> void:
	body.pontos += 1
	queue_free()
