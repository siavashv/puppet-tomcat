# == Class: tomcat::install
#
# install tomcat and logging stuff
#
class tomcat::install {

  if !$tomcat::sources {
    package {"tomcat${tomcat::version}":
      ensure => present,
      name   => $package_name,
    } 
  } else {
    class {'::tomcat::source': }
  }
}
