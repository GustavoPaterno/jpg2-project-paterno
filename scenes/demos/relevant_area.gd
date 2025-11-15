extends CharacterBody2D

func _ready():
	for child in get_children():
		print(child)
	pass
