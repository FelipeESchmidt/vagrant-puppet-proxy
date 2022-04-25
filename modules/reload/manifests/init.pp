class reload {

  # Recarrega a máquina para aplicar as configurações (só executa após configurar o Squid)
  exec { 'restart':
    command => 'squid restart',
    path => '/etc/init.d/',
    require => Class['config'],
  }

}
