class apache {
  $apache = hiera('apache')
  package { $apache:
    ensure => latest
  } ->
  service { $apache:
    ensure => running,
    enable => true,
  }
}