class profile::file_copy (
    String $pathname = '/etc/nginx/conf.d/static.conf',
    String $sourcefile = 'puppet:///manifests/files/static.conf',
) {
  file { 'Copy conf file':
    ensure => file,
    path => $pathname,
    source => $sourcefile,
 }
}