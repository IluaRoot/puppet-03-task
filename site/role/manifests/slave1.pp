class role::slave1 {
   include profile::package_install
   include profile::file_copy
   include profile::make_dir
   class { 'profile::site_copy':
       sitedst => '/var/www/site/index.html',
       sitesrc => '/vagrant/index.html',
   }
   include profile::disable_default
   include profile::nginx_restart
}