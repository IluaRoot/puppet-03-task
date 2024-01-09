class profile::make_dir {
    file { '/var/www/site':
      ensure => 'directory',
      owner => 'nginx',
      group => 'nginx',
      mode => '0755',
    }
}