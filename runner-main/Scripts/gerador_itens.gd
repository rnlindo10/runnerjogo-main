extends Node2D

const ITEM_CENA = preload("res://Cenas/item.tscn")
var timer: float = 0.0

func _process(delta: float) -> void:
	timer += delta
	
	if timer >= 1.5:
		timer = 0.0
		criar_novo_item()

func criar_novo_item() -> void:
	var novo_item = ITEM_CENA.instantiate()
	var posicao_x: float = 1200.0
	var posicao_y: float = randi_range(330, 450)
	
	novo_item.position = Vector2(posicao_x, posicao_y)
	add_child(novo_item)
