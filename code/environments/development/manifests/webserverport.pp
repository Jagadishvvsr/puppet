class webserver::port {
 $port = 80
}

class apache::port inherits webserver::port {
	notice($port)
}

