class squid {

  # Instala o pacote de Squid 3 caso não esteja instalado (só roda após o system_update ter sido completado)
  package { "squid3":
    ensure  => present,
    require => Class["system_update"],
  }

}
