class minecraftserver {

   package { 'openjdk-17-jdk-headless':
     ensure => installed,
   }

  file { '/opt/minecraft':
     ensure => directory,
   }

   file { 'Service file copy':
     ensure => file,
     path   => '/opt/minecraft/minecraftserver.service',
     source => 'puppet:///modules/minecraftserver/minecraftserver.service',
   }

   file { '/opt/minecraft/minecraftserver.service':
     ensure => link,
     target => '/etc/systemd/system/minecraftserver.service',
   }

   remote_file { 'Download minecraft server':
     ensure => present,
     path   => '/opt/minecraft/minecraft_server.1.20.4.jar',
     source => 'https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar',     
   }

   service { 'minecraftserver':
     ensure  => running,
     enable  => true,
     require => [
       File['/opt/minecraft'],
       Remote_file['Download minecraft server'],
       ]
   }

   file_line { 'Agree with minecraft eula':
      ensure => present,
      path   => '/opt/minecraft/eula.txt',
      line   => "eula=true",
      match  => 'eula=false',
   }

   service { 'restart minecraft server':
      name   => 'minecraftserver',
      ensure => running,
   }
}