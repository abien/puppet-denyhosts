class denyhosts::config {

  file { $denyhosts::config_file:
    ensure  => present,
    owner   => 'root',
    mode    => '0440',
    require => Class[denyhosts::install],
    notify  => Class[denyhosts::service],
    content => template('denyhosts/denyhosts.conf.erb'),
  }

}
