class arquivos {

	# Carrega o arquivo html (só executa após instalar e rodar o apache)
	file { "/var/www/html/index.html":
		ensure  => present,
		require => Class["apache"],
		owner  => 'root',
		group  => 'root',
		mode   => '0644',
		source => 'puppet:///modules/arquivos/index.html',
	}

	# Carrega o arquivo css (só executa após instalar e rodar o apache)
	file { "/var/www/html/styles.css":
		ensure  => present,
		require => Class["apache"],
		owner  => 'root',
		group  => 'root',
		mode   => '0644',
		source => 'puppet:///modules/arquivos/styles.css',
	}

	# Carrega o arquivo javascript (só executa após instalar e rodar o apache)
	file { "/var/www/html/app.js":
		ensure  => present,
		require => Class["apache"],
		owner  => 'root',
		group  => 'root',
		mode   => '0644',
		source => 'puppet:///modules/arquivos/app.js',
	}

}
