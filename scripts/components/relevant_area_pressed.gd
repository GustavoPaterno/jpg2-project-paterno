extends Node2D

var mouse_in:bool

func _process(delta):
	if !mouse_in: return
	
	if int(Input.is_action_just_pressed("mouse_click")):
		print("clicou")
	
	pass

func _ready():
	var children = get_children()
	for child in children:
		if has_signal("mouse_entered"):
			connect("mouse_entered", Callable(self, "_on_mouse_entered"))
		if has_signal("mouse_exited"):
			connect("mouse_exited", Callable(self, "_on_mouse_exited"))
	pass

func _on_mouse_entered():
	mouse_in = true
	pass

func _on_mouse_exited():
	mouse_in = false
	pass

func change_children_color():
	var children = get_children()
	for child in children:
		print(child)
	pass
