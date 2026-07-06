class profile::openssh {
	package  { 'openssh-server':
	ensure => present,
} -> # and then:
	
	file { '/etc/ssh/sshd_config':
	ensure => file,
	mode => 600,
	source => 'puppet:///modules/profile/sshd_config',
} ~> # and then :
	service { 'sshd':
	ensure => running,
	enable => true,
}
} 


## Yumrepo <| |> -> Package <| |>


