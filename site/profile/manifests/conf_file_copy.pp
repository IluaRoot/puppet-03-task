class profile::conf_file_copy (
    String $pathname,
    String $sourcefile,
) {
  file { 'Copy conf file':
    ensure => file,
    path => $pathname,
    source => $sourcefile,
 }
}