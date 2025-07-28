extends Sprite2D


@onready var collision_shape_2d: CollisionShape2D = $Area2D/CollisionShape2D
@export_file("*.tscn") var escena_a_cargar: String
@export var musica_final: AudioStream

signal meta_activada

var musica: AudioStreamPlayer2D

func _ready() -> void:
	musica = get_tree().get_current_scene().get_node_or_null("Musica")
	if not musica:
		print("ERROR: No se ha encontrado en la escena el nodo 'Muica'")
	if not musica_final:
		print("ERROR: No se ha indicado ningún AudioStream al nodo 'Minecart'")
	if escena_a_cargar.is_empty():
		print("ERROR: Se te ha olvidado indicar la escena siguiente en el nodo 'Minecart'. No se ha cambiado de escena porque no hay ninguna indicada.")

func _on_area_2d_body_entered(_body: Node2D) -> void:
	print("Meta alcanzada!!")
	
	collision_shape_2d.set_deferred("disabled", true)
	meta_activada.emit()
	
	if musica_final and musica:
		musica.cambiar_musica(musica_final)
		await musica.finished

	if not escena_a_cargar.is_empty():
		get_tree().change_scene_to_file(escena_a_cargar)
