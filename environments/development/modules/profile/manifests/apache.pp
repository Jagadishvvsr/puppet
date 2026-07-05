class profile::apache {
#	package { 'apache2':
#	ensure => installed,
#}
#	service { 'apache2':
#	ensure => running,
#	enable => true,
#}
	class {'mycompany::website':
	site_title => 'Development Server',
}
}
