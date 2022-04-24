Exec { path => [ "/usr/bin:/usr/sbin:/bin:/usr/local/bin:/usr/local/sbin:/sbin" ] }

include system_update
include apache
include squid
include config
include reload
