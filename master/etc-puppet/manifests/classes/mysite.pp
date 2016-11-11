class mysite {
	include apache
	file { '/etc/apache2/sites-enabled/mysite.conf':
		owner => root, group => root, mode=> 644,
		source => "puppet:///files/mysite/mysite_apache.conf",
		notify => Service['apache2'],
	}
	file { '/var/www/html/mysite.example.org':
		ensure => directory,
	}
}
