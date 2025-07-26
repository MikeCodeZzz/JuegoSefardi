extends Area2D

@onready var timer: Timer = $Timer
@onready var sonido_muerte: AudioStreamPlayer2D = $SonidoMuerte

func _on_body_entered(body: Node2D) -> void:
	sonido_muerte.play()
	print("Has perdido!")
	timer.start()

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
