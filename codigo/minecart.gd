extends Sprite2D

@onready var collision_shape_2d: CollisionShape2D = $Area2D/CollisionShape2D

signal meta_activada

func _on_area_2d_body_entered(_body: Node2D) -> void:
	print("Meta alcanzada!!")
	
	collision_shape_2d.set_deferred("disabled", true)
	meta_activada.emit()
	
