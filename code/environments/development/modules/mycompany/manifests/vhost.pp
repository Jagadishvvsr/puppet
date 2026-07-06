define mycompany::vhost (
	
	String $docroot,
) {
	file { $docroot:
		ensure => directory,
	
}
}
