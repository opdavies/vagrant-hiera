class php {
  file { '/var/www/html/info.php':
    ensure => 'present',
    source => 'puppet:///modules/php/var/www/html/info.php',
  }

  $modules = hiera('php::modules')
  $apache = hiera('apache')
  package { $modules:
    ensure => latest,
    notify => Service[$apache],
  }
}