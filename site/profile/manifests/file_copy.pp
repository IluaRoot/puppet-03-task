class profile::file_copy (
    String $pathname = '/etc/nginx/conf.d/static.conf',
    String $sourcefile = 'puppet:///static.conf',
) {
  file { $pathname:
    ensure => file,
    source => $sourcefile,
 }
}