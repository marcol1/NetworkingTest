client_socket = network_create_socket(network_socket_tcp);
var port = 6001;
var ip = "127.0.0.1";

server = network_connect(client_socket , ip, port);

if (server < 0) {
    show_error("Client unable to connect to server. IP is " + ip + ", and port is " + string(port), true);
} else {
    show_debug_message("Client connected to server!");
}
