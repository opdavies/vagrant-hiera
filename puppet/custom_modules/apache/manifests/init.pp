class apache {
  $apache = hiera('apache')
  $vhosts_dir = hiera('apache::vhosts_dir')

  package { $apache:
    ensure => latest
  } ->
  service { $apache:
    ensure => running,
    enable => true,
  } ->
  file { $vhosts_dir:
    ensure => directory,
  }
}