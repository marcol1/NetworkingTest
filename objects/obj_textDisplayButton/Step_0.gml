//@description Detect if the mouse coordinates are within the GUI's x and y

if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - (sprite_get_width(sprite)/2), y - (sprite_get_height(sprite)/2), x + (sprite_get_width(sprite)/2), y + (sprite_get_height(sprite)/2)) == true) {
	// If the button is hovered
	textColor = c_red;
	if (mouse_check_button_pressed(mb_left)) { //If a click occurs and this button is highlighted, navigate to the target room
		playSound(menuBeep, 0.5);
		room_goto(roomRedirect);
	}
} else {
	textColor = c_white;	
}

