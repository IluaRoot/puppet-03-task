class nconf {
     file { '/etc/nginx/nginx.conf':
     ensure => absent,
   }
     file { 'Copy Default Conf':
     path => '/etc/nginx/',
     ensure => file,
     source => 'puppet:///modules/nconf/nginx',
   }  
}