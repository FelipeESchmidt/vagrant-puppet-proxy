class apache {

  package { "apache2":
    ensure  => present,
    require => Class["system_update"],
  }

  service { "apache2":
    ensure  => "running",
    require => Package["apache2"],
  }

}
