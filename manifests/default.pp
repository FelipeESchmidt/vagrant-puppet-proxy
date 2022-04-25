Exec { path => [ "/usr/bin:/usr/sbin:/bin:/usr/local/bin:/usr/local/sbin:/sbin" ] }

# Chama os modules do Puppet

include system_update
include apache
include arquivos
include squid
include config
include reload
