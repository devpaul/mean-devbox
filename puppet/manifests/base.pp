package{ 'curl': }
class{ 'nodejs': }
package{ 'n':
  ensure   => present,
  provider => 'npm',
  require => Class['nodejs'],
}
exec{ 'sudo n stable':
  path => ['/usr/local/sbin', '/usr/local/bin','/usr/sbin','/usr/bin','/sbin','/bin'],
  require => Package['n'],
}
class{ 'mongodb':
  init => 'sysv',
}