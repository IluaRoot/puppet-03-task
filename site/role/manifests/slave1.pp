class role::slave1 {
   include profile::package_install
   class { 'profile::conf_file_copy':
      pathname => '/etc/nginx/conf.d/static.conf',
      sourcefile => 'puppet:///modules/nconf/static.conf',
   }

   include profile::make_dir
   class { 'profile::site_copy':
       sitedst => '/var/www/site/index.html',
       sitesrc => 'puppet:///modules/nconf/index.html',
   }
   
   include nconf
}