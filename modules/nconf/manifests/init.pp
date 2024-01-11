class nconf {
   file { 'Copy Default Conf':
     path => '/etc/nginx/nginx.conf',
     ensure => file,
     source => 'puppet:///modules/nconf/nginx',
   }  
   service { 'nginx':
     ensure => running,
     enable => true,
     require => File['Copy Default Conf'],
   }
}