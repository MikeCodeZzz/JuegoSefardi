extends Sprite2D

@onready var collision_shape_2d: CollisionShape2D = $Area2D/CollisionShape2D
@export var musica_final: AudioStream

signal meta_activada

func _on_area_2d_body_entered(_body: Node2D) -> void:
	collision_shape_2d.set_deferred("disabled", true)
	meta_activada.emit()
	if musica_final:
		Musica.cambiar_musica(musica_final)
