# Install nginx webserver

package { 'nginx':
    ensure  => installed,
}

file_line { 'add-redirect-rule':
  ensure  => present,
  path    => '/etc/nginx/sites-available/default',
  line    => 'rewrite ^ https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
  after   => 'listen 80 default_server;',
}

file { '/var/www/html/index.html':
  ensure  => present,
  content => 'Hello World!',
}

service { 'nginx':
    ensure  => running,
    require => Package['nginx'],
}