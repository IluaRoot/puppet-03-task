class nconf {
     file { 'delete default':
     path => '/etc/nginx/nginx.conf',
     ensure => absent,
   }
   file { '/etc/nginx/nginx.conf':
     ensure => file,
     source => 'puppet:///modules/nconf/nginx.conf',
   }  

}