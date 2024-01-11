class nconf {
     file { 'delete default':
     path => '/etc/nginx/nginx.conf',
     ensure => absent,
   }
   file { 'Copy new conf':
     path => '/etc/nginx/nginx.conf',
     ensure => present,
     source => 'puppet:///modules/nconf/files/nginx.conf',
   }  
}