class profile::apache (Integer $port = 80, ){
	package { 'apache':
	ensure => installed,
}
	service {'apache2':
	ensure => running,
}
	file{ '/tmp/apache':
	content => "Port is ${port}",
}
}
