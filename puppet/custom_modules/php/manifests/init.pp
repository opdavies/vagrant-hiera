class php {
  file { '/var/www/html/info.php':
    ensure => 'present',
    source => 'puppet:///modules/php/var/www/html/info.php',
  }

  $pkgs = hiera('php::modules')
  package { $pkgs:
    ensure => latest,
    notify => Service['httpd'],
  }
}