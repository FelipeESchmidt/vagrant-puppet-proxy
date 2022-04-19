class squid {

  package { "squid":
    ensure  => present,
    require => Class["sarg"],
  }

}
