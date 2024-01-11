class nconf {
   file { 'Copy Default Conf':
     path => '/etc/nginx/nginx.conf',
     ensure => file,
     source => 'puppet:///modules/nconf/nginx',
   }  
   include profile::nginx_restart
}