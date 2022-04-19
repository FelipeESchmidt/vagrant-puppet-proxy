class sarg {

  package { "sarg":
    ensure  => present,
    require => Class["apache"],
  }

}
