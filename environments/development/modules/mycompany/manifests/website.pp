class mycompany::website (

    String $site_title,

) {

    package { 'apache2':
        ensure => installed,
    }

    service { 'apache2':
        ensure => running,
        enable => true,
    }

    file { '/var/www/html/index.html':
        ensure  => file,
        content => epp(
            'mycompany/index.epp',
            {
                title => $site_title,
            }
        ),
    }

}
