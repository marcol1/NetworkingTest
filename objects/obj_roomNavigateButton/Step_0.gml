//@description Detect if the mouse coordinates are within the GUI's x and y

if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - (sprite_get_width(sprite)/2), y - (sprite_get_height(sprite)/2), x + (sprite_get_width(sprite)/2), y + (sprite_get_height(sprite)/2)) == true) {
	// If the button is hovered
	textColor = c_red;
	if (device_mouse_check_button(0, mb_left)) { //If a click occurs and this button is highlighted, navigate to the target room
		audio_play_sound(menuBeep, 1, false);
		room_goto(roomRedirect);
	}
} else {
	textColor = c_white;	
}

