class arquivos {

	file { "/var/www/html/index.html":
		ensure  => present,
		require => Class["apache"],
		owner  => 'root',
		group  => 'root',
		mode   => '0644',
		source => 'puppet:///modules/arquivos/index.html',
	}

	file { "/var/www/html/styles.css":
		ensure  => present,
		require => Class["apache"],
		owner  => 'root',
		group  => 'root',
		mode   => '0644',
		source => 'puppet:///modules/arquivos/styles.css',
	}

	file { "/var/www/html/app.js":
		ensure  => present,
		require => Class["apache"],
		owner  => 'root',
		group  => 'root',
		mode   => '0644',
		source => 'puppet:///modules/arquivos/app.js',
	}

}
