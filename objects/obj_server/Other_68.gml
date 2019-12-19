/// @description Asynchronous event is used to receive asynchronous events (out of sync).
// An async_load map is automatically created in this event with three key-value pairs: ID (of the socket receiving the data), ip (address of connecting socket), and the type.
// Type is one of three constants: network_type_connect(), network_type_disconnect(), and network_type_data().

var socket_id = ds_map_find_value(async_load, "id"); //get the ID of the socket receiving the data

if (socket_id == server_socket) { //check ID to make sure it is that of the server socket
    var dataType = ds_map_find_value(async_load, "type"); 
    if (dataType == network_type_connect) { //If a new user connects, add it to the socket list
		
		
        var connectedSocket = ds_map_find_value(async_load, "socket"); //"socket" gets the ID of the new, connecting socket
        show_debug_message("New client connected! Socket ID " + string(connectedSocket));
		ds_map_add(clientsMap, connectedSocket, pointer_null); //then write it to a DS list for future reference
		
    } else if (dataType == network_type_disconnect) {
		
		var disconnectedSocket = ds_map_find_value(async_load, "socket");
		show_debug_message("Client disconnected. Socket ID " + string(disconnectedSocket));
		ds_map_delete(clientsMap, disconnectedSocket); //Remove the disconnected socket from the sockets list
		
	}
}