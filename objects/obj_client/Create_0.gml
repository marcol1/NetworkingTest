client_socket = network_create_socket(network_socket_tcp);
var port = global.mp_port;

var ip = "";

if (global.mp_isHost == true) {
	ip = "127.0.0.1";
} else {
	ip = global.mp_ip;
}

network_set_config(network_config_connect_timeout, 4000); //If the client is unable to connect, it will time out in 4 seconds.

server = network_connect(client_socket, ip, port);

if (server < 0) {
	//Connection error: Handle accordingly
	if (global.mp_isHost == false) { //If you're a client, return to the client connection room and create the error.
		
		textDrawer = instance_create_depth(512, 130, -5000, obj_textDrawer);
		textDrawer.text = "Client connection timed out. Double check your IP address and port are correct, and ports are forwarded.";
		textDrawer.textColor = c_red;
		textDrawer.font = font_return;
		textDrawer.persistent = true; //Make it persistent for room return
		textDrawer.alarm[0] = 2; //This alarm will make the error drawer no longer persistent.
		
		network_destroy(server);
		room_goto(connectRoom);
		
	} else { //If you're a host, you shouldn't be having this error. Throw an error. 
		show_error("Client unable to connect to server (local host). IP is " + ip + ", and port is " + string(port), true);
	}
} else {
	//No connection error! Get the client set up.
    show_debug_message("Client connected to server!");
}