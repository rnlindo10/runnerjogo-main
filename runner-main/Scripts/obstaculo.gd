extends Area2D

@export var velocidade: float = 400.0

func _process(delta: float) -> void:
	position.x -= velocidade * delta
	
	if position.x < -1152:
		queue_free()

func _on_body_entered(body: Node2D) -> void:
	body.vidas -= 1
	queue_free()
	if body.vidas <=0:
		get_tree().change_scene_to_file("res://Cenas/cena_de_morte.tscn")
