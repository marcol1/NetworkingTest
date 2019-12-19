/// @description When a key is pressed, type it into the box.

if (selected == true) { //Only do this if its selected
	var key = keyboard_key;
	show_debug_message(string(key));
	if (key >= 48) and (key <= 57) { //Only allow numbers to be typed
		if (string_length(typableText) < characterLimit) {
			typableText += chr(key);
		}
	} else if (key == 190) { //Allow periods to be typed (for IP addresses)
		if (string_length(typableText) < characterLimit) {
			typableText += ".";
		}
	} else if (key == 8) { //If backspace is pressed, delete 1 character
		typableText = string_delete(typableText, string_length(typableText), 1);
	} else if (key == 86) and (ctrlDown == true) { //If you ctrl+v, allow the user to paste something (ip address)
		if (os_type == os_windows) { //This is only supported on windows
			typableText += clipboard_get_text();
		}
	}
}