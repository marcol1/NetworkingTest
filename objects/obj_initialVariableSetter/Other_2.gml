/// @description Set all initial global variables

global.mp_isHost = false; //If this is true, this computer is hosting a server, which means that an obj_server must be created upon entering the online room.
global.mp_maxclients = 4; //Default amount of maximum clients
global.mp_port = 6000; //Default port
global.mp_ip = ""; //No default IP address.
window_set_fullscreen(false);
display_set_gui_size(-1, -1);