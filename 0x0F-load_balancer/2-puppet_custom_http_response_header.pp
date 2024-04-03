# Installs an Nginx server with a Custom Header 'X-Served-By'

exec { 'update':
    provider => shell,
    command  => 'sudo apt-get -y update',
    before   => Exec['install Nginx'],
}

exec { 'install Nginx':
    provider => shell,
    command  => 'sudo apt-get -y install nginx',
    before   => Exec['restart Nginx'],
}

exec { 'restart Nginx':
    provider => shell,
    command  => 'sudo service nginx restart'
}