extends Node

var puntuacion = 0

@onready var etiqueta_puntuacion: Label = $"../Jugador/Camera2D/EtiquetaPuntuacion"

func incrementa_un_punto():
	puntuacion += 1
	etiqueta_puntuacion.text = "Score " + str(puntuacion)
