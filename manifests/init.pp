# == Class: svnweb
#
# A module to configure subversion for apache
#
# === Parameters
# ["version"]
#   The package version to install
#
# ["svnroot"]
#   Parent directory of svn repositories
#
# ["enable"]
#   Should the service be enabled during boot time?
#
# ["start"]
#   Should the service be started by Puppet

class svnweb (
  $version = 'present',
  $svnroot = ['/var/lib/svn'],
  $enable = true,
  $start = true
  )  {
    include apache

    class{'svnweb::install': } ->
    class{'svnweb::configure': } ~>
    Service['apache2'] ->
    Class['svnweb']
  }
