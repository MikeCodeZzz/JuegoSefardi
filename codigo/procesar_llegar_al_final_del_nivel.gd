extends Node

func _ready() -> void:
	var minecart = get_tree().get_current_scene().get_node_or_null("minecart")
	if minecart:
		minecart.meta_activada.connect(_on_meta_activada)
	else:
		print("ERROR: No se ha encontrado en la escena el nodo 'Minecart', que debe ser hijo del nodo raíz de la misma.")
	
func _on_meta_activada() -> void:
	InputManager.input_enabled = false
	get_parent().velocity = Vector2.ZERO	
