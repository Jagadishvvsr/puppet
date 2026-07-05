
node 'puppet-node1.jagadishvalluri.com' {
	include role::web

	package {'openssh-server':
	ensure => present,
	before => File['/etc/ssh/sshd_config'],
}
	file {'/etc/ssh/sshd_config':
	ensure => file,
	mode => '0600',
	source => 'puppet://modules/sshd/sshd_config',
	require => Package['openssh-server'],
	notify => Service['sshd'],
}
	service {'sshd':
	ensure => running,
	enable => true, 
	subscribe => File['/etc/ssh/sshd_config'],
 }
}
