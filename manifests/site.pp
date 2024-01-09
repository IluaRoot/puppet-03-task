node 'slave1.puppet' {
   include profile::package_install
   include profile::file_copy
   
}

node 'slave2.puppet' {
   include profile::package_install
   class ( 
      String $pathname = '/etc/nginx/conf.d/dynamic',
      String $sourcefile = '/vagrant/conf.f/dynamic.conf',
   ) { 'profile::file_copy':
      ensure => file,      
   }
}