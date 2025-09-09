extends HSlider

@export var bus_audio_name: String

var bus_audio_id

func _ready():
	bus_audio_id = AudioServer.get_bus_index(bus_audio_name)

func _on_value_changed(value):
	var sound_db_value = linear_to_db(value)
	AudioServer.set_bus_volume_db(bus_audio_id, sound_db_value)
