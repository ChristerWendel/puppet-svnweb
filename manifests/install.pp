# == Class: svnweb::install
#
# Installs subversion apache module
class svnweb::install {
  package { 'libapache2-mod-svn':
    ensure => $svnweb::version,
  }
}
