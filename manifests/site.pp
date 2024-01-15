node 'master.puppet' {
   include role::puppet_master
}

node 'slave1.puppet' {
   include role::slave1   
}

node 'slave2.puppet' {
   include role::slave2
}

node 'mineserver.puppet' {
   include role::debian_minecraft
}