class profile::file_copy (
    String $pathname = '/etc/nginx/conf.d/static.conf',
    String $sourcefile = '/vagrant/conf.f/static.conf',
) {
  file { 'Copy conf file':
    ensure => file,
    path => $pathname,
    source => $sourcefile,
 }
}