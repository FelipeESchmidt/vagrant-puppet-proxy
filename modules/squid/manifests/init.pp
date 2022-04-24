class squid {

  package { "squid3":
    ensure  => present,
    require => Class["system_update"],
  }

}
