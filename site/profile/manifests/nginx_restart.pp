class profile::nginx_restart{
   service { 'nginx':
     ensure => running,
     enable => true,
   }
}