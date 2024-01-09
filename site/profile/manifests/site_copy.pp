class profile::site_copy (
    String $sitesrc,
    String $sitedst,
) { file { 'Copy sites index':
       ensure => file,
       path => $sitedst,
       source => $sitesrc,
  }
}