class profile::package_install {
   $packages = [ 'nginx', 'php-fpm' ]
   package { $packages: ensure => 'installed' }
}