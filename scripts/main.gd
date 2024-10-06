extends Node

@onready var star_data_reader: StarDataReader = $StarDataReader
@onready var stars_generator: StarsGenerator = $Stars


var path = "res://test.txt"

func _ready() -> void:
	# Leo el archivo
	var params = star_data_reader.read_params_star_from_file(path)
	
	# Creo las estrellas
	stars_generator.generate(params)
