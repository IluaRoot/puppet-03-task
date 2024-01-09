node 'slave1.puppet' {
   include profile::package_install
   include profile::file_copy
   include profile::make_dir
   
}

node 'slave2.puppet' {
   include profile::package_install
   class { 'profile::file_copy':
      pathname => '/etc/nginx/conf.d/dynamic.conf',
      sourcefile => '/vagrant/conf.f/dynamic.conf',
   }
   include profile::make_dir
}