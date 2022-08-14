var _type     = event_data[? "event_type"]
var _message  = event_data[? "message"]
var _instance = event_data[? "instance_id"]

if (_type = "sequence event") {
	switch (_message) {
		case "change room":
			show_message("UwU")
			room_goto(destino)
		break
		case "destroy transition":
			show_message("OwO")
			layer_sequence_destroy(_instance)
			instance_destroy()
		break
	}
}