class system_update {
	
  # Atualiza a lista das versões dos pacotes disponíveis
  exec { 'apt-get update':
    command => 'apt-get update',
  }

  # Carrega uma lista de pacotes necessários para criar um pacote Debian (só roda após o passo acima ser completado)
  $sysPackages = [ "build-essential" ]
  package { $sysPackages:
    ensure => "installed",
    require => Exec['apt-get update'],
  }
}
