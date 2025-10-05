extends Node2D
class_name DialogManager

# The DialogManager is responsible for managing the dialog nodes of a context.
# This context is received through a DialogHandler.

var _current_dialog = 0
var _dialogs: Array
var _dialog_node_count: int
var _dialog_view: DialogView
var _start_in: String

func _ready() -> void:
	_dialog_view = get_parent().get_node('DialogView')
	if _dialog_view == null:
		push_error("The scene need a DialogView.")

func init_dialog(ctx: Dictionary) -> void:
	# Initializes and prepares dialog nodes
	_dialog_node_count = ctx.DialogNodes.size()
	_dialogs = ctx.DialogNodes
	_start_in = ctx.StartIn
	next_dialog(_start_in)

func next_dialog(_dialog_node_id: String) -> void:
	for _node in _dialogs:
		if _node.ID == _dialog_node_id:
			_dialog_view.show_dialog(_node)
			break
