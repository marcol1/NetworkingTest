//@description Detect if the mouse coordinates are within the GUI's x and y

if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - (sprite_get_width(sprite)/2), y - (sprite_get_height(sprite)/2), x + (sprite_get_width(sprite)/2), y + (sprite_get_height(sprite)/2)) == true) {
	// If the button is hovered
	textColor = c_red;
	if (mouse_check_button_pressed(mb_left)) { //If a click occurs and this button is highlighted, navigate to the target room
		playSound(menuBeep, 0.5);
		
		if (roomRedirect == onlineRoom) { //If you are connecting to an online game, properly update your multiplayer port variable and create a server
			
			if (room == hostRoom) { //If you are in the host room, you are hosting.
				if (inst_PORTBUTTON.typableText != "") { //If a port is inputted
				
					global.mp_isHost = true; //You are hosting, so set this to true so the game knows to create a server object.
				
					global.mp_port = real(inst_PORTBUTTON.typableText);	//Set the port accordingly
				
					global.mp_maxclients = 4; //Change this to be the number specified by the user


					room_goto(roomRedirect);
				} else {
					if (instance_exists(obj_textDrawer)) { //If an error (text drawer) exists, overwrite it
						var textDrawer = instance_find(obj_textDrawer, 0);
						textDrawer.text = "Error: Invalid Port";
					
					} else { //Otherwise, create a new text drawer to handle/display the errors
						textDrawer = instance_create_depth(512, 288, -5000, obj_textDrawer);
						textDrawer.text = "Error: Invalid Port";
						textDrawer.textColor = c_red;
						textDrawer.font = font_return;
					}
				}
			} else if (room == connectRoom) { //If you are in the connectRoom, you are not hosting.
				global.mp_port = real(inst_PORTBUTTON_2.typableText);	//Set the port accordingly
				global.mp_ip = inst_IPBUTTON.typableText; //Set the IP as well
				global.mp_isHost = false; //Not hosting; indicate this in connection
				
				room_goto(roomRedirect);
			}
			
		} else { //Otherwise, generic room swap code
			room_goto(roomRedirect);	
		}
		
		
	}
} else {
	textColor = c_white;	
}

