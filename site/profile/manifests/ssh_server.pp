class profile::ssh_server {
        package {'openssh-server':
          ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable =>  'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user => 'root',
                type => 'ssh-rsa',
                key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDV5AdTLUB3UA7bse8oI2qFpMBd9WnkYMcEUaanFX4gIwE1KE+SYXMJwHxXBv8M8tHF41QeoWlVTJMFG6NTn1hWT3MKCfLh5XcP4c6WPbpd5UO4kbd4GXBc8580oDI6OwJhMe7TknDqHP30dCWrp7IFVo+LawYfHqcDwtCFyBRzY36+Ci2kelE8pTdBbZjfs1yE1po+ZB5CpkLE6Woarq9Pr3yjkNpPjVOXNoG8vd7UaBSS1OC4n9i5eVrD8vXA82RdYGGYIr3jLiVTDYYFowPkjG3gNQC3lDDPH1HCRAwD2G3sZfatJQ3fYKNU6Tpv9fFq3us0iMIyzHy8g2zvv7N1',
        }
 }
