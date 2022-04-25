class apache {

  # Instala o pacote de Apache 2 caso não esteja instalado (só roda após o system_update ter sido completado)
  package { "apache2":
    ensure  => present,
    require => Class["system_update"],
  }

  # Roda o Apache 2 (só roda após o passo acima ser completado)
  service { "apache2":
    ensure  => "running",
    require => Package["apache2"],
  }

}
