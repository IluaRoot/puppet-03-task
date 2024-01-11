#class profile::disable_default {
#   file { '/etc/nginx/nginx.conf':
#     ensure => present,
#   }
#   file_line {
#     match => "listen   80",
#     path => '/etc/nginx/nginx.conf',
#     line => "#listen   80",
#     replace => true,
#   }

#}