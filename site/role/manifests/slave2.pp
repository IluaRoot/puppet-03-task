class role::slave2 {
   include profile::package_install
   class { 'profile::file_copy':
      pathname => '/etc/nginx/conf.d/dynamic.conf',
      sourcefile => '/vagrant/conf.f/dynamic.conf',
   }
   include profile::make_dir
   class { 'profile::site_copy':
       sitedst => '/var/www/site/index.php',
       sitesrc => '/vagrant/index.php',
   }
   include nconf
   include profile::nginx_restart
}