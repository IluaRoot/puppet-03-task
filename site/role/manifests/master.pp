class role::master_setup {
   include profile::package_install
   class { 'profile::conf_file_copy':
      pathname => '/etc/nginx/conf.d/proxy.conf',
      sourcefile => 'puppet:///modules/nconf/proxy.conf',
   
   }
   include profile::master
   include nconf
}