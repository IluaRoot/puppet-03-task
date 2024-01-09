node 'slave1.puppet' {
   include profile::package_install
   include profile::file_copy
   
}

node 'slave2.puppet' {
   include profile::package_install
   class { 'profile::file_copy':
      pathname => '/etc/nginx/conf.d/dynamic',
      sourcefile => '/vagrant/conf.f/dynamic.conf',
   }
}