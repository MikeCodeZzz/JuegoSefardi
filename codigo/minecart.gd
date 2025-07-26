extends Sprite2D

@onready var collision_shape_2d: CollisionShape2D = $Area2D/CollisionShape2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	print("Meta alcanzada!!")
	
	collision_shape_2d.set_deferred("disabled", true)
	InputManager.input_enabled = false
	(body as CharacterBody2D)
