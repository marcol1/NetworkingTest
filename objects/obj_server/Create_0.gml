var port = global.mp_port;
var maxClients = global.mp_maxclients;

server_socket = network_create_server(network_socket_tcp, port, maxClients); //Create the server

if (server_socket < 0) { //Check that the server is successfully established
	
	//If it isn't, then return to the "host server" room and create some text with the error. Then, delete this server object.
	
	persistent = true;
	
	var errorText = instance_create_depth(512, 288, -5000, obj_textDrawer);
	errorText.persistent = true;
	errorText.text = "Port " + string(port) + " has a connection error. The port may be in use.";
	errorText.textColor = c_red;
	errorText.font = font_return;
	errorText.alarm[0] = 2; //This alarm will make the error no longer persistent
	
	network_destroy(server_socket);
	
	room_goto(hostRoom); 
	
} else {
	clientsMap = ds_map_create(); //A map of the client's socket. This will be mapped to something else later.
	
	alarm[0] = 2; //Create the local client after 2 steps
}