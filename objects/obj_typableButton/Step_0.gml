//@description Detect if the mouse coordinates are within the GUI's x and y

if (mouse_check_button_pressed(mb_left)) { //If a click occurs, select or deselect the button (depending on if the click is on the button).
	var selectedPreviously = selected;
	
	selected =  point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - (sprite_get_width(sprite)/2), y - (sprite_get_height(sprite)/2), x + (sprite_get_width(sprite)/2), y + (sprite_get_height(sprite)/2));
	if (selected == true) {
		subimage = 1;
		if (selectedPreviously = false) { //Only play the sound the first time the button is set as "selected".
			playSound(menuBeep, 0.5);
		}
	} else {
		subimage = 2;
	}
}


