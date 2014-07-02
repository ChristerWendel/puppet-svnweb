# == Class: svnweb::configure
#
# Configures svnweb authentication for apache
class svnweb::configure {
  $svnroot = $svnweb::svnroot

  file { '/etc/apache2/conf-available/svn.conf':
    ensure  => present,
    owner   => 'www-data',
    group   => 'www-data',
    mode    => '0644',
    content => template('svnweb/svn.erb'),
  } -> apache::loadconf{'svn': } ->
    apache::loadmodule{'dav_fs': } ->
    apache::loadmodule{'dav_svn': }
}
