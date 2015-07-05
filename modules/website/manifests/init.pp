class website {
  file { '/var/www/index.html':
    ensure  => 'file',
    content => template('website/index.html.erb'),
    owner   => 'root',
    group   => 'www-data',
    mode    => '0640',
    require => Class['apache'],
  }

  # Set up web server
  class { 'apache': }
  
  apache::vhost { "${::fqdn}":
    vhost_name    => '*',
    default_vhost => true,
    port          => '80',
    docroot       => '/var/www',
  }
}

