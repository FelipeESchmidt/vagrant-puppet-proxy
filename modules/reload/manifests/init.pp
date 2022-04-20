class reload {

  exec { 'restart':
    command => 'squid restart',
    path => '/etc/init.d/',
    require => Class['config'],
  }

}
