class config {

	# Carrega a configuração do Squid de acordo com o arquivo squid.conf (só executa após instalar e rodar o squid)
	file { "/etc/squid/squid.conf":
		ensure  => present,
		require => Class["squid"],
		owner  => 'root',
		group  => 'root',
		mode   => '0644',
		source => 'puppet:///modules/config/squid.conf',
	}

  # Carrega a lista de sites bloqueados pelo proxy (só executa após instalar e rodar o squid)
  file { "/etc/squid/denyWebsites.lst":
		ensure  => present,
		require => Class["squid"],
		owner  => 'root',
		group  => 'root',
		mode   => '0644',
		source => 'puppet:///modules/config/denyWebsites.lst',
	}

}
