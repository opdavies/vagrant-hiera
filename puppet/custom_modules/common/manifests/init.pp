class common {
  $groups = hiera('common::groups')
  group { $groups:
    ensure => present,
  }
}