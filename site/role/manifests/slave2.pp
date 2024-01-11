class role::slave2 {
   include profile::package_install
   class { 'profile::file_copy':
      pathname => '/etc/nginx/conf.d/dynamic.conf',
      sourcefile => 'puppet:///modules/nconf/dynamic.conf',
   }
   include profile::make_dir
   class { 'profile::site_copy':
       sitedst => '/var/www/site/index.php',
       sitesrc => 'puppet:///modules/nconf/index.php',
   }
   include nconf
   include profile::nginx_restart
}