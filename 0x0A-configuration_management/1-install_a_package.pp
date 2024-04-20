# install puppet-lint -v 2.5.0  brunookoth44@gmail.com

exec { 'puppet-lint':
  command => '/usr/bin/apt-get -y install puppet-lint -v 2.5.0',
}
