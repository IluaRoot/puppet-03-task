class profile::master_setup {
    class { selinux:
       mode => 'disabled',
    }
}