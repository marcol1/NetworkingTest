var port = 6001;
var maxClients = 4;

server_socket = network_create_server(network_socket_tcp, port, maxClients); //Create the server

if (server_socket < 0) { //Check that the server is successfully established
	show_error("Connection error on port " + string(port), true);
} else {
	alarm[0] = 2; //Create the client after 2 steps
}

