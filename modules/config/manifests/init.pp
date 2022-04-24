class config {

	file { "/etc/squid/squid.conf":
		ensure  => present,
		require => Class["squid"],
		owner  => 'root',
		group  => 'root',
		mode   => '0644',
		source => 'puppet:///modules/config/squid.conf',
	}

  file { "/etc/squid/denyWebsites.lst":
		ensure  => present,
		require => Class["squid"],
		owner  => 'root',
		group  => 'root',
		mode   => '0644',
		source => 'puppet:///modules/config/denyWebsites.lst',
	}

}
